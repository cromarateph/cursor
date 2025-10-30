import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/bot_instance_model.dart';
import '../providers/bot_provider.dart';

class BotDetailScreen extends ConsumerWidget {
  final BotInstanceModel bot;

  const BotDetailScreen({
    super.key,
    required this.bot,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bot.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat),
            onPressed: () {
              ref.read(selectedBotProvider.notifier).state = bot;
              Navigator.pop(context);
              // Navigate to chat tab (would need to implement tab controller)
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSection(
            context,
            title: 'Basic Information',
            children: [
              _buildInfoTile('Name', bot.name),
              _buildInfoTile('Description', bot.description),
              _buildInfoTile('Webhook URL', bot.webhookUrl),
              _buildInfoTile('HTTP Method', bot.httpMethod),
            ],
          ),
          _buildSection(
            context,
            title: 'Configuration',
            children: [
              _buildInfoTile('Request Timeout', '${bot.requestTimeoutMs}ms'),
              _buildInfoTile('Playback Speed', '${bot.voicePlaybackSpeed}x'),
              _buildInfoTile('Session TTL', '${bot.sessionTTL}ms'),
              if (bot.autoResetOnInactivityMs != null)
                _buildInfoTile(
                  'Auto Reset Inactivity',
                  '${bot.autoResetOnInactivityMs}ms',
                ),
              if (bot.defaultGreeting != null)
                _buildInfoTile('Default Greeting', bot.defaultGreeting!),
            ],
          ),
          _buildSection(
            context,
            title: 'Retry Policy',
            children: [
              _buildInfoTile(
                'Enabled',
                bot.retryPolicy.enabled ? 'Yes' : 'No',
              ),
              _buildInfoTile(
                'Max Attempts',
                bot.retryPolicy.maxAttempts.toString(),
              ),
              _buildInfoTile(
                'Backoff Delays',
                bot.retryPolicy.backoffDelaysMs.join(', ') + 'ms',
              ),
            ],
          ),
          if (bot.customHeaders.isNotEmpty)
            _buildSection(
              context,
              title: 'Custom Headers',
              children: bot.customHeaders.entries
                  .map((e) => _buildInfoTile(e.key, e.value))
                  .toList(),
            ),
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: () {
              ref.read(selectedBotProvider.notifier).state = bot;
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chat),
            label: const Text('Start Chat'),
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
          padding: const EdgeInsets.fromLTRB(0, 24, 0, 12),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: children,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoTile(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
