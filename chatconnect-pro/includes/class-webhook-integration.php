<?php
if (!defined('ABSPATH')) { exit; }

class ChatConnect_Webhook_Integration {
    private $option_name = 'chatconnect_pro_settings';

    public function __construct() {
        add_action('rest_api_init', [$this, 'register_routes']);
    }

    public function register_routes() {
        register_rest_route('chatconnect-pro/v1', '/test-connection', [
            'methods' => WP_REST_Server::CREATABLE,
            'callback' => [$this, 'test_connection'],
            'permission_callback' => function () {
                return current_user_can('manage_options');
            },
        ]);
    }

    public function test_connection(WP_REST_Request $request) {
        $options = get_option($this->option_name, []);
        $url = isset($options['webhook_url']) ? esc_url_raw($options['webhook_url']) : '';
        if (empty($url)) {
            return new WP_Error('no_url', __('Webhook URL is not set.', 'chatconnect-pro'), ['status' => 400]);
        }
        $method = !empty($options['http_method']) ? $options['http_method'] : 'POST';
        $timeout = !empty($options['request_timeout']) ? intval($options['request_timeout']) : 10;
        $headers = $this->decode_headers(isset($options['custom_headers']) ? $options['custom_headers'] : '');

        $payload = [
            'message' => 'ping',
            'user_id' => get_current_user_id(),
            'session_id' => wp_generate_uuid4(),
            'timestamp' => gmdate('c'),
            'website_url' => home_url(),
        ];

        $response = $this->request_with_retry($url, $method, $headers, $payload, $timeout);
        if (is_wp_error($response)) {
            return $response;
        }

        $code = wp_remote_retrieve_response_code($response);
        $body = wp_remote_retrieve_body($response);
        return new WP_REST_Response([
            'status' => $code,
            'body' => json_decode($body, true),
        ], 200);
    }

    public function forward_message(array $payload) {
        $options = get_option($this->option_name, []);
        $url = isset($options['webhook_url']) ? esc_url_raw($options['webhook_url']) : '';
        if (empty($url)) {
            return new WP_Error('no_url', __('Webhook URL is not set.', 'chatconnect-pro'));
        }
        $method = !empty($options['http_method']) ? $options['http_method'] : 'POST';
        $timeout = !empty($options['request_timeout']) ? intval($options['request_timeout']) : 10;
        $headers = $this->decode_headers(isset($options['custom_headers']) ? $options['custom_headers'] : '');

        return $this->request_with_retry($url, $method, $headers, $payload, $timeout);
    }

    private function decode_headers($json) {
        $headers = [];
        if (!empty($json)) {
            $decoded = json_decode($json, true);
            if (json_last_error() === JSON_ERROR_NONE && is_array($decoded)) {
                foreach ($decoded as $key => $value) {
                    $headers[sanitize_text_field($key)] = sanitize_text_field($value);
                }
            }
        }
        $headers['Content-Type'] = 'application/json; charset=utf-8';
        return $headers;
    }

    private function request_with_retry($url, $method, $headers, $payload, $timeout) {
        $max_attempts = 3;
        $delay_ms = 250; // exponential backoff base

        for ($attempt = 1; $attempt <= $max_attempts; $attempt++) {
            $args = [
                'method' => $method,
                'timeout' => $timeout,
                'headers' => $headers,
                'body' => wp_json_encode($payload),
            ];
            $response = wp_remote_request($url, $args);
            if (!is_wp_error($response)) {
                $code = wp_remote_retrieve_response_code($response);
                if ($code >= 200 && $code < 500) {
                    return $response; // success or client error - don't retry on 4xx
                }
            }

            if ($attempt < $max_attempts) {
                usleep($delay_ms * 1000);
                $delay_ms *= 2;
            }
        }

        if (is_wp_error($response)) {
            return $response;
        }
        return new WP_Error('webhook_failed', __('Failed to contact webhook after retries.', 'chatconnect-pro'), [
            'response_code' => isset($code) ? $code : 0,
            'response' => isset($response) ? $response : null,
        ]);
    }
}
