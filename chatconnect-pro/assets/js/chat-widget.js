(function(){
  const rootSel = '#chatconnect-pro';
  const root = document.querySelector(rootSel);
  if (!root || !window.ChatConnectPro) return;

  const state = {
    open: false,
    sessionId: localStorage.getItem('chatconnect_pro_session') || (function(){
      const id = (Math.random().toString(36).slice(2) + Date.now().toString(36));
      localStorage.setItem('chatconnect_pro_session', id);
      return id;
    })()
  };

  const toggle = root.querySelector('.chatconnect-toggle');
  const win = root.querySelector('.chatconnect-window');
  const closeBtn = root.querySelector('.chatconnect-close');
  const form = root.querySelector('.chatconnect-form');
  const input = form.querySelector('input[name="message"]');
  const messages = root.querySelector('.chatconnect-messages');
  const typing = root.querySelector('.typing');

  function setOpen(open){
    state.open = open;
    if (open) {
      root.classList.add('open');
    } else {
      root.classList.remove('open');
    }
  }

  toggle.addEventListener('click', () => setOpen(true));
  toggle.addEventListener('keydown', (e) => { if (e.key === 'Enter') setOpen(true); });
  closeBtn.addEventListener('click', () => setOpen(false));

  // auto open if configured
  if (ChatConnectPro.behavior && Number(ChatConnectPro.behavior.autoOpenDelay) > 0) {
    setTimeout(() => setOpen(true), Number(ChatConnectPro.behavior.autoOpenDelay));
  }

  function appendMessage(type, text, avatarUrl) {
    const msg = document.createElement('div');
    msg.className = `chatconnect-message ${type}`;
    const avatar = document.createElement('div');
    avatar.className = 'avatar';
    const img = document.createElement('img');
    img.alt = type === 'bot' ? 'bot' : 'user';
    img.src = avatarUrl;
    avatar.appendChild(img);
    const bubble = document.createElement('div');
    bubble.className = 'bubble';
    bubble.innerHTML = text;

    const metaTime = document.createElement('div');
    metaTime.className = 'message-time';
    metaTime.textContent = new Date().toLocaleTimeString([], {hour: '2-digit', minute:'2-digit'});

    msg.appendChild(avatar);
    msg.appendChild(bubble);
    msg.appendChild(metaTime);
    messages.appendChild(msg);
    messages.scrollTop = messages.scrollHeight;
  }

  function setTyping(show) {
    typing.style.display = show ? 'flex' : 'none';
  }

  form.addEventListener('submit', async (e) => {
    e.preventDefault();
    const text = input.value.trim();
    if (!text) return;
    input.value = '';

    const userAvatar = messages.dataset.userAvatar;
    const botAvatar = messages.dataset.botAvatar;

    appendMessage('user', escapeHtml(text), userAvatar);

    setTyping(true);

    try {
      const endpoint = ChatConnectPro.restUrl.replace(/\/$/, '') + '/chat';
      const res = await fetch(endpoint, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'X-WP-Nonce': ChatConnectPro.nonce
        },
        body: JSON.stringify({ message: text, session_id: state.sessionId, chat_nonce: ChatConnectPro.chatNonce })
      });
      const data = await res.json();
      if (data && data.response) {
        appendMessage('bot', data.response, botAvatar);
      } else {
        appendMessage('bot', 'Sorry, something went wrong.', botAvatar);
      }
    } catch (err) {
      const botAvatar = messages.dataset.botAvatar;
      appendMessage('bot', 'Connection error. Please try again later.', botAvatar);
    } finally {
      setTyping(false);
    }
  });

  function escapeHtml(str) {
    return str.replace(/[&<>"']/g, function(c) {
      return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c];
    });
  }
})();
