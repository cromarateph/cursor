import 'package:freezed_annotation/freezed_annotation.dart';

part 'webhook_response_model.freezed.dart';
part 'webhook_response_model.g.dart';

@freezed
class WebhookResponseModel with _$WebhookResponseModel {
  const factory WebhookResponseModel({
    required bool ok,
    required SessionResponse session,
    required ReplyResponse reply,
    required DisplayResponse display,
    @Default([]) List<String> errors,
  }) = _WebhookResponseModel;

  factory WebhookResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WebhookResponseModelFromJson(json);
}

@freezed
class SessionResponse with _$SessionResponse {
  const factory SessionResponse({
    required String id,
    @Default(false) bool reset,
    @JsonKey(name: 'end_of_conversation') @Default(false) bool endOfConversation,
  }) = _SessionResponse;

  factory SessionResponse.fromJson(Map<String, dynamic> json) =>
      _$SessionResponseFromJson(json);
}

@freezed
class ReplyResponse with _$ReplyResponse {
  const factory ReplyResponse({
    required String type,
    String? text,
    @JsonKey(name: 'audio_base64') String? audioBase64,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'suggested_followups') @Default([]) List<String> suggestedFollowups,
  }) = _ReplyResponse;

  factory ReplyResponse.fromJson(Map<String, dynamic> json) =>
      _$ReplyResponseFromJson(json);
}

@freezed
class DisplayResponse with _$DisplayResponse {
  const factory DisplayResponse({
    @Default([]) List<DisplayMessage> messages,
  }) = _DisplayResponse;

  factory DisplayResponse.fromJson(Map<String, dynamic> json) =>
      _$DisplayResponseFromJson(json);
}

@freezed
class DisplayMessage with _$DisplayMessage {
  const factory DisplayMessage({
    required String role,
    required String text,
  }) = _DisplayMessage;

  factory DisplayMessage.fromJson(Map<String, dynamic> json) =>
      _$DisplayMessageFromJson(json);
}
