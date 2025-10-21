<?php
if (!defined('ABSPATH')) { exit; }

class ChatConnect_Chat_Handler {
    public function __construct() {
        add_action('rest_api_init', [$this, 'register_routes']);
    }

    public function register_routes() {
        register_rest_route('chatconnect-pro/v1', '/chat', [
            'methods' => WP_REST_Server::CREATABLE,
            'callback' => [$this, 'handle_message'],
            'permission_callback' => '__return_true',
            'args' => [
                'message' => [
                    'required' => true,
                    'type' => 'string',
                ],
                'session_id' => [
                    'required' => true,
                    'type' => 'string',
                ],
                'chat_nonce' => [
                    'required' => false,
                    'type' => 'string',
                ],
            ],
        ]);
    }

    public function handle_message(WP_REST_Request $request) {
        if (!wp_verify_nonce($request->get_header('X-WP-Nonce'), 'wp_rest')) {
            return new WP_Error('invalid_nonce', __('Invalid nonce', 'chatconnect-pro'), ['status' => 403]);
        }
        // Optional per-message nonce to mitigate CSRF via non-WordPress clients
        $chat_nonce = $request->get_param('chat_nonce');
        if ($chat_nonce && !wp_verify_nonce($chat_nonce, 'chatconnect_pro_chat')) {
            return new WP_Error('invalid_chat_nonce', __('Invalid chat nonce', 'chatconnect-pro'), ['status' => 403]);
        }

        $message = sanitize_text_field($request->get_param('message'));
        $session_id = sanitize_text_field($request->get_param('session_id'));
        $user_id = get_current_user_id();

        $website_url = esc_url_raw($request->get_header('referer'));
        if (empty($website_url)) {
            $website_url = esc_url_raw(home_url());
        }

        $payload = [
            'message' => $message,
            'user_id' => strval($user_id),
            'session_id' => $session_id,
            'timestamp' => gmdate('c'),
            'website_url' => $website_url,
        ];

        $webhook = new ChatConnect_Webhook_Integration();
        $response = $webhook->forward_message($payload);
        if (is_wp_error($response)) {
            return $response;
        }

        $body = wp_remote_retrieve_body($response);
        $decoded = json_decode($body, true);
        if (json_last_error() !== JSON_ERROR_NONE || !is_array($decoded)) {
            return new WP_Error('invalid_response', __('Invalid response from webhook', 'chatconnect-pro'), ['status' => 502]);
        }

        // Expected format: { response: string, type: 'text', timestamp: ..., suggestions: [] }
        $data = [
            'response' => isset($decoded['response']) ? wp_kses_post($decoded['response']) : '',
            'type' => isset($decoded['type']) ? sanitize_text_field($decoded['type']) : 'text',
            'timestamp' => isset($decoded['timestamp']) ? sanitize_text_field($decoded['timestamp']) : gmdate('c'),
            'suggestions' => isset($decoded['suggestions']) && is_array($decoded['suggestions']) ? array_map('sanitize_text_field', $decoded['suggestions']) : [],
        ];

        return new WP_REST_Response($data, 200);
    }
}
