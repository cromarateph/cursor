import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import '../database/database_helper.dart';
import '../models/bot_instance_model.dart';
import '../../core/constants/app_constants.dart';

class BotRepository {
  final DatabaseHelper _db = DatabaseHelper.instance;

  Future<List<BotInstanceModel>> getAllBots() async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableBots,
      orderBy: 'created_at DESC',
    );

    return maps.map((map) => _mapToBotInstance(map)).toList();
  }

  Future<BotInstanceModel?> getBotById(String id) async {
    final database = await _db.database;
    final maps = await database.query(
      AppConstants.tableBots,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isEmpty) return null;
    return _mapToBotInstance(maps.first);
  }

  Future<void> insertBot(BotInstanceModel bot) async {
    final database = await _db.database;
    await database.insert(
      AppConstants.tableBots,
      _botToMap(bot),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> updateBot(BotInstanceModel bot) async {
    final database = await _db.database;
    await database.update(
      AppConstants.tableBots,
      _botToMap(bot),
      where: 'id = ?',
      whereArgs: [bot.id],
    );
  }

  Future<void> deleteBot(String id) async {
    final database = await _db.database;
    await database.delete(
      AppConstants.tableBots,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> getBotCount() async {
    final database = await _db.database;
    final result = await database.rawQuery(
      'SELECT COUNT(*) as count FROM ${AppConstants.tableBots}',
    );
    return result.first['count'] as int;
  }

  Map<String, dynamic> _botToMap(BotInstanceModel bot) {
    return {
      'id': bot.id,
      'name': bot.name,
      'description': bot.description,
      'webhook_url': bot.webhookUrl,
      'http_method': bot.httpMethod,
      'custom_headers': jsonEncode(bot.customHeaders),
      'request_timeout_ms': bot.requestTimeoutMs,
      'retry_policy': jsonEncode(bot.retryPolicy.toJson()),
      'payload_template_id': bot.payloadTemplateId,
      'response_template_id': bot.responseTemplateId,
      'voice_playback_speed': bot.voicePlaybackSpeed,
      'session_ttl': bot.sessionTTL,
      'auto_reset_on_inactivity_ms': bot.autoResetOnInactivityMs,
      'default_greeting': bot.defaultGreeting,
      'created_at': bot.createdAt.millisecondsSinceEpoch,
      'updated_at': bot.updatedAt.millisecondsSinceEpoch,
    };
  }

  BotInstanceModel _mapToBotInstance(Map<String, dynamic> map) {
    return BotInstanceModel(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      webhookUrl: map['webhook_url'] as String,
      httpMethod: map['http_method'] as String,
      customHeaders: Map<String, String>.from(
        jsonDecode(map['custom_headers'] as String),
      ),
      requestTimeoutMs: map['request_timeout_ms'] as int,
      retryPolicy: RetryPolicy.fromJson(
        jsonDecode(map['retry_policy'] as String) as Map<String, dynamic>,
      ),
      payloadTemplateId: map['payload_template_id'] as String,
      responseTemplateId: map['response_template_id'] as String,
      voicePlaybackSpeed: map['voice_playback_speed'] as double,
      sessionTTL: map['session_ttl'] as int,
      autoResetOnInactivityMs: map['auto_reset_on_inactivity_ms'] as int?,
      defaultGreeting: map['default_greeting'] as String?,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updated_at'] as int),
    );
  }
}
