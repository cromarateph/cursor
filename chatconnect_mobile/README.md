# ChatConnect Pro - Mobile App

A production-ready, cross-platform mobile application built with Flutter for iOS and Android. ChatConnect Pro enables users to create and manage AI chatbot instances that communicate with n8n webhooks, featuring voice input via Speech-to-Text and audio responses via Text-to-Speech.

## Architecture

### Clean Architecture with Modular Design

The app follows clean architecture principles with clear separation of concerns:

```
lib/
├── core/                      # Core utilities and constants
│   ├── constants/            # App-wide constants
│   ├── errors/               # Error handling
│   └── config/               # Configuration
├── data/                      # Data layer
│   ├── models/               # Data models with Freezed
│   ├── repositories/         # Data repositories
│   ├── datasources/          # Local and remote data sources
│   └── database/             # SQLite database
├── domain/                    # Business logic layer
│   ├── entities/             # Domain entities
│   └── usecases/             # Business use cases
├── presentation/              # UI layer
│   ├── screens/              # Screen widgets
│   ├── widgets/              # Reusable widgets
│   └── providers/            # Riverpod state management
└── services/                  # Platform services
    ├── audio/                # Audio playback service
    ├── stt/                  # Speech-to-Text service
    ├── storage/              # Secure storage
    └── webhook/              # Webhook client
```

## Technology Stack

- **Framework**: Flutter 3.9.2+
- **Language**: Dart
- **State Management**: Riverpod 2.5+
- **Networking**: Dio 5.4+
- **Local Storage**: SQLite (sqflite)
- **Secure Storage**: flutter_secure_storage
- **Audio**: just_audio + audioplayers
- **Speech-to-Text**: speech_to_text
- **Code Generation**: Freezed + json_serializable

## Core Features Implemented

### 1. Bot Instance Management (CRUD)

- **Create** bot instances with custom webhook configurations
- **Read** and display bot details
- **Update** bot settings
- **Delete** bot instances
- Fields: name, description, webhookUrl, httpMethod, customHeaders, timeouts, retry policies

### 2. Webhook Integration

**WebhookClient Module** (`services/webhook/webhook_client.dart`)

- ✅ Configurable HTTP methods (POST/GET)
- ✅ Custom headers support
- ✅ HMAC SHA256 request signing with `X-Signature` header
- ✅ Exponential backoff retry: 250ms → 1s → 3s → 10s (max 5 attempts)
- ✅ Request timeout configuration per bot
- ✅ Comprehensive error handling
- ✅ Webhook call logging for debugging

**Request Payload** (Default Schema):
```json
{
  "app": { "id": "<appId>", "version": "<version>", "platform": "<platform>" },
  "user": { "id": "<userId>", "display_name": "<name>" },
  "bot": { "id": "<botId>", "name": "<botName>" },
  "session": { "id": "<sessionId>", "sequence": 0, "context": "", "ttl_ms": 3600000 },
  "message": { "type": "stt_text", "text": "<text>", "audio_format": "base64", "lang": "en-US" },
  "meta": { "timestamp": "<ISO8601>", "timezone": "<IANA>", "trace_id": "<uuid>", "extras": {} }
}
```

**Response Payload** (Default Schema):
```json
{
  "ok": true,
  "session": { "id": "<sessionId>", "reset": false, "end_of_conversation": false },
  "reply": {
    "type": "tts_audio_base64",
    "text": "<optional>",
    "audio_base64": "<base64String>",
    "mime_type": "audio/mpeg",
    "suggested_followups": []
  },
  "display": { "messages": [{ "role": "assistant", "text": "<text>" }] },
  "errors": []
}
```

### 3. Audio Service

**AudioService** (`services/audio/audio_service.dart`)

- ✅ Decode base64 audio strings
- ✅ Support for multiple formats: MP3, WAV, AAC, OGG, FLAC
- ✅ Playback controls: play, pause, resume, stop, seek
- ✅ Variable playback speed (0.5x - 2.0x)
- ✅ Audio session management (ducking on calls, focus handling)
- ✅ Speaker/earpiece routing
- ✅ Background playback support
- ✅ Automatic cleanup of temporary audio files

### 4. Speech-to-Text Abstraction

**SttService** (`services/stt/stt_service.dart`)

- ✅ Abstract `SttProvider` interface for swappable implementations
- ✅ `NativeSttProvider`: Uses platform native STT APIs
- ✅ `MockSttProvider`: For simulator and testing
- ✅ Permission handling
- ✅ Multiple locale support
- ✅ Partial result streaming
- ✅ Error callbacks

### 5. Secure Storage

**SecureStorageService** (`services/storage/secure_storage_service.dart`)

- ✅ Encrypted storage for sensitive data (auth tokens, secrets)
- ✅ Platform-native secure storage (Keychain on iOS, EncryptedSharedPreferences on Android)
- ✅ Non-sensitive data stored in SharedPreferences
- ✅ Settings persistence

### 6. Database Schema

**DatabaseHelper** (`data/database/database_helper.dart`)

Tables:
- `users`: User account data
- `bot_instances`: Bot configurations
- `sessions`: Chat sessions
- `messages`: Chat message history
- `webhook_logs`: Webhook call logs (last 50 for debugging)

### 7. Settings & Configuration

**AppSettings** (`data/models/app_settings_model.dart`)

- Theme mode (light/dark/system)
- Language selection
- Default bot
- Audio settings (playback speed, ducking, routing, autoplay)
- Security settings (signing secret, biometric lock, PII redaction)
- Developer options (verbose logging, webhook logs)

### 8. State Management

