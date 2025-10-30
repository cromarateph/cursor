import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:crypto/crypto.dart';
import 'package:logger/logger.dart';
import '../../data/models/webhook_request_model.dart';
import '../../data/models/webhook_response_model.dart';
import '../../data/models/bot_instance_model.dart';
import 'webhook_logger.dart';

class WebhookClient {
  final Dio _dio;
  final Logger _logger;
  final WebhookLogger _webhookLogger;

  WebhookClient({
    Dio? dio,
    Logger? logger,
    WebhookLogger? webhookLogger,
  })  : _dio = dio ?? Dio(),
        _logger = logger ?? Logger(),
        _webhookLogger = webhookLogger ?? WebhookLogger();

  /// Send a webhook request with retry logic, timeout, and optional HMAC signing
  Future<WebhookResponseModel> sendRequest({
    required BotInstanceModel bot,
    required WebhookRequestModel request,
    String? signingSecret,
    CancelToken? cancelToken,
  }) async {
    final requestBody = jsonEncode(request.toJson());
    final headers = <String, String>{
      'Content-Type': 'application/json',
      ...bot.customHeaders,
    };

    // Add HMAC signature if secret is provided
    if (signingSecret != null && signingSecret.isNotEmpty) {
      final signature = _generateHmacSignature(requestBody, signingSecret);
      headers['X-Signature'] = signature;
    }

    final startTime = DateTime.now();
    String? errorMessage;
    int? statusCode;
    Map<String, dynamic>? responseHeaders;
    String? responseBody;

    try {
      final response = await _sendWithRetry(
        url: bot.webhookUrl,
        method: bot.httpMethod,
        headers: headers,
        body: requestBody,
        timeout: Duration(milliseconds: bot.requestTimeoutMs),
        retryPolicy: bot.retryPolicy,
        cancelToken: cancelToken,
      );

      statusCode = response.statusCode;
      responseHeaders = response.headers.map;
      responseBody = jsonEncode(response.data);

      final webhookResponse = WebhookResponseModel.fromJson(response.data);

      // Log successful request
      await _webhookLogger.logRequest(
        botId: bot.id,
        requestUrl: bot.webhookUrl,
        requestMethod: bot.httpMethod,
        requestHeaders: headers,
        requestBody: requestBody,
        responseStatus: statusCode,
        responseHeaders: responseHeaders,
        responseBody: responseBody,
        durationMs: DateTime.now().difference(startTime).inMilliseconds,
      );

      return webhookResponse;
    } on DioException catch (e) {
      errorMessage = e.message ?? 'Unknown error';
      statusCode = e.response?.statusCode;
      responseBody = e.response?.data?.toString();

      // Log failed request
      await _webhookLogger.logRequest(
        botId: bot.id,
        requestUrl: bot.webhookUrl,
        requestMethod: bot.httpMethod,
        requestHeaders: headers,
        requestBody: requestBody,
        responseStatus: statusCode,
        responseBody: responseBody,
        error: errorMessage,
        durationMs: DateTime.now().difference(startTime).inMilliseconds,
      );

      _logger.e('Webhook request failed: $errorMessage');
      throw WebhookException(
        message: errorMessage,
        statusCode: statusCode,
        originalException: e,
      );
    } catch (e) {
      errorMessage = e.toString();

      // Log failed request
      await _webhookLogger.logRequest(
        botId: bot.id,
        requestUrl: bot.webhookUrl,
        requestMethod: bot.httpMethod,
        requestHeaders: headers,
        requestBody: requestBody,
        error: errorMessage,
        durationMs: DateTime.now().difference(startTime).inMilliseconds,
      );

      _logger.e('Webhook request failed: $errorMessage');
      throw WebhookException(
        message: errorMessage,
        originalException: e,
      );
    }
  }

  /// Send request with exponential backoff retry logic
  Future<Response> _sendWithRetry({
    required String url,
    required String method,
    required Map<String, String> headers,
    required String body,
    required Duration timeout,
    required RetryPolicy retryPolicy,
    CancelToken? cancelToken,
  }) async {
    int attempt = 0;
    Exception? lastException;

    while (attempt < (retryPolicy.enabled ? retryPolicy.maxAttempts : 1)) {
      try {
        _logger.d('Webhook request attempt ${attempt + 1}/${retryPolicy.maxAttempts}');

        final response = await _dio.request(
          url,
          data: body,
          options: Options(
            method: method,
            headers: headers,
            sendTimeout: timeout,
            receiveTimeout: timeout,
            validateStatus: (status) => status != null && status >= 200 && status < 300,
          ),
          cancelToken: cancelToken,
        );

        return response;
      } on DioException catch (e) {
        lastException = e;
        attempt++;

        // Don't retry on certain status codes
        if (e.response?.statusCode != null) {
          final statusCode = e.response!.statusCode!;
          if (statusCode >= 400 && statusCode < 500 && statusCode != 429) {
            // Client errors (except rate limiting) - don't retry
            throw e;
          }
        }

        // Don't retry if this was the last attempt
        if (attempt >= retryPolicy.maxAttempts) {
          throw e;
        }

        // Calculate delay for exponential backoff
        final delayIndex = attempt - 1;
        final delay = delayIndex < retryPolicy.backoffDelaysMs.length
            ? retryPolicy.backoffDelaysMs[delayIndex]
            : retryPolicy.backoffDelaysMs.last;

        _logger.d('Retrying after ${delay}ms...');
        await Future.delayed(Duration(milliseconds: delay));
      } catch (e) {
        lastException = e as Exception;
        throw lastException;
      }
    }

    throw lastException ?? Exception('Max retry attempts reached');
  }

  /// Generate HMAC SHA256 signature for request body
  String _generateHmacSignature(String body, String secret) {
    final key = utf8.encode(secret);
    final bytes = utf8.encode(body);
    final hmac = Hmac(sha256, key);
    final digest = hmac.convert(bytes);
    return base64Encode(digest.bytes);
  }

  /// Verify HMAC signature
  bool verifySignature(String body, String signature, String secret) {
    final expectedSignature = _generateHmacSignature(body, secret);
    return expectedSignature == signature;
  }
}

class WebhookException implements Exception {
  final String message;
  final int? statusCode;
  final Object? originalException;

  WebhookException({
    required this.message,
    this.statusCode,
    this.originalException,
  });

  @override
  String toString() {
    return 'WebhookException: $message ${statusCode != null ? '(Status: $statusCode)' : ''}';
  }
}
