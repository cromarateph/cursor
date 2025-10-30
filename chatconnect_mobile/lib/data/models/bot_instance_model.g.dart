// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bot_instance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BotInstanceModelImpl _$$BotInstanceModelImplFromJson(
  Map<String, dynamic> json,
) => _$BotInstanceModelImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  webhookUrl: json['webhookUrl'] as String,
  httpMethod: json['httpMethod'] as String? ?? 'POST',
  customHeaders:
      (json['customHeaders'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ) ??
      const {},
  requestTimeoutMs: (json['requestTimeoutMs'] as num?)?.toInt() ?? 30000,
  retryPolicy: RetryPolicy.fromJson(
    json['retryPolicy'] as Map<String, dynamic>,
  ),
  payloadTemplateId: json['payloadTemplateId'] as String,
  responseTemplateId: json['responseTemplateId'] as String,
  voicePlaybackSpeed: (json['voicePlaybackSpeed'] as num?)?.toDouble() ?? 1.0,
  sessionTTL: (json['sessionTTL'] as num?)?.toInt() ?? 3600000,
  autoResetOnInactivityMs: (json['autoResetOnInactivityMs'] as num?)?.toInt(),
  defaultGreeting: json['defaultGreeting'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$BotInstanceModelImplToJson(
  _$BotInstanceModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'webhookUrl': instance.webhookUrl,
  'httpMethod': instance.httpMethod,
  'customHeaders': instance.customHeaders,
  'requestTimeoutMs': instance.requestTimeoutMs,
  'retryPolicy': instance.retryPolicy,
  'payloadTemplateId': instance.payloadTemplateId,
  'responseTemplateId': instance.responseTemplateId,
  'voicePlaybackSpeed': instance.voicePlaybackSpeed,
  'sessionTTL': instance.sessionTTL,
  'autoResetOnInactivityMs': instance.autoResetOnInactivityMs,
  'defaultGreeting': instance.defaultGreeting,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

_$RetryPolicyImpl _$$RetryPolicyImplFromJson(Map<String, dynamic> json) =>
    _$RetryPolicyImpl(
      enabled: json['enabled'] as bool? ?? true,
      maxAttempts: (json['maxAttempts'] as num?)?.toInt() ?? 5,
      backoffDelaysMs:
          (json['backoffDelaysMs'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [250, 1000, 3000, 10000],
    );

Map<String, dynamic> _$$RetryPolicyImplToJson(_$RetryPolicyImpl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'maxAttempts': instance.maxAttempts,
      'backoffDelaysMs': instance.backoffDelaysMs,
    };
