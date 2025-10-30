import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
class SessionModel with _$SessionModel {
  const factory SessionModel({
    required String id,
    required String botId,
    required DateTime startedAt,
    required DateTime lastActiveAt,
    @Default(true) bool isActive,
    @Default({}) Map<String, dynamic> metadata,
    @Default(0) int messageCount,
    String? context,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) =>
      _$SessionModelFromJson(json);
}
