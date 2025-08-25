import 'package:network_logging/src/data/models/network_log_entry.dart';
import 'package:network_logging/src/data/storage/network_log_storage.dart';

class NoOpNetworkLogStorage implements NetworkLogStorage {
  @override
  Future<void> store(NetworkLogEntry entry) async {
    // No-op for production
  }

  @override
  Future<List<NetworkLogEntry>> getAll() async => [];

  @override
  Future<List<NetworkLogEntry>> getByTimeRange(
    DateTime start,
    DateTime end,
  ) async => [];

  @override
  Future<List<NetworkLogEntry>> getByUrlPattern(String pattern) async => [];

  @override
  Future<List<NetworkLogEntry>> getByStatusCode(
    int? minCode,
    int? maxCode,
  ) async => [];

  @override
  Future<void> clear() async {}

  @override
  Future<int> getCount() async => 0;

  @override
  Future<void> removeOldEntries(Duration maxAge) async {}

  @override
  Future<int> getMemoryUsage() async => 0;
}
