import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/bot_instance_model.dart';
import '../../data/repositories/bot_repository.dart';

// Bot Repository Provider
final botRepositoryProvider = Provider<BotRepository>((ref) {
  return BotRepository();
});

// Bot List Provider
final botListProvider = StateNotifierProvider<BotListNotifier, AsyncValue<List<BotInstanceModel>>>((ref) {
  return BotListNotifier(ref.read(botRepositoryProvider));
});

class BotListNotifier extends StateNotifier<AsyncValue<List<BotInstanceModel>>> {
  final BotRepository _repository;

  BotListNotifier(this._repository) : super(const AsyncValue.loading()) {
    loadBots();
  }

  Future<void> loadBots() async {
    state = const AsyncValue.loading();
    try {
      final bots = await _repository.getAllBots();
      state = AsyncValue.data(bots);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  Future<void> addBot(BotInstanceModel bot) async {
    try {
      await _repository.insertBot(bot);
      await loadBots();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateBot(BotInstanceModel bot) async {
    try {
      await _repository.updateBot(bot);
      await loadBots();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteBot(String id) async {
    try {
      await _repository.deleteBot(id);
      await loadBots();
    } catch (e) {
      rethrow;
    }
  }
}

// Selected Bot Provider
final selectedBotProvider = StateProvider<BotInstanceModel?>((ref) => null);

// Default Bot Provider
final defaultBotIdProvider = StateProvider<String?>((ref) => null);
