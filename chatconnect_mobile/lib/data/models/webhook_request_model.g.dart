// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebhookRequestModelImpl _$$WebhookRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$WebhookRequestModelImpl(
  app: AppInfo.fromJson(json['app'] as Map<String, dynamic>),
  user: UserInfo.fromJson(json['user'] as Map<String, dynamic>),
  bot: BotInfo.fromJson(json['bot'] as Map<String, dynamic>),
  session: SessionInfo.fromJson(json['session'] as Map<String, dynamic>),
  message: MessageInfo.fromJson(json['message'] as Map<String, dynamic>),
  meta: MetaInfo.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$WebhookRequestModelImplToJson(
  _$WebhookRequestModelImpl instance,
) => <String, dynamic>{
  'app': instance.app,
  'user': instance.user,
  'bot': instance.bot,
  'session': instance.session,
  'message': instance.message,
  'meta': instance.meta,
};

_$AppInfoImpl _$$AppInfoImplFromJson(Map<String, dynamic> json) =>
    _$AppInfoImpl(
      id: json['id'] as String,
      version: json['version'] as String,
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$$AppInfoImplToJson(_$AppInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'version': instance.version,
      'platform': instance.platform,
    };

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      id: json['id'] as String,
      displayName: json['display_name'] as String,
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{'id': instance.id, 'display_name': instance.displayName};

_$BotInfoImpl _$$BotInfoImplFromJson(Map<String, dynamic> json) =>
    _$BotInfoImpl(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$$BotInfoImplToJson(_$BotInfoImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_$SessionInfoImpl _$$SessionInfoImplFromJson(Map<String, dynamic> json) =>
    _$SessionInfoImpl(
      id: json['id'] as String,
      sequence: (json['sequence'] as num).toInt(),
      context: json['context'] as String?,
      ttlMs: (json['ttl_ms'] as num).toInt(),
    );

Map<String, dynamic> _$$SessionInfoImplToJson(_$SessionInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sequence': instance.sequence,
      'context': instance.context,
      'ttl_ms': instance.ttlMs,
    };

_$MessageInfoImpl _$$MessageInfoImplFromJson(Map<String, dynamic> json) =>
    _$MessageInfoImpl(
      type: json['type'] as String,
      text: json['text'] as String,
      audioFormat: json['audio_format'] as String?,
      lang: json['lang'] as String?,
    );

Map<String, dynamic> _$$MessageInfoImplToJson(_$MessageInfoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'audio_format': instance.audioFormat,
      'lang': instance.lang,
    };

_$MetaInfoImpl _$$MetaInfoImplFromJson(Map<String, dynamic> json) =>
    _$MetaInfoImpl(
      timestamp: json['timestamp'] as String,
      timezone: json['timezone'] as String,
      traceId: json['trace_id'] as String,
      extras: json['extras'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$MetaInfoImplToJson(_$MetaInfoImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'timezone': instance.timezone,
      'trace_id': instance.traceId,
      'extras': instance.extras,
    };
