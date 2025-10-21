<?php
if (!defined('ABSPATH')) { exit; }

class ChatConnect_Frontend_Widget {
    private static $rendered = false;

    public function __construct() {
        add_action('wp_footer', [$this, 'render_widget'], 9999);
        // Fallback for themes missing wp_footer
        if (function_exists('wp_body_open')) {
            add_action('wp_body_open', [$this, 'render_widget']);
        }
        add_shortcode('chatconnect_pro', [$this, 'shortcode']);
    }

    public function render_widget() {
        if (is_admin()) { return; }
        if (self::$rendered) {
            return;
        }
        self::$rendered = true;
        wp_enqueue_style('chatconnect-pro-frontend');
        wp_enqueue_script('chatconnect-pro-frontend');
        require CHATCONNECT_PRO_PLUGIN_DIR . 'templates/chat-widget.php';
    }

    public function shortcode() {
        ob_start();
        $this->render_widget();
        // Prevent duplicate output since render_widget echoes directly
        return ob_get_clean();
    }
}
