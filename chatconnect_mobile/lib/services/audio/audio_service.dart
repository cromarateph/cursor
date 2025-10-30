import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import 'package:path_provider/path_provider.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart' as path;

class AudioService {
  final AudioPlayer _player;
  final Logger _logger;

  bool _isInitialized = false;
  String? _currentAudioPath;

  AudioService({
    AudioPlayer? player,
    Logger? logger,
  })  : _player = player ?? AudioPlayer(),
        _logger = logger ?? Logger();

  /// Initialize audio session with proper configuration
  Future<void> initialize({
    bool preferEarpiece = false,
    bool enableDucking = true,
  }) async {
    if (_isInitialized) return;

    try {
      final session = await AudioSession.instance;
      await session.configure(AudioSessionConfiguration(
        avAudioSessionCategory: preferEarpiece
            ? AVAudioSessionCategory.playAndRecord
            : AVAudioSessionCategory.playback,
        avAudioSessionCategoryOptions: AVAudioSessionCategoryOptions.duckOthers,
        avAudioSessionMode: AVAudioSessionMode.spokenAudio,
        avAudioSessionRouteSharingPolicy: AVAudioSessionRouteSharingPolicy.defaultPolicy,
        avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
        androidAudioAttributes: const AndroidAudioAttributes(
          contentType: AndroidAudioContentType.speech,
          flags: AndroidAudioFlags.none,
          usage: AndroidAudioUsage.media,
        ),
        androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
        androidWillPauseWhenDucked: true,
      ));

      _isInitialized = true;
      _logger.d('Audio service initialized');
    } catch (e) {
      _logger.e('Failed to initialize audio service: $e');
      throw AudioException('Failed to initialize audio service: $e');
    }
  }

  /// Decode base64 audio and save to temporary file
  Future<String> decodeAndSaveAudio(String base64Audio, String mimeType) async {
    try {
      // Decode base64 to bytes
      final bytes = base64Decode(base64Audio);

      // Determine file extension from MIME type
      final extension = _getExtensionFromMimeType(mimeType);

      // Get temporary directory
      final tempDir = await getTemporaryDirectory();
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final fileName = 'audio_$timestamp.$extension';
      final filePath = path.join(tempDir.path, fileName);

      // Write bytes to file
      final file = File(filePath);
      await file.writeAsBytes(bytes);

      _logger.d('Audio decoded and saved to: $filePath');
      return filePath;
    } catch (e) {
      _logger.e('Failed to decode audio: $e');
      throw AudioException('Failed to decode audio: $e');
    }
  }

  /// Play audio from base64 string
  Future<void> playBase64Audio(
    String base64Audio,
    String mimeType, {
    double speed = 1.0,
    Function? onComplete,
  }) async {
    await ensureInitialized();

    try {
      // Stop current playback if any
      await stop();

      // Decode and save audio
      final audioPath = await decodeAndSaveAudio(base64Audio, mimeType);
      _currentAudioPath = audioPath;

      // Set playback speed
      await _player.setSpeed(speed);

      // Set up completion listener
      _player.playerStateStream.listen((state) {
        if (state.processingState == ProcessingState.completed) {
          onComplete?.call();
          _cleanup();
        }
      });

      // Load and play audio
      await _player.setFilePath(audioPath);
      await _player.play();

      _logger.d('Playing audio from: $audioPath at speed: $speed');
    } catch (e) {
      _logger.e('Failed to play audio: $e');
      throw AudioException('Failed to play audio: $e');
    }
  }

  /// Play audio from file path
  Future<void> playFromFile(String filePath, {double speed = 1.0}) async {
    await ensureInitialized();

    try {
      await stop();
      await _player.setSpeed(speed);
      await _player.setFilePath(filePath);
      await _player.play();
      _currentAudioPath = filePath;

      _logger.d('Playing audio from: $filePath');
    } catch (e) {
      _logger.e('Failed to play audio: $e');
      throw AudioException('Failed to play audio: $e');
    }
  }

  /// Pause playback
  Future<void> pause() async {
    await _player.pause();
    _logger.d('Audio paused');
  }

  /// Resume playback
  Future<void> resume() async {
    await _player.play();
    _logger.d('Audio resumed');
  }

  /// Stop playback
  Future<void> stop() async {
    await _player.stop();
    _cleanup();
    _logger.d('Audio stopped');
  }

  /// Set playback speed
  Future<void> setSpeed(double speed) async {
    await _player.setSpeed(speed);
    _logger.d('Playback speed set to: $speed');
  }

  /// Seek to position
  Future<void> seek(Duration position) async {
    await _player.seek(position);
  }

  /// Get current position
  Duration? get position => _player.position;

  /// Get duration
  Duration? get duration => _player.duration;

  /// Get playback state stream
  Stream<PlayerState> get playerStateStream => _player.playerStateStream;

  /// Get position stream
  Stream<Duration> get positionStream => _player.positionStream;

  /// Get duration stream
  Stream<Duration?> get durationStream => _player.durationStream;

  /// Get playing state
  bool get isPlaying => _player.playing;

  /// Ensure audio service is initialized
  Future<void> ensureInitialized() async {
    if (!_isInitialized) {
      await initialize();
    }
  }

  /// Clean up temporary audio files
  void _cleanup() {
    if (_currentAudioPath != null) {
      try {
        final file = File(_currentAudioPath!);
        if (file.existsSync()) {
          file.deleteSync();
          _logger.d('Cleaned up audio file: $_currentAudioPath');
        }
      } catch (e) {
        _logger.w('Failed to cleanup audio file: $e');
      }
      _currentAudioPath = null;
    }
  }

  /// Clean up all temporary audio files
  Future<void> cleanupAllTempAudio() async {
    try {
      final tempDir = await getTemporaryDirectory();
      final files = tempDir.listSync();

      for (final file in files) {
        if (file is File && file.path.contains('audio_')) {
          try {
            await file.delete();
            _logger.d('Deleted temp audio: ${file.path}');
          } catch (e) {
            _logger.w('Failed to delete temp audio: $e');
          }
        }
      }
    } catch (e) {
      _logger.e('Failed to cleanup temp audio: $e');
    }
  }

  /// Get file extension from MIME type
  String _getExtensionFromMimeType(String mimeType) {
    switch (mimeType.toLowerCase()) {
      case 'audio/mpeg':
      case 'audio/mp3':
        return 'mp3';
      case 'audio/wav':
      case 'audio/wave':
        return 'wav';
      case 'audio/aac':
        return 'aac';
      case 'audio/ogg':
        return 'ogg';
      case 'audio/flac':
        return 'flac';
      case 'audio/m4a':
        return 'm4a';
      default:
        return 'mp3'; // Default to mp3
    }
  }

  /// Dispose resources
  Future<void> dispose() async {
    await stop();
    await _player.dispose();
    _isInitialized = false;
    _logger.d('Audio service disposed');
  }
}

class AudioException implements Exception {
  final String message;

  AudioException(this.message);

  @override
  String toString() => 'AudioException: $message';
}
