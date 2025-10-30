import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import '../database/database_helper.dart';
import '../models/message_model.dart';
import '../../core/constants/app_constants.dart';

class MessageRepository {
  final DatabaseHelper _db = DatabaseHelper.instance;

  Future<List<MessageModel>> getMessagesBySessionId(
    String sessionId, {
    int? limit,
    int? offset,
  }) async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableMessages,
      where: 'session_id = ?',
      whereArgs: [sessionId],
      orderBy: 'created_at ASC',
      limit: limit,
      offset: offset,
    );

    return maps.map((map) => _mapToMessage(map)).toList();
  }

  Future<List<MessageModel>> getPendingMessages() async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableMessages,
      where: 'status = ? OR status = ?',
      whereArgs: ['pending', 'failed'],
      orderBy: 'created_at ASC',
    );

    return maps.map((map) => _mapToMessage(map)).toList();
  }

  Future<MessageModel?> getMessageById(String id) async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableMessages,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isEmpty) return null;
    return _mapToMessage(maps.first);
  }

  Future<MessageModel?> getLastMessage(String sessionId) async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableMessages,
      where: 'session_id = ?',
      whereArgs: [sessionId],
      orderBy: 'created_at DESC',
      limit: 1,
    );

    if (maps.isEmpty) return null;
    return _mapToMessage(maps.first);
  }

  Future<int> getMessageCount(String sessionId) async {
    final database = await _db.database;
    final result = await database.rawQuery(
      'SELECT COUNT(*) as count FROM ${AppConstants.tableMessages} WHERE session_id = ?',
      [sessionId],
    );
    return result.first['count'] as int;
  }

  Future<void> insertMessage(MessageModel message) async {
    final database = await _db.database;
    await database.insert(
      AppConstants.tableMessages,
      _messageToMap(message),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> updateMessage(MessageModel message) async {
    final database = await _db.database;
    await database.update(
      AppConstants.tableMessages,
      _messageToMap(message),
      where: 'id = ?',
      whereArgs: [message.id],
    );
  }

  Future<void> updateMessageStatus(
    String messageId,
    MessageStatus status, {
    String? errorMessage,
  }) async {
    final database = await _db.database;
    final Map<String, dynamic> updates = {
      'status': status.name,
    };

    if (errorMessage != null) {
      updates['error_message'] = errorMessage;
    }

    await database.update(
      AppConstants.tableMessages,
      updates,
      where: 'id = ?',
      whereArgs: [messageId],
    );
  }

  Future<void> deleteMessage(String id) async {
    final database = await _db.database;
    await database.delete(
      AppConstants.tableMessages,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteMessagesBySessionId(String sessionId) async {
    final database = await _db.database;
    await database.delete(
      AppConstants.tableMessages,
      where: 'session_id = ?',
      whereArgs: [sessionId],
    );
  }

  Future<void> deleteOldMessages({required int keepCount}) async {
    final database = await _db.database;
    await database.execute('''
      DELETE FROM ${AppConstants.tableMessages}
      WHERE id NOT IN (
        SELECT id FROM ${AppConstants.tableMessages}
        ORDER BY created_at DESC
        LIMIT $keepCount
      )
    ''');
  }

  Map<String, dynamic> _messageToMap(MessageModel message) {
    return {
      'id': message.id,
      'session_id': message.sessionId,
      'bot_id': message.botId,
      'direction': message.direction.name,
      'text': message.text,
      'audio_path': message.audioPath,
      'audio_base64': message.audioBase64,
      'mime_type': message.mimeType,
      'created_at': message.createdAt.millisecondsSinceEpoch,
      'status': message.status.name,
      'error_message': message.errorMessage,
      'metadata': message.metadata != null ? jsonEncode(message.metadata) : '{}',
    };
  }

  MessageModel _mapToMessage(Map<String, dynamic> map) {
    return MessageModel(
      id: map['id'] as String,
      sessionId: map['session_id'] as String,
      botId: map['bot_id'] as String,
      direction: MessageDirection.values.firstWhere(
        (e) => e.name == map['direction'],
      ),
      text: map['text'] as String,
      audioPath: map['audio_path'] as String?,
      audioBase64: map['audio_base64'] as String?,
      mimeType: map['mime_type'] as String?,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at'] as int),
      status: MessageStatus.values.firstWhere(
        (e) => e.name == map['status'],
      ),
      errorMessage: map['error_message'] as String?,
      metadata: map['metadata'] != null
          ? jsonDecode(map['metadata'] as String) as Map<String, dynamic>
          : null,
    );
  }
}
