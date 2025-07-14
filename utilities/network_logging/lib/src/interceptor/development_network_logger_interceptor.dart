import 'package:dio/dio.dart';
import 'package:network_logging/src/data/models/network_log_entry.dart';
import 'package:network_logging/src/interceptor/network_logger_interceptor_base.dart';

class DevelopmentNetworkLoggerInterceptor extends NetworkLoggerInterceptorBase {
  DevelopmentNetworkLoggerInterceptor(super.storage, super.config);

  @override
  Future<void> logRequest(NetworkLogEntry entry) async {
    await storage.store(entry);
  }

  @override
  // ignore: strict_raw_type
  Future<void> logResponse(Response response, String requestId) async {
    final entries = await storage.getAll();
    final entryIndex = entries.indexWhere((e) => e.id == requestId);

    if (entryIndex == -1) return;

    final originalEntry = entries[entryIndex];
    final responseBody = config.logResponseBodies
        ? sanitizer.sanitizeBody(
            response.data?.toString(),
            response.requestOptions.uri.toString(),
          )
        : null;

    final updatedEntry = originalEntry.copyWith(
      responseTimestamp: DateTime.now(),
      statusCode: response.statusCode,
      responseHeaders: sanitizer.sanitizeHeaders(
        Map<String, dynamic>.from(response.headers.map),
      ),
      responseBody: responseBody,
      duration: DateTime.now()
          .difference(originalEntry.requestTimestamp)
          .inMilliseconds,
    );

    await storage.store(updatedEntry);
  }

  @override
  Future<void> logError(DioException error, String requestId) async {
    final entries = await storage.getAll();
    final entryIndex = entries.indexWhere((e) => e.id == requestId);

    if (entryIndex == -1) return;

    final originalEntry = entries[entryIndex];
    final updatedEntry = originalEntry.copyWith(
      responseTimestamp: DateTime.now(),
      statusCode: error.response?.statusCode,
      responseHeaders: error.response?.headers.map != null
          ? sanitizer.sanitizeHeaders(
              Map<String, dynamic>.from(error.response!.headers.map),
            )
          : null,
      errorMessage: error.message,
      duration: DateTime.now()
          .difference(originalEntry.requestTimestamp)
          .inMilliseconds,
    );

    await storage.store(updatedEntry);
  }
}
