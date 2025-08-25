import 'package:network_logging/src/data/models/network_log_entry.dart';

abstract class NetworkLogStorage {
  /// Store a network log entry
  Future<void> store(NetworkLogEntry entry);

  /// Get all stored entries
  Future<List<NetworkLogEntry>> getAll();

  /// Get entries within a time range
  Future<List<NetworkLogEntry>> getByTimeRange(DateTime start, DateTime end);

  /// Get entries by URL pattern
  Future<List<NetworkLogEntry>> getByUrlPattern(String pattern);

  /// Get entries by status code range
  Future<List<NetworkLogEntry>> getByStatusCode(int? minCode, int? maxCode);

  /// Clear all stored entries
  Future<void> clear();

  /// Get total count of stored entries
  Future<int> getCount();

  /// Remove entries older than specified duration
  Future<void> removeOldEntries(Duration maxAge);

  /// Get current memory usage in bytes
  Future<int> getMemoryUsage();
}
