import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';
import 'package:logger/logger.dart';

/// Abstract interface for STT providers
abstract class SttProvider {
  Future<bool> initialize();
  Future<bool> requestPermissions();
  Future<void> startListening({
    required Function(String) onResult,
    Function(String)? onPartialResult,
    Function(String)? onError,
    String? localeId,
  });
  Future<void> stopListening();
  Future<void> cancel();
  bool get isAvailable;
  bool get isListening;
  List<String> get supportedLocales;
  Future<void> dispose();
}

/// Native platform STT implementation
class NativeSttProvider implements SttProvider {
  final stt.SpeechToText _speech;
  final Logger _logger;

  bool _isInitialized = false;
  bool _hasPermission = false;

  NativeSttProvider({
    stt.SpeechToText? speech,
    Logger? logger,
  })  : _speech = speech ?? stt.SpeechToText(),
        _logger = logger ?? Logger();

  @override
  Future<bool> initialize() async {
    if (_isInitialized) return true;

    try {
      _isInitialized = await _speech.initialize(
        onError: (error) {
          _logger.e('STT Error: ${error.errorMsg}');
        },
        onStatus: (status) {
          _logger.d('STT Status: $status');
        },
      );

      if (_isInitialized) {
        _logger.i('STT initialized successfully');
      } else {
        _logger.e('Failed to initialize STT');
      }

      return _isInitialized;
    } catch (e) {
      _logger.e('STT initialization error: $e');
      return false;
    }
  }

  @override
  Future<bool> requestPermissions() async {
    try {
      final status = await Permission.microphone.request();
      _hasPermission = status.isGranted;

      if (!_hasPermission) {
        _logger.w('Microphone permission denied');
      }

      return _hasPermission;
    } catch (e) {
      _logger.e('Permission request error: $e');
      return false;
    }
  }

  @override
  Future<void> startListening({
    required Function(String) onResult,
    Function(String)? onPartialResult,
    Function(String)? onError,
    String? localeId,
  }) async {
    if (!_isInitialized) {
      await initialize();
    }

    if (!_hasPermission) {
      final hasPermission = await requestPermissions();
      if (!hasPermission) {
        onError?.call('Microphone permission not granted');
        return;
      }
    }

    if (!_speech.isAvailable) {
      onError?.call('Speech recognition not available');
      return;
    }

    try {
      await _speech.listen(
        onResult: (result) {
          if (result.finalResult) {
            onResult(result.recognizedWords);
          } else {
            onPartialResult?.call(result.recognizedWords);
          }
        },
        localeId: localeId,
        listenMode: stt.ListenMode.confirmation,
        cancelOnError: true,
        partialResults: onPartialResult != null,
      );

      _logger.d('Started listening with locale: ${localeId ?? "default"}');
    } catch (e) {
      _logger.e('Failed to start listening: $e');
      onError?.call(e.toString());
    }
  }

  @override
  Future<void> stopListening() async {
    try {
      await _speech.stop();
      _logger.d('Stopped listening');
    } catch (e) {
      _logger.e('Failed to stop listening: $e');
    }
  }

  @override
  Future<void> cancel() async {
    try {
      await _speech.cancel();
      _logger.d('Cancelled listening');
    } catch (e) {
      _logger.e('Failed to cancel listening: $e');
    }
  }

  @override
  bool get isAvailable => _speech.isAvailable;

  @override
  bool get isListening => _speech.isListening;

  @override
  List<String> get supportedLocales {
    return _speech.locales().map((locale) => locale.localeId).toList();
  }

  @override
  Future<void> dispose() async {
    if (isListening) {
      await stopListening();
    }
  }
}

/// Mock STT provider for testing and simulator
class MockSttProvider implements SttProvider {
  final Logger _logger;
  bool _isListening = false;
  final List<String> _mockResponses = [
    'Hello, how are you?',
    'What is the weather like today?',
    'Tell me a joke',
    'Can you help me with something?',
  ];
  int _responseIndex = 0;

  MockSttProvider({Logger? logger}) : _logger = logger ?? Logger();

  @override
  Future<bool> initialize() async {
    _logger.i('Mock STT initialized');
    return true;
  }

  @override
  Future<bool> requestPermissions() async {
    _logger.i('Mock STT permissions granted');
    return true;
  }

  @override
  Future<void> startListening({
    required Function(String) onResult,
    Function(String)? onPartialResult,
    Function(String)? onError,
    String? localeId,
  }) async {
    _isListening = true;
    _logger.d('Mock STT started listening');

    // Simulate partial results
    await Future.delayed(const Duration(milliseconds: 500));
    if (_isListening) onPartialResult?.call('Hello');

    await Future.delayed(const Duration(milliseconds: 500));
    if (_isListening) onPartialResult?.call('Hello, how');

    await Future.delayed(const Duration(milliseconds: 500));
    if (_isListening) {
      final response = _mockResponses[_responseIndex % _mockResponses.length];
      _responseIndex++;
      onResult(response);
    }
  }

  @override
  Future<void> stopListening() async {
    _isListening = false;
    _logger.d('Mock STT stopped listening');
  }

  @override
  Future<void> cancel() async {
    _isListening = false;
    _logger.d('Mock STT cancelled');
  }

  @override
  bool get isAvailable => true;

  @override
  bool get isListening => _isListening;

  @override
  List<String> get supportedLocales => ['en-US', 'en-GB', 'es-ES', 'fr-FR'];

  @override
  Future<void> dispose() async {
    _isListening = false;
  }
}

/// Main STT service that uses the configured provider
class SttService {
  final SttProvider _provider;
  final Logger _logger;

  SttService({
    SttProvider? provider,
    Logger? logger,
    bool useMock = false,
  })  : _provider = provider ?? (useMock ? MockSttProvider() : NativeSttProvider()),
        _logger = logger ?? Logger();

  Future<bool> initialize() => _provider.initialize();

  Future<bool> requestPermissions() => _provider.requestPermissions();

  Future<void> startListening({
    required Function(String) onResult,
    Function(String)? onPartialResult,
    Function(String)? onError,
    String? localeId,
  }) =>
      _provider.startListening(
        onResult: onResult,
        onPartialResult: onPartialResult,
        onError: onError,
        localeId: localeId,
      );

  Future<void> stopListening() => _provider.stopListening();

  Future<void> cancel() => _provider.cancel();

  bool get isAvailable => _provider.isAvailable;

  bool get isListening => _provider.isListening;

  List<String> get supportedLocales => _provider.supportedLocales;

  Future<void> dispose() => _provider.dispose();
}
