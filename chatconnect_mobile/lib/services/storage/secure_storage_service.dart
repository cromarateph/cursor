import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../../core/constants/app_constants.dart';

class SecureStorageService {
  static final SecureStorageService instance = SecureStorageService._internal();

  late final FlutterSecureStorage _secureStorage;
  late final SharedPreferences _prefs;

  SecureStorageService._internal() {
    _secureStorage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.first_unlock,
      ),
    );
  }

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Secure Storage (for sensitive data)
  Future<void> writeSecure(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<String?> readSecure(String key) async {
    return await _secureStorage.read(key: key);
  }

  Future<void> deleteSecure(String key) async {
    await _secureStorage.delete(key: key);
  }

  Future<void> clearAllSecure() async {
    await _secureStorage.deleteAll();
  }

  // Auth Token Management
  Future<void> saveAuthToken(String token) async {
    await writeSecure(AppConstants.keyAuthToken, token);
  }

  Future<String?> getAuthToken() async {
    return await readSecure(AppConstants.keyAuthToken);
  }

  Future<void> deleteAuthToken() async {
    await deleteSecure(AppConstants.keyAuthToken);
  }

  // User ID Management
  Future<void> saveUserId(String userId) async {
    await writeSecure(AppConstants.keyUserId, userId);
  }

  Future<String?> getUserId() async {
    return await readSecure(AppConstants.keyUserId);
  }

  Future<void> deleteUserId() async {
    await deleteSecure(AppConstants.keyUserId);
  }

  // Request Signing Secret
  Future<void> saveSigningSecret(String secret) async {
    await writeSecure('signing_secret', secret);
  }

  Future<String?> getSigningSecret() async {
    return await readSecure('signing_secret');
  }

  // Regular Storage (for non-sensitive data)
  Future<void> write(String key, String value) async {
    await _prefs.setString(key, value);
  }

  Future<String?> read(String key) async {
    return _prefs.getString(key);
  }

  Future<void> writeBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  Future<bool?> readBool(String key) async {
    return _prefs.getBool(key);
  }

  Future<void> writeInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }

  Future<int?> readInt(String key) async {
    return _prefs.getInt(key);
  }

  Future<void> writeDouble(String key, double value) async {
    await _prefs.setDouble(key, value);
  }

  Future<double?> readDouble(String key) async {
    return _prefs.getDouble(key);
  }

  Future<void> writeJson(String key, Map<String, dynamic> value) async {
    await _prefs.setString(key, jsonEncode(value));
  }

  Future<Map<String, dynamic>?> readJson(String key) async {
    final str = _prefs.getString(key);
    if (str == null) return null;
    try {
      return jsonDecode(str) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }

  Future<void> delete(String key) async {
    await _prefs.remove(key);
  }

  Future<void> clearAll() async {
    await _prefs.clear();
  }

  // App Settings
  Future<void> saveSettings(Map<String, dynamic> settings) async {
    await writeJson(AppConstants.keySettings, settings);
  }

  Future<Map<String, dynamic>?> getSettings() async {
    return await readJson(AppConstants.keySettings);
  }

  // Default Bot
  Future<void> saveDefaultBotId(String botId) async {
    await write(AppConstants.keyDefaultBot, botId);
  }

  Future<String?> getDefaultBotId() async {
    return await read(AppConstants.keyDefaultBot);
  }

  // Clear everything (logout)
  Future<void> clearAllData() async {
    await clearAllSecure();
    await clearAll();
  }
}
