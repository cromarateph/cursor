<?php
if (!defined('ABSPATH')) { exit; }

class ChatConnect_Admin_Settings {
    private $option_name = 'chatconnect_pro_settings';

    public function __construct() {
        add_action('admin_menu', [$this, 'add_menu']);
        add_action('admin_init', [$this, 'register_settings']);
    }

    public function add_menu() {
        add_options_page(
            __('ChatConnect Pro', 'chatconnect-pro'),
            __('ChatConnect Pro', 'chatconnect-pro'),
            'manage_options',
            'chatconnect-pro',
            [$this, 'render_settings_page']
        );
    }

    public function register_settings() {
        register_setting($this->option_name, $this->option_name, [$this, 'sanitize_options']);

        // Sections
        add_settings_section('webhook_settings', __('Webhook Settings', 'chatconnect-pro'), '__return_false', $this->option_name);
        add_settings_section('appearance_settings', __('Appearance', 'chatconnect-pro'), '__return_false', $this->option_name);
        add_settings_section('avatar_settings', __('Avatars', 'chatconnect-pro'), '__return_false', $this->option_name);
        add_settings_section('behavior_settings', __('Behavior', 'chatconnect-pro'), '__return_false', $this->option_name);

        // Fields - Webhook
        add_settings_field('webhook_url', __('n8n Webhook URL', 'chatconnect-pro'), [$this, 'field_text'], $this->option_name, 'webhook_settings', ['id' => 'webhook_url']);
        add_settings_field('http_method', __('HTTP Method', 'chatconnect-pro'), [$this, 'field_select_method'], $this->option_name, 'webhook_settings');
        add_settings_field('custom_headers', __('Custom HTTP Headers (JSON)', 'chatconnect-pro'), [$this, 'field_textarea'], $this->option_name, 'webhook_settings', ['id' => 'custom_headers']);
        add_settings_field('request_timeout', __('Request Timeout (seconds)', 'chatconnect-pro'), [$this, 'field_number'], $this->option_name, 'webhook_settings', ['id' => 'request_timeout', 'min' => 1, 'max' => 60]);

        // Fields - Appearance
        foreach (['primary_color','secondary_color','text_color','user_bubble_color','bot_bubble_color'] as $color_id) {
            add_settings_field($color_id, ucwords(str_replace('_', ' ', $color_id)), [$this, 'field_color'], $this->option_name, 'appearance_settings', ['id' => $color_id]);
        }
        add_settings_field('font_size', __('Font Size', 'chatconnect-pro'), [$this, 'field_font_size'], $this->option_name, 'appearance_settings');
        add_settings_field('chat_icon', __('Chat Icon', 'chatconnect-pro'), [$this, 'field_media'], $this->option_name, 'appearance_settings', ['id' => 'chat_icon']);
        add_settings_field('position', __('Position', 'chatconnect-pro'), [$this, 'field_position'], $this->option_name, 'appearance_settings');

        // Fields - Avatars
        add_settings_field('bot_avatar', __('Bot Avatar', 'chatconnect-pro'), [$this, 'field_media'], $this->option_name, 'avatar_settings', ['id' => 'bot_avatar']);
        add_settings_field('user_avatar', __('User Avatar', 'chatconnect-pro'), [$this, 'field_media'], $this->option_name, 'avatar_settings', ['id' => 'user_avatar']);
        add_settings_field('avatar_size', __('Avatar Size (px)', 'chatconnect-pro'), [$this, 'field_number'], $this->option_name, 'avatar_settings', ['id' => 'avatar_size', 'min' => 16, 'max' => 96]);
        add_settings_field('avatar_rounded', __('Rounded Avatars', 'chatconnect-pro'), [$this, 'field_checkbox'], $this->option_name, 'avatar_settings', ['id' => 'avatar_rounded']);

        // Fields - Behavior
        add_settings_field('auto_open_delay', __('Auto Open Delay (ms)', 'chatconnect-pro'), [$this, 'field_number'], $this->option_name, 'behavior_settings', ['id' => 'auto_open_delay', 'min' => 0, 'max' => 60000]);
        add_settings_field('default_greeting', __('Default Greeting', 'chatconnect-pro'), [$this, 'field_text'], $this->option_name, 'behavior_settings', ['id' => 'default_greeting']);
        add_settings_field('offline_message', __('Offline Message', 'chatconnect-pro'), [$this, 'field_text'], $this->option_name, 'behavior_settings', ['id' => 'offline_message']);
        add_settings_field('working_hours', __('Working Hours', 'chatconnect-pro'), [$this, 'field_text'], $this->option_name, 'behavior_settings', ['id' => 'working_hours']);
    }

