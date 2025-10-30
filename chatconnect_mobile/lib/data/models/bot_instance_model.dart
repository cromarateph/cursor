import 'package:freezed_annotation/freezed_annotation.dart';

part 'bot_instance_model.freezed.dart';
part 'bot_instance_model.g.dart';

@freezed
class BotInstanceModel with _$BotInstanceModel {
  const factory BotInstanceModel({
    required String id,
    required String name,
    required String description,
    required String webhookUrl,
    @Default('POST') String httpMethod,
    @Default({}) Map<String, String> customHeaders,
    @Default(30000) int requestTimeoutMs,
    required RetryPolicy retryPolicy,
    required String payloadTemplateId,
    required String responseTemplateId,
    @Default(1.0) double voicePlaybackSpeed,
    @Default(3600000) int sessionTTL, // 1 hour default
    int? autoResetOnInactivityMs,
    String? defaultGreeting,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _BotInstanceModel;

  factory BotInstanceModel.fromJson(Map<String, dynamic> json) =>
      _$BotInstanceModelFromJson(json);
}

@freezed
class RetryPolicy with _$RetryPolicy {
  const factory RetryPolicy({
    @Default(true) bool enabled,
    @Default(5) int maxAttempts,
    @Default([250, 1000, 3000, 10000]) List<int> backoffDelaysMs,
  }) = _RetryPolicy;

  factory RetryPolicy.fromJson(Map<String, dynamic> json) =>
      _$RetryPolicyFromJson(json);
}
