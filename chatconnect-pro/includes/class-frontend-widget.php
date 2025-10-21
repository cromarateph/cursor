<?php
if (!defined('ABSPATH')) { exit; }

class ChatConnect_Frontend_Widget {
    private static $rendered = false;

    public function __construct() {
        add_action('wp_footer', [$this, 'render_widget']);
        // Fallback for themes missing wp_footer
        if (function_exists('wp_body_open')) {
            add_action('wp_body_open', [$this, 'render_widget']);
        }
    }

    public function render_widget() {
        if (self::$rendered) {
            return;
        }
        self::$rendered = true;
        wp_enqueue_style('chatconnect-pro-frontend');
        wp_enqueue_script('chatconnect-pro-frontend');
        require CHATCONNECT_PRO_PLUGIN_DIR . 'templates/chat-widget.php';
    }
}
