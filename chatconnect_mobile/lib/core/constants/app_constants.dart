class AppConstants {
  // App Info
  static const String appName = 'ChatConnect Pro';
  static const String appId = 'com.chatconnect.mobile';

  // Database
  static const String dbName = 'chatconnect.db';
  static const int dbVersion = 1;

  // Tables
  static const String tableUsers = 'users';
  static const String tableBots = 'bot_instances';
  static const String tableSessions = 'sessions';
  static const String tableMessages = 'messages';
  static const String tableWebhookLogs = 'webhook_logs';

  // Storage Keys
  static const String keyAuthToken = 'auth_token';
  static const String keyUserId = 'user_id';
  static const String keySettings = 'app_settings';
  static const String keyDefaultBot = 'default_bot_id';

  // Retry Configuration
  static const List<int> defaultBackoffDelays = [250, 1000, 3000, 10000];
  static const int maxRetryAttempts = 5;
  static const int defaultRequestTimeout = 30000; // 30 seconds

  // Session Configuration
  static const int defaultSessionTTL = 3600000; // 1 hour
  static const int defaultAutoResetInactivity = 300000; // 5 minutes

  // Audio Configuration
  static const String defaultAudioFormat = 'audio/mpeg';
  static const double minPlaybackSpeed = 0.5;
  static const double maxPlaybackSpeed = 2.0;

  // Default Payload Templates
  static const String defaultRequestTemplateId = 'default';
  static const String defaultResponseTemplateId = 'default';

  // Logging
  static const int maxWebhookLogs = 50;
  static const int maxLogFileSize = 5242880; // 5MB

  // UI
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);
  static const Duration messageTimeout = Duration(seconds: 30);
  static const int maxMessageLength = 5000;

  // Telemetry
  static const String telemetryEndpoint = 'https://telemetry.chatconnect.pro/v1/events';
}
