# ChatConnect Pro

Floating chat plugin that integrates with n8n workflows and provides extensive customization options.

## Installation
1. Zip the `chatconnect-pro/` folder or copy it into `wp-content/plugins/`.
2. Activate “ChatConnect Pro” in WordPress → Plugins.
3. Go to Settings → ChatConnect Pro and configure webhook and appearance.

## Features (Phase 1)
- Floating chat widget with open/close animations
- REST endpoint to forward messages to n8n webhook
- Test Connection endpoint from admin
- Basic security: nonces, sanitization, escaping

## n8n Webhook Payload
```json
{
  "message": "user message content",
  "user_id": "wordpress_user_id",
  "session_id": "unique_chat_session",
  "timestamp": "2023-11-15T10:30:00Z",
  "website_url": "current_website_url"
}
```

### Expected Response
```json
{
  "response": "AI agent response",
  "type": "text",
  "timestamp": "2023-11-15T10:30:05Z",
  "suggestions": ["option1", "option2"]
}
```

## Example n8n Workflow
- Trigger: HTTP Request (Method: POST)
- Transform: Set node to ensure response structure
- Return: Send a JSON response with `response`, `type`, `timestamp`, `suggestions`

Example Function item code:
```javascript
// Assume incoming body has: message, user_id, session_id, timestamp, website_url
return [{
  response: `You said: ${$json.message}`,
  type: 'text',
  timestamp: new Date().toISOString(),
  suggestions: ['Help center', 'Talk to agent']
}];
```

## Admin Settings
- Webhook: URL, method (POST/PUT), custom headers (JSON), timeout
- Appearance: colors, font size, chat icon, position
- Avatars: bot/user avatars, size, rounded toggle
- Behavior: auto-open delay, greeting, offline message, working hours

## Security
- Nonce verification on REST requests (uses `X-WP-Nonce`)
- Sanitization of inputs and output escaping

## i18n
- Text domain: `chatconnect-pro`
- Template file: `languages/chatconnect-pro.pot`

## Development
- REST namespace: `chatconnect-pro/v1`
- Endpoints:
  - `POST /chatconnect-pro/v1/chat`
  - `POST /chatconnect-pro/v1/test-connection` (admins only)

## Compatibility
- Mobile responsive CSS
- Tested with common cache plugins via REST calls (no pages cached)

## Roadmap
- Phase 2: Theme controls, avatar uploads, font and position refinements
- Phase 3: Typing indicators from backend, persistent chat history, advanced animations
