<?php
if (!defined('ABSPATH')) { exit; }

class ChatConnect_Frontend_Widget {
    public function __construct() {
        add_action('wp_footer', [$this, 'render_widget']);
    }

    public function render_widget() {
        wp_enqueue_style('chatconnect-pro-frontend');
        wp_enqueue_script('chatconnect-pro-frontend');
        require CHATCONNECT_PRO_PLUGIN_DIR . 'templates/chat-widget.php';
    }
}
