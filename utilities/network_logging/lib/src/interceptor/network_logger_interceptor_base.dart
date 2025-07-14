import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:network_logging/src/config/network_log_config.dart';
import 'package:network_logging/src/data/models/network_log_entry.dart';
import 'package:network_logging/src/data/storage/network_log_storage.dart';
import 'package:network_logging/src/utils/network_log_sanitizer.dart';
import 'package:uuid/uuid.dart';

abstract class NetworkLoggerInterceptorBase extends Interceptor {
  final NetworkLogStorage storage;
  final NetworkLogConfig config;
  final NetworkLogSanitizer sanitizer;
  final Uuid _uuid = const Uuid();

  NetworkLoggerInterceptorBase(this.storage, this.config)
    : sanitizer = NetworkLogSanitizer(config);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!config.isEnabled) {
      return handler.next(options);
    }

    try {
      final entry = await createLogEntry(options);
      await logRequest(entry);

      // Store request ID in options for correlation
      options.extra['networkLogId'] = entry.id;
    } catch (e) {
      // Don't let logging errors break the request
      debugPrint('Network logging error: $e');
    }

    handler.next(options);
  }

  @override
  // ignore: strict_raw_type
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    if (!config.isEnabled) {
      return handler.next(response);
    }

    try {
      final requestId =
          response.requestOptions.extra['networkLogId'] as String?;
      if (requestId != null) {
        await logResponse(response, requestId);
      }
    } catch (e) {
      debugPrint('Network logging error: $e');
    }

    handler.next(response);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (!config.isEnabled) {
      return handler.next(err);
    }

    try {
      final requestId = err.requestOptions.extra['networkLogId'] as String?;
      if (requestId != null) {
        await logError(err, requestId);
      }
    } catch (e) {
      debugPrint('Network logging error: $e');
    }

    handler.next(err);
  }

  @protected
  Future<NetworkLogEntry> createLogEntry(RequestOptions options) async {
    final sanitizedHeaders = sanitizer.sanitizeHeaders(
      Map<String, dynamic>.from(options.headers),
    );

    final requestBody = config.logRequestBodies
        ? sanitizer.sanitizeBody(
            options.data?.toString(),
            options.uri.toString(),
          )
        : null;

    return NetworkLogEntry(
      id: _uuid.v4(),
      url: options.uri.toString(),
      method: options.method.toUpperCase(),
      requestTimestamp: DateTime.now(),
      requestHeaders: sanitizedHeaders,
      requestBody: requestBody,
      isSensitive: sanitizer.isSensitiveUrl(options.uri.toString()),
    );
  }

  @protected
  Future<void> logRequest(NetworkLogEntry entry);

  @protected
  // ignore: strict_raw_type
  Future<void> logResponse(Response response, String requestId);

  @protected
  Future<void> logError(DioException error, String requestId);
}