    public function sanitize_options($input) {
        $output = [];
        $output['webhook_url'] = isset($input['webhook_url']) ? esc_url_raw($input['webhook_url']) : '';
        $method = isset($input['http_method']) ? strtoupper(sanitize_text_field($input['http_method'])) : 'POST';
        $output['http_method'] = in_array($method, ['POST','PUT'], true) ? $method : 'POST';
        $output['custom_headers'] = '';
        if (!empty($input['custom_headers'])) {
            $json = wp_unslash($input['custom_headers']);
            if ($this->is_valid_json($json)) {
                $output['custom_headers'] = $json; // stored as JSON string
            }
        }
        $timeout = isset($input['request_timeout']) ? intval($input['request_timeout']) : 10;
        $output['request_timeout'] = max(1, min(60, $timeout));

        // Appearance
        foreach (['primary_color','secondary_color','text_color','user_bubble_color','bot_bubble_color'] as $color_id) {
            $output[$color_id] = isset($input[$color_id]) ? sanitize_hex_color($input[$color_id]) : '';
        }
        $font = isset($input['font_size']) ? sanitize_text_field($input['font_size']) : 'medium';
        $output['font_size'] = in_array($font, ['small','medium','large','custom'], true) ? $font : 'medium';
        $output['chat_icon'] = isset($input['chat_icon']) ? esc_url_raw($input['chat_icon']) : '';
        $position = isset($input['position']) ? sanitize_text_field($input['position']) : 'right';
        $output['position'] = in_array($position, ['right','left'], true) ? $position : 'right';

        // Avatars
        $output['bot_avatar'] = isset($input['bot_avatar']) ? esc_url_raw($input['bot_avatar']) : '';
        $output['user_avatar'] = isset($input['user_avatar']) ? esc_url_raw($input['user_avatar']) : '';
        $size = isset($input['avatar_size']) ? intval($input['avatar_size']) : 36;
        $output['avatar_size'] = max(16, min(96, $size));
        $output['avatar_rounded'] = !empty($input['avatar_rounded']);

        // Behavior
        $output['auto_open_delay'] = isset($input['auto_open_delay']) ? max(0, intval($input['auto_open_delay'])) : 0;
        $output['default_greeting'] = isset($input['default_greeting']) ? sanitize_text_field($input['default_greeting']) : '';
        $output['offline_message'] = isset($input['offline_message']) ? sanitize_text_field($input['offline_message']) : '';
        $output['working_hours'] = isset($input['working_hours']) ? sanitize_text_field($input['working_hours']) : '';

        return $output;
    }

    private function is_valid_json($string) {
        json_decode($string);
        return (json_last_error() === JSON_ERROR_NONE);
    }

    public function render_settings_page() {
        $options = get_option($this->option_name, []);
        if (!current_user_can('manage_options')) {
            return;
        }
        require CHATCONNECT_PRO_PLUGIN_DIR . 'templates/admin-settings.php';
    }

    // Field renderers
    private function get_value($id) {
        $opts = get_option($this->option_name, []);
        return isset($opts[$id]) ? $opts[$id] : '';
    }

    public function field_text($args) {
        $id = esc_attr($args['id']);
        $val = esc_attr($this->get_value($id));
        echo '<input type="text" id="' . $id . '" name="' . $this->option_name . '[' . $id . ']" value="' . $val . '" class="regular-text">';
    }

    public function field_number($args) {
        $id = esc_attr($args['id']);
        $val = esc_attr($this->get_value($id));
        $min = isset($args['min']) ? intval($args['min']) : 0;
        $max = isset($args['max']) ? intval($args['max']) : 999;
        echo '<input type="number" id="' . $id . '" min="' . $min . '" max="' . $max . '" name="' . $this->option_name . '[' . $id . ']" value="' . $val . '">';
    }

    public function field_textarea($args) {
        $id = esc_attr($args['id']);
        $val = esc_textarea($this->get_value($id));
        echo '<textarea id="' . $id . '" name="' . $this->option_name . '[' . $id . ']" rows="6" class="large-text code" placeholder="{\n  \"Authorization\": \"Bearer ...\"\n}">' . $val . '</textarea>';
    }

    public function field_color($args) {
        $id = esc_attr($args['id']);
        $val = esc_attr($this->get_value($id));
        echo '<input type="text" class="chatconnect-color-field" id="' . $id . '" name="' . $this->option_name . '[' . $id . ']" value="' . $val . '" data-default-color="#ffffff">';
    }

    public function field_select_method() {
        $id = 'http_method';
        $val = esc_attr($this->get_value($id));
        echo '<select id="http_method" name="' . $this->option_name . '[http_method]">';
        foreach (["POST","PUT"] as $method) {
            $selected = selected($val, $method, false);
            echo '<option value="' . esc_attr($method) . '" ' . $selected . '>' . esc_html($method) . '</option>';
        }
        echo '</select>';
    }

    public function field_font_size() {
        $id = 'font_size';
        $val = esc_attr($this->get_value($id));
        echo '<select id="font_size" name="' . $this->option_name . '[font_size]">';
        foreach (["small","medium","large","custom"] as $size) {
            $selected = selected($val, $size, false);
            echo '<option value="' . esc_attr($size) . '" ' . $selected . '>' . esc_html(ucfirst($size)) . '</option>';
        }
        echo '</select>';
    }

    public function field_media($args) {
        $id = esc_attr($args['id']);
        $val = esc_attr($this->get_value($id));
        echo '<div class="chatconnect-media-field">';
        echo '<input type="text" id="' . $id . '" name="' . $this->option_name . '[' . $id . ']" value="' . $val . '" class="regular-text">';
        echo ' <button class="button chatconnect-upload" data-target="' . $id . '">' . esc_html__('Upload', 'chatconnect-pro') . '</button>';
        echo '</div>';
    }

    public function field_position() {
        $id = 'position';
        $val = esc_attr($this->get_value($id));
        echo '<select id="position" name="' . $this->option_name . '[position]">';
        foreach (["right","left"] as $pos) {
            $selected = selected($val, $pos, false);
            echo '<option value="' . esc_attr($pos) . '" ' . $selected . '>' . esc_html(ucfirst($pos)) . '</option>';
        }
        echo '</select>';
    }

    public function field_checkbox($args) {
        $id = esc_attr($args['id']);
        $val = $this->get_value($id) ? 'checked' : '';
        echo '<label><input type="checkbox" id="' . $id . '" name="' . $this->option_name . '[' . $id . ']" value="1" ' . $val . '> ' . esc_html__('Enable', 'chatconnect-pro') . '</label>';
    }
}
