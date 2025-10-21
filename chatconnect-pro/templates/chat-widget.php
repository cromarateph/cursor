<?php
if (!defined('ABSPATH')) { exit; }
$options = get_option('chatconnect_pro_settings', []);
$primary = isset($options['primary_color']) ? sanitize_hex_color($options['primary_color']) : '#2b59ff';
$secondary = isset($options['secondary_color']) ? sanitize_hex_color($options['secondary_color']) : '#ffffff';
$textColor = isset($options['text_color']) ? sanitize_hex_color($options['text_color']) : '#1f2937';
$userBubble = isset($options['user_bubble_color']) ? sanitize_hex_color($options['user_bubble_color']) : $primary;
$botBubble = isset($options['bot_bubble_color']) ? sanitize_hex_color($options['bot_bubble_color']) : '#ffffff';
$fontSize = isset($options['font_size']) ? sanitize_text_field($options['font_size']) : 'medium';
$position = isset($options['position']) ? sanitize_text_field($options['position']) : 'right';
// Use inline SVG data URIs as fallbacks so no files are required
$default_bot = 'data:image/svg+xml;utf8,' . rawurlencode('<svg xmlns="http://www.w3.org/2000/svg" width="64" height="64"><rect width="100%" height="100%" rx="12" ry="12" fill="#e5e7eb"/><text x="50%" y="55%" dominant-baseline="middle" text-anchor="middle" font-size="28" font-family="sans-serif" fill="#6b7280">🤖</text></svg>');
$default_user = 'data:image/svg+xml;utf8,' . rawurlencode('<svg xmlns="http://www.w3.org/2000/svg" width="64" height="64"><rect width="100%" height="100%" rx="12" ry="12" fill="#dbeafe"/><text x="50%" y="55%" dominant-baseline="middle" text-anchor="middle" font-size="28" font-family="sans-serif" fill="#2563eb">🙂</text></svg>');
$botAvatar = isset($options['bot_avatar']) && !empty($options['bot_avatar']) ? esc_url($options['bot_avatar']) : $default_bot;
$userAvatar = isset($options['user_avatar']) && !empty($options['user_avatar']) ? esc_url($options['user_avatar']) : $default_user;
$avatarSize = isset($options['avatar_size']) ? intval($options['avatar_size']) : 36;
$rounded = !empty($options['avatar_rounded']);
$greeting = isset($options['default_greeting']) ? esc_html($options['default_greeting']) : __('How may I help you?', 'chatconnect-pro');
$icon = isset($options['chat_icon']) ? esc_url($options['chat_icon']) : '';
?>
<div id="chatconnect-pro" class="chatconnect-pro chatconnect-position-<?php echo esc_attr($position); ?> chatconnect-font-<?php echo esc_attr($fontSize); ?> <?php echo $rounded ? '' : 'rounded-false'; ?>" style="--chatconnect-primary: <?php echo esc_attr($primary); ?>; --chatconnect-secondary: <?php echo esc_attr($secondary); ?>; --chatconnect-text: <?php echo esc_attr($textColor); ?>; --chatconnect-avatar-size: <?php echo esc_attr($avatarSize); ?>px; --chatconnect-user-bubble: <?php echo esc_attr($userBubble); ?>; --chatconnect-bot-bubble: <?php echo esc_attr($botBubble); ?>;">
  <div class="chatconnect-toggle" aria-label="Open chat" role="button" tabindex="0">
    <span class="chatconnect-icon">
      <?php if (!empty($icon)) : ?>
        <img src="<?php echo esc_url($icon); ?>" alt="icon" style="width:20px;height:20px;object-fit:contain;" />
      <?php else : ?>
        💬
      <?php endif; ?>
    </span>
    <span class="chatconnect-label"><?php echo esc_html__('How may I help you?', 'chatconnect-pro'); ?></span>
  </div>
  <div class="chatconnect-window" aria-live="polite" aria-atomic="false">
    <div class="chatconnect-header" style="background: var(--chatconnect-primary); color: #fff;">
      <div class="chatconnect-title">ChatConnect Pro</div>
      <button class="chatconnect-close" aria-label="Close">×</button>
    </div>
    <div class="chatconnect-messages" data-bot-avatar="<?php echo esc_attr($botAvatar); ?>" data-user-avatar="<?php echo esc_attr($userAvatar); ?>" data-rounded="<?php echo $rounded ? '1' : '0'; ?>">
      <div class="chatconnect-message bot">
        <div class="avatar"><img src="<?php echo esc_url($botAvatar); ?>" alt="bot"></div>
        <div class="bubble"><?php echo $greeting; ?></div>
        <div class="meta"><span class="time"></span></div>
      </div>
    </div>
    <div class="chatconnect-input">
      <form class="chatconnect-form" action="#">
        <input type="text" name="message" placeholder="<?php echo esc_attr__('Type your message…', 'chatconnect-pro'); ?>" autocomplete="off" required>
        <button type="submit" class="send">➤</button>
      </form>
      <div class="typing" aria-hidden="true">
        <span class="dot"></span><span class="dot"></span><span class="dot"></span>
      </div>
    </div>
  </div>
</div>
