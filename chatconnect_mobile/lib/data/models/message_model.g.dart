// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: json['id'] as String,
      sessionId: json['sessionId'] as String,
      botId: json['botId'] as String,
      direction: $enumDecode(_$MessageDirectionEnumMap, json['direction']),
      text: json['text'] as String,
      audioPath: json['audioPath'] as String?,
      audioBase64: json['audioBase64'] as String?,
      mimeType: json['mimeType'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: $enumDecode(_$MessageStatusEnumMap, json['status']),
      errorMessage: json['errorMessage'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionId': instance.sessionId,
      'botId': instance.botId,
      'direction': _$MessageDirectionEnumMap[instance.direction]!,
      'text': instance.text,
      'audioPath': instance.audioPath,
      'audioBase64': instance.audioBase64,
      'mimeType': instance.mimeType,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': _$MessageStatusEnumMap[instance.status]!,
      'errorMessage': instance.errorMessage,
      'metadata': instance.metadata,
    };

const _$MessageDirectionEnumMap = {
  MessageDirection.user: 'user',
  MessageDirection.bot: 'bot',
};

const _$MessageStatusEnumMap = {
  MessageStatus.pending: 'pending',
  MessageStatus.sent: 'sent',
  MessageStatus.failed: 'failed',
  MessageStatus.received: 'received',
};
