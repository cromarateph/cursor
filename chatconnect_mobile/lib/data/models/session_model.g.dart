// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionModelImpl _$$SessionModelImplFromJson(Map<String, dynamic> json) =>
    _$SessionModelImpl(
      id: json['id'] as String,
      botId: json['botId'] as String,
      startedAt: DateTime.parse(json['startedAt'] as String),
      lastActiveAt: DateTime.parse(json['lastActiveAt'] as String),
      isActive: json['isActive'] as bool? ?? true,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      messageCount: (json['messageCount'] as num?)?.toInt() ?? 0,
      context: json['context'] as String?,
    );

Map<String, dynamic> _$$SessionModelImplToJson(_$SessionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'botId': instance.botId,
      'startedAt': instance.startedAt.toIso8601String(),
      'lastActiveAt': instance.lastActiveAt.toIso8601String(),
      'isActive': instance.isActive,
      'metadata': instance.metadata,
      'messageCount': instance.messageCount,
      'context': instance.context,
    };
