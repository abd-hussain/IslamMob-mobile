import '../config/network_log_config.dart';

class NetworkLogSanitizer {
  final NetworkLogConfig config;

  const NetworkLogSanitizer(this.config);

  /// Sanitize headers by masking sensitive values
  Map<String, dynamic> sanitizeHeaders(Map<String, dynamic> headers) {
    final sanitized = <String, dynamic>{};

    headers.forEach((key, value) {
      final lowerKey = key.toLowerCase();
      if (config.sensitiveHeaders.any(
        (h) => lowerKey.contains(h.toLowerCase()),
      )) {
        sanitized[key] = _maskValue(value.toString());
      } else {
        sanitized[key] = value;
      }
    });

    return sanitized;
  }

  /// Sanitize request/response body
  String? sanitizeBody(String? body, String url) {
    if (body == null) return null;

    // Check if URL contains sensitive patterns
    if (isSensitiveUrl(url)) {
      return '[SENSITIVE_DATA_MASKED]';
    }

    // Truncate if too large
    if (body.length > config.maxBodySize) {
      return '${body.substring(0, config.maxBodySize)}...[TRUNCATED]';
    }

    return body;
  }

  /// Check if URL contains sensitive patterns
  bool isSensitiveUrl(String url) {
    return config.sensitiveUrlPatterns.any(
      (pattern) => RegExp(pattern, caseSensitive: false).hasMatch(url),
    );
  }

  String _maskValue(String value) {
    if (value.length <= 8) return '***';
    return '${value.substring(0, 4)}***${value.substring(value.length - 4)}';
  }
}
