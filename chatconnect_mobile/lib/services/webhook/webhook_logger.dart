import 'dart:convert';
import '../../data/database/database_helper.dart';
import '../../core/constants/app_constants.dart';

class WebhookLogger {
  final DatabaseHelper _db = DatabaseHelper.instance;

  Future<void> logRequest({
    required String botId,
    required String requestUrl,
    required String requestMethod,
    required Map<String, String> requestHeaders,
    required String requestBody,
    int? responseStatus,
    Map<String, dynamic>? responseHeaders,
    String? responseBody,
    String? error,
    required int durationMs,
  }) async {
    final database = await _db.database;

    await database.insert(
      AppConstants.tableWebhookLogs,
      {
        'bot_id': botId,
        'request_url': requestUrl,
        'request_method': requestMethod,
        'request_headers': jsonEncode(requestHeaders),
        'request_body': requestBody,
        'response_status': responseStatus,
        'response_headers': responseHeaders != null ? jsonEncode(responseHeaders) : null,
        'response_body': responseBody,
        'error': error,
        'duration_ms': durationMs,
        'created_at': DateTime.now().millisecondsSinceEpoch,
      },
    );

    // Keep only last N logs
    await _cleanupOldLogs();
  }

  Future<List<Map<String, dynamic>>> getRecentLogs({int limit = 50}) async {
    final database = await _db.database;

    return await database.query(
      AppConstants.tableWebhookLogs,
      orderBy: 'created_at DESC',
      limit: limit,
    );
  }

  Future<List<Map<String, dynamic>>> getLogsByBotId(String botId, {int limit = 50}) async {
    final database = await _db.database;

    return await database.query(
      AppConstants.tableWebhookLogs,
      where: 'bot_id = ?',
      whereArgs: [botId],
      orderBy: 'created_at DESC',
      limit: limit,
    );
  }

  Future<void> clearLogs() async {
    final database = await _db.database;
    await database.delete(AppConstants.tableWebhookLogs);
  }

  Future<void> _cleanupOldLogs() async {
    final database = await _db.database;

    // Get count of logs
    final countResult = await database.rawQuery(
      'SELECT COUNT(*) as count FROM ${AppConstants.tableWebhookLogs}',
    );
    final count = countResult.first['count'] as int;

    // If we have more than max logs, delete oldest ones
    if (count > AppConstants.maxWebhookLogs) {
      await database.execute('''
        DELETE FROM ${AppConstants.tableWebhookLogs}
        WHERE id NOT IN (
          SELECT id FROM ${AppConstants.tableWebhookLogs}
          ORDER BY created_at DESC
          LIMIT ${AppConstants.maxWebhookLogs}
        )
      ''');
    }
  }

  Future<String> exportLogsAsJson() async {
    final logs = await getRecentLogs(limit: AppConstants.maxWebhookLogs);
    return jsonEncode(logs);
  }
}
