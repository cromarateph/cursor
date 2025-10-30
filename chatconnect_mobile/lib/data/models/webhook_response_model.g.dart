// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhook_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebhookResponseModelImpl _$$WebhookResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$WebhookResponseModelImpl(
  ok: json['ok'] as bool,
  session: SessionResponse.fromJson(json['session'] as Map<String, dynamic>),
  reply: ReplyResponse.fromJson(json['reply'] as Map<String, dynamic>),
  display: DisplayResponse.fromJson(json['display'] as Map<String, dynamic>),
  errors:
      (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$$WebhookResponseModelImplToJson(
  _$WebhookResponseModelImpl instance,
) => <String, dynamic>{
  'ok': instance.ok,
  'session': instance.session,
  'reply': instance.reply,
  'display': instance.display,
  'errors': instance.errors,
};

_$SessionResponseImpl _$$SessionResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SessionResponseImpl(
  id: json['id'] as String,
  reset: json['reset'] as bool? ?? false,
  endOfConversation: json['end_of_conversation'] as bool? ?? false,
);

Map<String, dynamic> _$$SessionResponseImplToJson(
  _$SessionResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'reset': instance.reset,
  'end_of_conversation': instance.endOfConversation,
};

_$ReplyResponseImpl _$$ReplyResponseImplFromJson(Map<String, dynamic> json) =>
    _$ReplyResponseImpl(
      type: json['type'] as String,
      text: json['text'] as String?,
      audioBase64: json['audio_base64'] as String?,
      mimeType: json['mime_type'] as String?,
      suggestedFollowups:
          (json['suggested_followups'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ReplyResponseImplToJson(_$ReplyResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
      'audio_base64': instance.audioBase64,
      'mime_type': instance.mimeType,
      'suggested_followups': instance.suggestedFollowups,
    };

_$DisplayResponseImpl _$$DisplayResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DisplayResponseImpl(
  messages:
      (json['messages'] as List<dynamic>?)
          ?.map((e) => DisplayMessage.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$DisplayResponseImplToJson(
  _$DisplayResponseImpl instance,
) => <String, dynamic>{'messages': instance.messages};

_$DisplayMessageImpl _$$DisplayMessageImplFromJson(Map<String, dynamic> json) =>
    _$DisplayMessageImpl(
      role: json['role'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$DisplayMessageImplToJson(
  _$DisplayMessageImpl instance,
) => <String, dynamic>{'role': instance.role, 'text': instance.text};
