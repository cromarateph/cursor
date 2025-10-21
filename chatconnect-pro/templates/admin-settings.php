<?php
if (!defined('ABSPATH')) { exit; }

$option_name = 'chatconnect_pro_settings';
?>
<div class="wrap chatconnect-admin">
  <h1><?php echo esc_html__('ChatConnect Pro Settings', 'chatconnect-pro'); ?></h1>
  <form method="post" action="options.php" id="chatconnect-pro-settings-form">
    <?php
      settings_fields($option_name);
      do_settings_sections($option_name);
      submit_button();
    ?>
    <button type="button" class="button button-secondary" id="chatconnect-test-connection"><?php echo esc_html__('Test Connection', 'chatconnect-pro'); ?></button>
    <span id="chatconnect-test-result" style="margin-left:10px;"></span>
  </form>
</div>
