import 'package:freezed_annotation/freezed_annotation.dart';

part 'webhook_request_model.freezed.dart';
part 'webhook_request_model.g.dart';

@freezed
class WebhookRequestModel with _$WebhookRequestModel {
  const factory WebhookRequestModel({
    required AppInfo app,
    required UserInfo user,
    required BotInfo bot,
    required SessionInfo session,
    required MessageInfo message,
    required MetaInfo meta,
  }) = _WebhookRequestModel;

  factory WebhookRequestModel.fromJson(Map<String, dynamic> json) =>
      _$WebhookRequestModelFromJson(json);
}

@freezed
class AppInfo with _$AppInfo {
  const factory AppInfo({
    required String id,
    required String version,
    required String platform,
  }) = _AppInfo;

  factory AppInfo.fromJson(Map<String, dynamic> json) =>
      _$AppInfoFromJson(json);
}

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String id,
    @JsonKey(name: 'display_name') required String displayName,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}

@freezed
class BotInfo with _$BotInfo {
  const factory BotInfo({
    required String id,
    required String name,
  }) = _BotInfo;

  factory BotInfo.fromJson(Map<String, dynamic> json) =>
      _$BotInfoFromJson(json);
}

@freezed
class SessionInfo with _$SessionInfo {
  const factory SessionInfo({
    required String id,
    required int sequence,
    String? context,
    @JsonKey(name: 'ttl_ms') required int ttlMs,
  }) = _SessionInfo;

  factory SessionInfo.fromJson(Map<String, dynamic> json) =>
      _$SessionInfoFromJson(json);
}

@freezed
class MessageInfo with _$MessageInfo {
  const factory MessageInfo({
    required String type,
    required String text,
    @JsonKey(name: 'audio_format') String? audioFormat,
    String? lang,
  }) = _MessageInfo;

  factory MessageInfo.fromJson(Map<String, dynamic> json) =>
      _$MessageInfoFromJson(json);
}

@freezed
class MetaInfo with _$MetaInfo {
  const factory MetaInfo({
    required String timestamp,
    required String timezone,
    @JsonKey(name: 'trace_id') required String traceId,
    @Default({}) Map<String, dynamic> extras,
  }) = _MetaInfo;

  factory MetaInfo.fromJson(Map<String, dynamic> json) =>
      _$MetaInfoFromJson(json);
}
