import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../../core/constants/app_constants.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._internal();
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, AppConstants.dbName);

    return await openDatabase(
      path,
      version: AppConstants.dbVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // Users table
    await db.execute('''
      CREATE TABLE ${AppConstants.tableUsers} (
        id TEXT PRIMARY KEY,
        email TEXT NOT NULL UNIQUE,
        display_name TEXT NOT NULL,
        avatar_url TEXT,
        created_at INTEGER NOT NULL,
        updated_at INTEGER NOT NULL
      )
    ''');

    // Bot Instances table
    await db.execute('''
      CREATE TABLE ${AppConstants.tableBots} (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        description TEXT NOT NULL,
        webhook_url TEXT NOT NULL,
        http_method TEXT NOT NULL DEFAULT 'POST',
        custom_headers TEXT NOT NULL DEFAULT '{}',
        request_timeout_ms INTEGER NOT NULL DEFAULT 30000,
        retry_policy TEXT NOT NULL,
        payload_template_id TEXT NOT NULL,
        response_template_id TEXT NOT NULL,
        voice_playback_speed REAL NOT NULL DEFAULT 1.0,
        session_ttl INTEGER NOT NULL DEFAULT 3600000,
        auto_reset_on_inactivity_ms INTEGER,
        default_greeting TEXT,
        created_at INTEGER NOT NULL,
        updated_at INTEGER NOT NULL
      )
    ''');

    // Sessions table
    await db.execute('''
      CREATE TABLE ${AppConstants.tableSessions} (
        id TEXT PRIMARY KEY,
        bot_id TEXT NOT NULL,
        started_at INTEGER NOT NULL,
        last_active_at INTEGER NOT NULL,
        is_active INTEGER NOT NULL DEFAULT 1,
        metadata TEXT NOT NULL DEFAULT '{}',
        message_count INTEGER NOT NULL DEFAULT 0,
        context TEXT,
        FOREIGN KEY (bot_id) REFERENCES ${AppConstants.tableBots} (id) ON DELETE CASCADE
      )
    ''');

    // Messages table
    await db.execute('''
      CREATE TABLE ${AppConstants.tableMessages} (
        id TEXT PRIMARY KEY,
        session_id TEXT NOT NULL,
        bot_id TEXT NOT NULL,
        direction TEXT NOT NULL,
        text TEXT NOT NULL,
        audio_path TEXT,
        audio_base64 TEXT,
        mime_type TEXT,
        created_at INTEGER NOT NULL,
        status TEXT NOT NULL,
        error_message TEXT,
        metadata TEXT DEFAULT '{}',
        FOREIGN KEY (session_id) REFERENCES ${AppConstants.tableSessions} (id) ON DELETE CASCADE,
        FOREIGN KEY (bot_id) REFERENCES ${AppConstants.tableBots} (id) ON DELETE CASCADE
      )
    ''');

    // Webhook Logs table (for debugging)
    await db.execute('''
      CREATE TABLE ${AppConstants.tableWebhookLogs} (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        bot_id TEXT NOT NULL,
        request_url TEXT NOT NULL,
        request_method TEXT NOT NULL,
        request_headers TEXT,
        request_body TEXT,
        response_status INTEGER,
        response_headers TEXT,
        response_body TEXT,
        error TEXT,
        duration_ms INTEGER,
        created_at INTEGER NOT NULL,
        FOREIGN KEY (bot_id) REFERENCES ${AppConstants.tableBots} (id) ON DELETE CASCADE
      )
    ''');

    // Create indexes for better performance
    await db.execute(
      'CREATE INDEX idx_messages_session ON ${AppConstants.tableMessages}(session_id)',
    );
    await db.execute(
      'CREATE INDEX idx_messages_created ON ${AppConstants.tableMessages}(created_at)',
    );
    await db.execute(
      'CREATE INDEX idx_sessions_bot ON ${AppConstants.tableSessions}(bot_id)',
    );
    await db.execute(
      'CREATE INDEX idx_sessions_active ON ${AppConstants.tableSessions}(is_active)',
    );
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    // Handle database migrations here
    // Example:
    // if (oldVersion < 2) {
    //   await db.execute('ALTER TABLE ...');
    // }
  }

  Future<void> close() async {
    final db = await database;
    await db.close();
    _database = null;
  }

  Future<void> deleteDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, AppConstants.dbName);
    await databaseFactory.deleteDatabase(path);
    _database = null;
  }
}