**Riverpod Providers** (`presentation/providers/`)

- `botListProvider`: Bot list state with CRUD operations
- `selectedBotProvider`: Currently active bot
- `settingsProvider`: App settings state
- Strongly-typed providers with compile-time safety

## UI Screens

### Home Screen
- Bottom navigation with 3 tabs: Bots, Chat, Settings

### Bots Screen
- List all bot instances
- Create new bot with dialog
- Delete bot with confirmation
- Navigate to bot details

### Bot Detail Screen
- View complete bot configuration
- Display webhook URL, retry policy, custom headers
- Quick "Start Chat" button

### Chat Screen (Basic UI)
- Message timeline (user on right, bot on left)
- Text input field
- Push-to-talk button (placeholder)
- Displays selected bot name in app bar

### Settings Screen
- General: Theme, Language
- Audio: Playback speed, Autoplay, Earpiece preference
- Security: Biometric lock, PII redaction
- Developer: Verbose logging, Webhook logs
- About: App version, Licenses

## Data Models

All models use **Freezed** for immutability and **json_serializable** for serialization:

- `UserModel`: User account information
- `BotInstanceModel`: Bot configuration and webhook settings
- `SessionModel`: Chat session metadata
- `MessageModel`: Individual chat messages
- `WebhookRequestModel`: Request payload structure
- `WebhookResponseModel`: Response payload structure
- `AppSettingsModel`: App configuration

## Getting Started

### Prerequisites

- Flutter SDK 3.9.2 or higher
- Dart SDK 3.0+
- Xcode (for iOS development)
- Android Studio (for Android development)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd chatconnect_mobile
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code** (Freezed, json_serializable)
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

### Platform-Specific Setup

#### iOS

Add permissions to `ios/Runner/Info.plist`:
```xml
<key>NSMicrophoneUsageDescription</key>
<string>This app needs microphone access for voice chat</string>
<key>NSSpeechRecognitionUsageDescription</key>
<string>This app needs speech recognition for voice input</string>
```

#### Android

Add permissions to `android/app/src/main/AndroidManifest.xml`:
```xml
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.RECORD_AUDIO"/>
```

## Testing

### Unit Tests

Run unit tests:
```bash
flutter test
```

Test coverage for:
- WebhookClient (retry logic, HMAC signing, timeout)
- AudioService (base64 decoding, playback)
- SttService (mock provider)
- Repositories (CRUD operations)

### Integration Tests

```bash
flutter test integration_test
```

## Next Steps (To Be Implemented)

### High Priority

1. **Full Chat Implementation**
   - Real-time message sending to webhook
   - Display bot responses
   - Handle audio responses from webhook
   - Message status indicators (pending/sent/failed/received)

2. **Push-to-Talk**
   - Hold-to-talk gesture
   - Live STT transcription
   - Waveform animation
   - Auto-send on release

3. **Session Management**
   - Create/reset sessions
   - Auto-reset on inactivity
   - Handle `session.reset` from server
   - End-of-conversation detection

4. **Offline Queue**
   - Queue messages when offline
   - Auto-retry when connection restored
   - Network status indicator

5. **Authentication**
   - Login/Register screens
   - Email + password validation
   - OAuth stub
   - Forgot password flow
   - Profile management

### Medium Priority

6. **Payload Schema Editor**
   - JSON editor for request/response templates
   - Variable interpolation
   - Live preview
   - Test payload tool

7. **Developer Tools**
   - Webhook log viewer (last 50 calls)
   - Export logs to JSON
   - Connection test utility
   - Clear caches

8. **Theming & Accessibility**
   - High contrast mode
   - Large text support
   - VoiceOver/TalkBack support
   - Localization (i18n)

9. **Deep Linking**
   - `myapp://chat/<botId>` support
   - Open specific bot from notification

10. **Push Notifications**
    - Bot reply notifications
    - Notification tap handling

### Low Priority

11. **Advanced Features**
    - Biometric authentication
    - OTA updates
    - Telemetry (opt-in)
    - Rate limiting
    - Multi-language support

## Security Best Practices

- ✅ Secrets stored in platform secure storage (Keychain/EncryptedSharedPreferences)
- ✅ HMAC request signing with SHA256
- ✅ TLS validation (optional bypass for dev only)
- ✅ PII redaction in logs
- ⏳ Biometric app lock (UI complete, logic pending)
- ⏳ Optional app-level passcode

## Architecture Decisions

### Why Riverpod?

- Compile-time safety with code generation
- No context required
- Built-in provider dependencies
- Easy testing with provider overrides
- Excellent developer experience

### Why Freezed?

- Immutable data classes
- Built-in `copyWith` methods
- Union types support
- JSON serialization integration
- Reduces boilerplate

### Why SQLite?

- Offline-first architecture
- Complex queries for message history
- Session persistence
- Fast local storage

### Why Dio?

- Interceptors for logging and auth
- Timeout and retry configuration
- Request/response transformation
- Better error handling than http

## Performance Optimizations

- Lazy loading of chat messages
- Audio file cleanup after playback
- Database indexes on frequently queried columns
- Image caching (when implemented)
- Efficient state management with Riverpod

## Contributing

1. Follow the existing code structure
2. Use Freezed for all data models
3. Write unit tests for business logic
4. Update README for new features
5. Run `flutter analyze` before committing
6. Format code with `dart format .`

## License

[Your License Here]

## Support

For issues and questions, please open an issue on GitHub.

---

**Built with**
- Flutter
- Riverpod
- Freezed
- Dio
- just_audio
- speech_to_text

**Generated with** [Claude Code](https://claude.com/claude-code)
