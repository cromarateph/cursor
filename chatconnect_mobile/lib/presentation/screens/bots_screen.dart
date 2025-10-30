import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../providers/bot_provider.dart';
import '../../data/models/bot_instance_model.dart';
import 'bot_detail_screen.dart';

class BotsScreen extends ConsumerWidget {
  const BotsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final botsAsync = ref.watch(botListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bot Instances'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showAddBotDialog(context, ref),
          ),
        ],
      ),
      body: botsAsync.when(
        data: (bots) {
          if (bots.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.smart_toy_outlined,
                    size: 80,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No bots yet',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  const Text('Create your first bot to get started'),
                  const SizedBox(height: 24),
                  FilledButton.icon(
                    onPressed: () => _showAddBotDialog(context, ref),
                    icon: const Icon(Icons.add),
                    label: const Text('Create Bot'),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: bots.length,
            itemBuilder: (context, index) {
              final bot = bots[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(bot.name[0].toUpperCase()),
                  ),
                  title: Text(bot.name),
                  subtitle: Text(
                    bot.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _deleteBot(context, ref, bot.id),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BotDetailScreen(bot: bot),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
      ),
    );
  }

  void _showAddBotDialog(BuildContext context, WidgetRef ref) {
    final nameController = TextEditingController();
    final descController = TextEditingController();
    final urlController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create Bot Instance'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Bot Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: descController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: urlController,
                decoration: const InputDecoration(
                  labelText: 'Webhook URL',
                  border: OutlineInputBorder(),
                  hintText: 'https://your-n8n-instance.com/webhook',
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              if (nameController.text.isEmpty ||
                  urlController.text.isEmpty) {
                return;
              }

              final bot = BotInstanceModel(
                id: const Uuid().v4(),
                name: nameController.text,
                description: descController.text.isEmpty
                    ? 'A chatbot instance'
                    : descController.text,
                webhookUrl: urlController.text,
                retryPolicy: const RetryPolicy(),
                payloadTemplateId: 'default',
                responseTemplateId: 'default',
                createdAt: DateTime.now(),
                updatedAt: DateTime.now(),
              );

              ref.read(botListProvider.notifier).addBot(bot);
              Navigator.pop(context);
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }

  void _deleteBot(BuildContext context, WidgetRef ref, String botId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Bot'),
        content: const Text('Are you sure you want to delete this bot?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              ref.read(botListProvider.notifier).deleteBot(botId);
              Navigator.pop(context);
            },
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
