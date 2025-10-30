import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_model.freezed.dart';
part 'app_settings_model.g.dart';

enum ThemeMode { light, dark, system }

@freezed
class AppSettingsModel with _$AppSettingsModel {
  const factory AppSettingsModel({
    // General
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default('en') String language,
    String? defaultBotId,
    @Default(true) bool showDefaultGreeting,

    // Security
    String? requestSigningSecret,
    @Default(false) bool allowInvalidCerts,
    @Default(true) bool redactPiiInLogs,
    @Default(false) bool enableBiometricLock,

    // Audio
    @Default(1.0) double playbackSpeed,
    @Default(true) bool audioDuckingOnCalls,
    @Default(false) bool preferEarpiece,
    @Default(true) bool autoplayReplies,

    // Developer
    @Default(false) bool verboseLogging,
    @Default(false) bool showWebhookLogs,

    // Payload Templates
    @Default('default') String requestPayloadTemplateId,
    @Default('default') String responsePayloadTemplateId,
    String? customRequestTemplate,
    String? customResponseTemplate,

    // Other
    @Default(10) int maxSessionHistory,
    @Default(false) bool enableTelemetry,
  }) = _AppSettingsModel;

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);
}
