import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import '../database/database_helper.dart';
import '../models/session_model.dart';
import '../../core/constants/app_constants.dart';

class SessionRepository {
  final DatabaseHelper _db = DatabaseHelper.instance;

  Future<List<SessionModel>> getAllSessions({int? limit}) async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableSessions,
      orderBy: 'last_active_at DESC',
      limit: limit,
    );

    return maps.map((map) => _mapToSession(map)).toList();
  }

  Future<List<SessionModel>> getActiveSessions() async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableSessions,
      where: 'is_active = ?',
      whereArgs: [1],
      orderBy: 'last_active_at DESC',
    );

    return maps.map((map) => _mapToSession(map)).toList();
  }

  Future<List<SessionModel>> getSessionsByBotId(String botId) async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableSessions,
      where: 'bot_id = ?',
      whereArgs: [botId],
      orderBy: 'last_active_at DESC',
    );

    return maps.map((map) => _mapToSession(map)).toList();
  }

  Future<SessionModel?> getSessionById(String id) async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableSessions,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isEmpty) return null;
    return _mapToSession(maps.first);
  }

  Future<SessionModel?> getLatestActiveSession(String botId) async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableSessions,
      where: 'bot_id = ? AND is_active = ?',
      whereArgs: [botId, 1],
      orderBy: 'last_active_at DESC',
      limit: 1,
    );

    if (maps.isEmpty) return null;
    return _mapToSession(maps.first);
  }

  Future<void> insertSession(SessionModel session) async {
    final database = await _db.database;
    await database.insert(
      AppConstants.tableSessions,
      _sessionToMap(session),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> updateSession(SessionModel session) async {
    final database = await _db.database;
    await database.update(
      AppConstants.tableSessions,
      _sessionToMap(session),
      where: 'id = ?',
      whereArgs: [session.id],
    );
  }

  Future<void> updateLastActive(String sessionId) async {
    final database = await _db.database;
    await database.update(
      AppConstants.tableSessions,
      {'last_active_at': DateTime.now().millisecondsSinceEpoch},
      where: 'id = ?',
      whereArgs: [sessionId],
    );
  }

  Future<void> deactivateSession(String sessionId) async {
    final database = await _db.database;
    await database.update(
      AppConstants.tableSessions,
      {'is_active': 0},
      where: 'id = ?',
      whereArgs: [sessionId],
    );
  }

  Future<void> deactivateAllSessions() async {
    final database = await _db.database;
    await database.update(
      AppConstants.tableSessions,
      {'is_active': 0},
    );
  }

  Future<void> deleteSession(String id) async {
    final database = await _db.database;
    await database.delete(
      AppConstants.tableSessions,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteOldSessions({int keepCount = 10}) async {
    final database = await _db.database;
    await database.execute('''
      DELETE FROM ${AppConstants.tableSessions}
      WHERE id NOT IN (
        SELECT id FROM ${AppConstants.tableSessions}
        ORDER BY last_active_at DESC
        LIMIT $keepCount
      )
    ''');
  }

  Future<int> incrementMessageCount(String sessionId) async {
    final database = await _db.database;
    final session = await getSessionById(sessionId);
    if (session == null) return 0;

    final newCount = session.messageCount + 1;
    await database.update(
      AppConstants.tableSessions,
      {'message_count': newCount},
      where: 'id = ?',
      whereArgs: [sessionId],
    );
    return newCount;
  }

  Map<String, dynamic> _sessionToMap(SessionModel session) {
    return {
      'id': session.id,
      'bot_id': session.botId,
      'started_at': session.startedAt.millisecondsSinceEpoch,
      'last_active_at': session.lastActiveAt.millisecondsSinceEpoch,
      'is_active': session.isActive ? 1 : 0,
      'metadata': jsonEncode(session.metadata),
      'message_count': session.messageCount,
      'context': session.context,
    };
  }

  SessionModel _mapToSession(Map<String, dynamic> map) {
    return SessionModel(
      id: map['id'] as String,
      botId: map['bot_id'] as String,
      startedAt: DateTime.fromMillisecondsSinceEpoch(map['started_at'] as int),
      lastActiveAt: DateTime.fromMillisecondsSinceEpoch(map['last_active_at'] as int),
      isActive: (map['is_active'] as int) == 1,
      metadata: jsonDecode(map['metadata'] as String) as Map<String, dynamic>,
      messageCount: map['message_count'] as int,
      context: map['context'] as String?,
    );
  }
}
