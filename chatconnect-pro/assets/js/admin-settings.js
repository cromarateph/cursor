(function($){
  $(function(){
    // Color pickers
    $('.chatconnect-color-field').wpColorPicker();

    // Media uploader buttons
    $(document).on('click', '.chatconnect-upload', function(e){
      e.preventDefault();
      var target = $(this).data('target');
      var frame = wp.media({ title: 'Select Image', multiple: false, library: { type: 'image' } });
      frame.on('select', function(){
        var attachment = frame.state().get('selection').first().toJSON();
        $('#' + target).val(attachment.url).trigger('change');
      });
      frame.open();
    });

    // Test connection
    $('#chatconnect-test-connection').on('click', function(){
      var $btn = $(this);
      var $res = $('#chatconnect-test-result');
      $res.text('Testing...');
      $.ajax({
        url: (ChatConnectProAdmin.restUrl.replace(/\/$/, '') + '/test-connection'),
        method: 'POST',
        headers: { 'X-WP-Nonce': ChatConnectProAdmin.nonce },
        success: function(data){
          $res.text('Success (' + (data && data.status ? data.status : 'OK') + ')').css('color', '#059669');
        },
        error: function(xhr){
          var msg = 'Error';
          try { msg += ' ' + (xhr.responseJSON && xhr.responseJSON.message ? xhr.responseJSON.message : xhr.statusText); } catch(e) {}
          $res.text(msg).css('color', '#dc2626');
        }
      });
    });
  });
})(jQuery);
