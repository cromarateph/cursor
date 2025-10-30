import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/settings_provider.dart';
import '../../data/models/app_settings_model.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          _buildSection(
            context,
            title: 'General',
            children: [
              ListTile(
                title: const Text('Theme'),
                subtitle: Text(_getThemeModeLabel(settings.themeMode)),
                leading: const Icon(Icons.palette_outlined),
                onTap: () => _showThemeDialog(context, ref, settings),
              ),
              ListTile(
                title: const Text('Language'),
                subtitle: Text(settings.language),
                leading: const Icon(Icons.language_outlined),
                onTap: () {},
              ),
            ],
          ),
          _buildSection(
            context,
            title: 'Audio',
            children: [
              ListTile(
                title: const Text('Playback Speed'),
                subtitle: Text('${settings.playbackSpeed}x'),
                leading: const Icon(Icons.speed_outlined),
                trailing: Slider(
                  value: settings.playbackSpeed,
                  min: 0.5,
                  max: 2.0,
                  divisions: 6,
                  label: '${settings.playbackSpeed}x',
                  onChanged: (value) {
                    ref.read(settingsProvider.notifier).updatePlaybackSpeed(value);
                  },
                ),
              ),
              SwitchListTile(
                title: const Text('Autoplay Replies'),
                subtitle: const Text('Automatically play audio responses'),
                secondary: const Icon(Icons.play_circle_outlined),
                value: settings.autoplayReplies,
                onChanged: (value) {
                  ref.read(settingsProvider.notifier).updateSettings(
                        settings.copyWith(autoplayReplies: value),
                      );
                },
              ),
              SwitchListTile(
                title: const Text('Prefer Earpiece'),
                subtitle: const Text('Use earpiece instead of speaker'),
                secondary: const Icon(Icons.phone_outlined),
                value: settings.preferEarpiece,
                onChanged: (value) {
                  ref.read(settingsProvider.notifier).updateSettings(
                        settings.copyWith(preferEarpiece: value),
                      );
                },
              ),
            ],
          ),
          _buildSection(
            context,
            title: 'Security',
            children: [
              SwitchListTile(
                title: const Text('Biometric Lock'),
                subtitle: const Text('Require authentication to open app'),
                secondary: const Icon(Icons.fingerprint_outlined),
                value: settings.enableBiometricLock,
                onChanged: (value) {
                  ref.read(settingsProvider.notifier).updateBiometricLock(value);
                },
              ),
              SwitchListTile(
                title: const Text('Redact PII in Logs'),
                subtitle: const Text('Remove sensitive data from logs'),
                secondary: const Icon(Icons.privacy_tip_outlined),
                value: settings.redactPiiInLogs,
                onChanged: (value) {
                  ref.read(settingsProvider.notifier).updateSettings(
                        settings.copyWith(redactPiiInLogs: value),
                      );
                },
              ),
            ],
          ),
          _buildSection(
            context,
            title: 'Developer',
            children: [
              SwitchListTile(
                title: const Text('Verbose Logging'),
                subtitle: const Text('Enable detailed logging'),
                secondary: const Icon(Icons.bug_report_outlined),
                value: settings.verboseLogging,
                onChanged: (value) {
                  ref.read(settingsProvider.notifier).updateVerboseLogging(value);
                },
              ),
              SwitchListTile(
                title: const Text('Show Webhook Logs'),
                subtitle: const Text('Display webhook call history'),
                secondary: const Icon(Icons.http_outlined),
                value: settings.showWebhookLogs,
                onChanged: (value) {
                  ref.read(settingsProvider.notifier).updateSettings(
                        settings.copyWith(showWebhookLogs: value),
                      );
                },
              ),
            ],
          ),
          _buildSection(
            context,
            title: 'About',
            children: [
              const ListTile(
                title: Text('Version'),
                subtitle: Text('1.0.0+1'),
                leading: Icon(Icons.info_outlined),
              ),
              ListTile(
                title: const Text('Licenses'),
                leading: const Icon(Icons.description_outlined),
                onTap: () {
                  showLicensePage(context: context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        ...children,
      ],
    );
  }

  String _getThemeModeLabel(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.system:
        return 'System Default';
    }
  }

  void _showThemeDialog(BuildContext context, WidgetRef ref, AppSettingsModel settings) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Choose Theme'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<ThemeMode>(
              title: const Text('Light'),
              value: ThemeMode.light,
              groupValue: settings.themeMode,
              onChanged: (value) {
                if (value != null) {
                  ref.read(settingsProvider.notifier).updateThemeMode(value);
                  Navigator.pop(context);
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text('Dark'),
              value: ThemeMode.dark,
              groupValue: settings.themeMode,
              onChanged: (value) {
                if (value != null) {
                  ref.read(settingsProvider.notifier).updateThemeMode(value);
                  Navigator.pop(context);
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text('System Default'),
              value: ThemeMode.system,
              groupValue: settings.themeMode,
              onChanged: (value) {
                if (value != null) {
                  ref.read(settingsProvider.notifier).updateThemeMode(value);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
