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
          var body = data && data.body ? data.body : data;
          try { body = JSON.stringify(body, null, 2); } catch (e) {}
          $res.text('Success').css('color', '#059669');
          // Show modal dialog with response
          var modal = document.createElement('div');
          modal.style.position = 'fixed';
          modal.style.inset = '0';
          modal.style.background = 'rgba(0,0,0,0.4)';
          modal.style.zIndex = '100000';
          modal.innerHTML = '<div style="max-width:720px;margin:60px auto;background:#fff;border-radius:8px;box-shadow:0 10px 30px rgba(0,0,0,.2);overflow:hidden">\
            <div style="padding:12px 16px;border-bottom:1px solid #eee;display:flex;justify-content:space-between;align-items:center">\
              <strong>Webhook Test Response</strong>\
              <button id="chatconnect-modal-close" class="button">Close</button>\
            </div>\
            <pre style="margin:0;padding:16px;max-height:60vh;overflow:auto;background:#fafafa">'+ $('<div/>').text(body).html() +'</pre>\
          </div>';
          document.body.appendChild(modal);
          document.getElementById('chatconnect-modal-close').addEventListener('click', function(){ document.body.removeChild(modal); });
          modal.addEventListener('click', function(e){ if (e.target === modal) document.body.removeChild(modal); });
        },
        error: function(xhr){
          var json = xhr && xhr.responseJSON ? xhr.responseJSON : null;
          var msg = (json && json.message) ? json.message : (xhr.statusText || 'Unknown error');
          try { msg += '\n' + JSON.stringify(json, null, 2); } catch (e) {}
          $res.text('Error').css('color', '#dc2626');
          alert('Webhook test failed: ' + msg);
        }
      });
    });
  });
})(jQuery);
