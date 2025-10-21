<?php
/**
 * Plugin Name: ChatConnect Pro
 * Description: Floating chat plugin integrating with n8n workflows. Provides customization options and secure REST endpoints.
 * Version: 1.0.0
 * Author: ChatConnect Team
 * Text Domain: chatconnect-pro
 * Domain Path: /languages
 */

if (!defined('ABSPATH')) {
    exit;
}

if (!defined('CHATCONNECT_PRO_VERSION')) {
    define('CHATCONNECT_PRO_VERSION', '1.0.0');
}

if (!defined('CHATCONNECT_PRO_PLUGIN_FILE')) {
    define('CHATCONNECT_PRO_PLUGIN_FILE', __FILE__);
}

if (!defined('CHATCONNECT_PRO_PLUGIN_DIR')) {
    define('CHATCONNECT_PRO_PLUGIN_DIR', plugin_dir_path(__FILE__));
}

if (!defined('CHATCONNECT_PRO_PLUGIN_URL')) {
    define('CHATCONNECT_PRO_PLUGIN_URL', plugin_dir_url(__FILE__));
}

// Autoload basic classes within includes
spl_autoload_register(function ($class) {
    if (strpos($class, 'ChatConnect_') === 0) {
        $relative = str_replace('ChatConnect_', 'class-', $class);
        // Convert underscores in class names to hyphens to match file naming
        $relative = strtolower(str_replace('_', '-', $relative));
        $file = CHATCONNECT_PRO_PLUGIN_DIR . 'includes/' . $relative . '.php';
        if (file_exists($file)) {
            require_once $file;
        }
    }
});

function chatconnect_pro_activate() {
    // Placeholder for future activation logic (e.g., options defaults)
}
register_activation_hook(__FILE__, 'chatconnect_pro_activate');

function chatconnect_pro_deactivate() {
    // Placeholder for deactivation cleanup if needed
}
register_deactivation_hook(__FILE__, 'chatconnect_pro_deactivate');

function chatconnect_pro_init() {
    load_plugin_textdomain('chatconnect-pro', false, dirname(plugin_basename(__FILE__)) . '/languages');

    // Initialize core components
    if (is_admin()) {
        new ChatConnect_Admin_Settings();
    }

    new ChatConnect_Webhook_Integration();
    new ChatConnect_Chat_Handler();
    new ChatConnect_Frontend_Widget();
}
add_action('plugins_loaded', 'chatconnect_pro_init');

function chatconnect_pro_enqueue_assets() {
    // Frontend assets
    wp_register_style('chatconnect-pro-frontend', CHATCONNECT_PRO_PLUGIN_URL . 'assets/css/frontend.css', [], CHATCONNECT_PRO_VERSION);
    wp_register_script('chatconnect-pro-frontend', CHATCONNECT_PRO_PLUGIN_URL . 'assets/js/chat-widget.js', ['wp-api-fetch'], CHATCONNECT_PRO_VERSION, true);

    // Localize settings and nonces
    $options = get_option('chatconnect_pro_settings', []);
    $data = [
        'restUrl' => esc_url_raw(rest_url('chatconnect-pro/v1')),
        'nonce' => wp_create_nonce('wp_rest'),
        'chatNonce' => wp_create_nonce('chatconnect_pro_chat'),
        'appearance' => [
            'primaryColor' => isset($options['primary_color']) ? sanitize_hex_color($options['primary_color']) : '#2b59ff',
            'secondaryColor' => isset($options['secondary_color']) ? sanitize_hex_color($options['secondary_color']) : '#f5f7fb',
            'textColor' => isset($options['text_color']) ? sanitize_hex_color($options['text_color']) : '#1f2937',
            'userBubbleColor' => isset($options['user_bubble_color']) ? sanitize_hex_color($options['user_bubble_color']) : '#2b59ff',
            'botBubbleColor' => isset($options['bot_bubble_color']) ? sanitize_hex_color($options['bot_bubble_color']) : '#e5e7eb',
            'fontSize' => isset($options['font_size']) ? sanitize_text_field($options['font_size']) : 'medium',
            'icon' => isset($options['chat_icon']) ? esc_url_raw($options['chat_icon']) : '',
            'position' => isset($options['position']) ? sanitize_text_field($options['position']) : 'right',
        ],
        'avatars' => [
            'bot' => isset($options['bot_avatar']) ? esc_url_raw($options['bot_avatar']) : CHATCONNECT_PRO_PLUGIN_URL . 'assets/images/default-bot-avatar.png',
            'user' => isset($options['user_avatar']) ? esc_url_raw($options['user_avatar']) : CHATCONNECT_PRO_PLUGIN_URL . 'assets/images/default-user-avatar.png',
            'size' => isset($options['avatar_size']) ? intval($options['avatar_size']) : 36,
            'rounded' => !empty($options['avatar_rounded']) ? (bool)$options['avatar_rounded'] : true,
        ],
        'behavior' => [
            'autoOpenDelay' => isset($options['auto_open_delay']) ? intval($options['auto_open_delay']) : 0,
            'defaultGreeting' => isset($options['default_greeting']) ? sanitize_text_field($options['default_greeting']) : __('How may I help you?', 'chatconnect-pro'),
            'offlineMessage' => isset($options['offline_message']) ? sanitize_text_field($options['offline_message']) : __('We are currently offline. Please leave a message.', 'chatconnect-pro'),
            'workingHours' => isset($options['working_hours']) ? sanitize_text_field($options['working_hours']) : '',
        ],
    ];

    wp_localize_script('chatconnect-pro-frontend', 'ChatConnectPro', $data);
}
add_action('wp_enqueue_scripts', 'chatconnect_pro_enqueue_assets');

function chatconnect_pro_admin_assets($hook) {
    if ($hook !== 'settings_page_chatconnect-pro') {
        return;
    }
    wp_enqueue_style('chatconnect-pro-admin', CHATCONNECT_PRO_PLUGIN_URL . 'assets/css/admin.css', [], CHATCONNECT_PRO_VERSION);
    wp_enqueue_media();
    wp_enqueue_script('chatconnect-pro-admin', CHATCONNECT_PRO_PLUGIN_URL . 'assets/js/admin-settings.js', ['jquery', 'wp-color-picker'], CHATCONNECT_PRO_VERSION, true);
    wp_localize_script('chatconnect-pro-admin', 'ChatConnectProAdmin', [
        'restUrl' => esc_url_raw(rest_url('chatconnect-pro/v1')),
        'nonce' => wp_create_nonce('wp_rest'),
    ]);
}
add_action('admin_enqueue_scripts', 'chatconnect_pro_admin_assets');
