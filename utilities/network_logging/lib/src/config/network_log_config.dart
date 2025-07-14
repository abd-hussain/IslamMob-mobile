abstract class NetworkLogConfig {
  /// Whether network logging is enabled
  bool get isEnabled;

  /// Maximum number of entries to store
  int get maxEntries;

  /// Maximum memory usage in MB
  int get maxMemoryMB;

  /// How long to retain entries
  Duration get retentionPeriod;

  /// Headers that should be filtered/masked
  List<String> get sensitiveHeaders;

  /// URL patterns that contain sensitive data
  List<String> get sensitiveUrlPatterns;

  /// Maximum size for request/response body logging (in bytes)
  int get maxBodySize;

  /// Whether to log request bodies
  bool get logRequestBodies;

  /// Whether to log response bodies
  bool get logResponseBodies;

  /// Minimum log level for errors
  int get minErrorStatusCode;
}
