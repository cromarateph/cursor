import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

enum MessageDirection { user, bot }

enum MessageStatus { pending, sent, failed, received }

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String id,
    required String sessionId,
    required String botId,
    required MessageDirection direction,
    required String text,
    String? audioPath,
    String? audioBase64,
    String? mimeType,
    required DateTime createdAt,
    required MessageStatus status,
    String? errorMessage,
    Map<String, dynamic>? metadata,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
