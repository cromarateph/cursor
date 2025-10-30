import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/app_settings_model.dart';
import '../../services/storage/secure_storage_service.dart';

// Settings Provider
final settingsProvider = StateNotifierProvider<SettingsNotifier, AppSettingsModel>((ref) {
  return SettingsNotifier();
});

class SettingsNotifier extends StateNotifier<AppSettingsModel> {
  final SecureStorageService _storage = SecureStorageService.instance;

  SettingsNotifier() : super(const AppSettingsModel()) {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final settingsJson = await _storage.getSettings();
    if (settingsJson != null) {
      try {
        state = AppSettingsModel.fromJson(settingsJson);
      } catch (e) {
        // If parsing fails, use default settings
        state = const AppSettingsModel();
      }
    }
  }

  Future<void> updateSettings(AppSettingsModel settings) async {
    state = settings;
    await _storage.saveSettings(settings.toJson());
  }

  Future<void> updateThemeMode(ThemeMode mode) async {
    final newSettings = state.copyWith(themeMode: mode);
    await updateSettings(newSettings);
  }

  Future<void> updateLanguage(String language) async {
    final newSettings = state.copyWith(language: language);
    await updateSettings(newSettings);
  }

  Future<void> updateDefaultBotId(String? botId) async {
    final newSettings = state.copyWith(defaultBotId: botId);
    await updateSettings(newSettings);
  }

  Future<void> updatePlaybackSpeed(double speed) async {
    final newSettings = state.copyWith(playbackSpeed: speed);
    await updateSettings(newSettings);
  }

  Future<void> updateRequestSigningSecret(String? secret) async {
    final newSettings = state.copyWith(requestSigningSecret: secret);
    await updateSettings(newSettings);
    if (secret != null) {
      await _storage.saveSigningSecret(secret);
    }
  }

  Future<void> updateVerboseLogging(bool enabled) async {
    final newSettings = state.copyWith(verboseLogging: enabled);
    await updateSettings(newSettings);
  }

  Future<void> updateBiometricLock(bool enabled) async {
    final newSettings = state.copyWith(enableBiometricLock: enabled);
    await updateSettings(newSettings);
  }

  Future<void> resetSettings() async {
    state = const AppSettingsModel();
    await _storage.saveSettings(state.toJson());
  }
}
