// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsModelImpl _$$AppSettingsModelImplFromJson(
  Map<String, dynamic> json,
) => _$AppSettingsModelImpl(
  themeMode:
      $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
      ThemeMode.system,
  language: json['language'] as String? ?? 'en',
  defaultBotId: json['defaultBotId'] as String?,
  showDefaultGreeting: json['showDefaultGreeting'] as bool? ?? true,
  requestSigningSecret: json['requestSigningSecret'] as String?,
  allowInvalidCerts: json['allowInvalidCerts'] as bool? ?? false,
  redactPiiInLogs: json['redactPiiInLogs'] as bool? ?? true,
  enableBiometricLock: json['enableBiometricLock'] as bool? ?? false,
  playbackSpeed: (json['playbackSpeed'] as num?)?.toDouble() ?? 1.0,
  audioDuckingOnCalls: json['audioDuckingOnCalls'] as bool? ?? true,
  preferEarpiece: json['preferEarpiece'] as bool? ?? false,
  autoplayReplies: json['autoplayReplies'] as bool? ?? true,
  verboseLogging: json['verboseLogging'] as bool? ?? false,
  showWebhookLogs: json['showWebhookLogs'] as bool? ?? false,
  requestPayloadTemplateId:
      json['requestPayloadTemplateId'] as String? ?? 'default',
  responsePayloadTemplateId:
      json['responsePayloadTemplateId'] as String? ?? 'default',
  customRequestTemplate: json['customRequestTemplate'] as String?,
  customResponseTemplate: json['customResponseTemplate'] as String?,
  maxSessionHistory: (json['maxSessionHistory'] as num?)?.toInt() ?? 10,
  enableTelemetry: json['enableTelemetry'] as bool? ?? false,
);

Map<String, dynamic> _$$AppSettingsModelImplToJson(
  _$AppSettingsModelImpl instance,
) => <String, dynamic>{
  'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
  'language': instance.language,
  'defaultBotId': instance.defaultBotId,
  'showDefaultGreeting': instance.showDefaultGreeting,
  'requestSigningSecret': instance.requestSigningSecret,
  'allowInvalidCerts': instance.allowInvalidCerts,
  'redactPiiInLogs': instance.redactPiiInLogs,
  'enableBiometricLock': instance.enableBiometricLock,
  'playbackSpeed': instance.playbackSpeed,
  'audioDuckingOnCalls': instance.audioDuckingOnCalls,
  'preferEarpiece': instance.preferEarpiece,
  'autoplayReplies': instance.autoplayReplies,
  'verboseLogging': instance.verboseLogging,
  'showWebhookLogs': instance.showWebhookLogs,
  'requestPayloadTemplateId': instance.requestPayloadTemplateId,
  'responsePayloadTemplateId': instance.responsePayloadTemplateId,
  'customRequestTemplate': instance.customRequestTemplate,
  'customResponseTemplate': instance.customResponseTemplate,
  'maxSessionHistory': instance.maxSessionHistory,
  'enableTelemetry': instance.enableTelemetry,
};

const _$ThemeModeEnumMap = {
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
  ThemeMode.system: 'system',
};
