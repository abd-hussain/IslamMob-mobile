import 'dart:collection';
import 'dart:convert';

import 'package:network_logging/src/data/models/network_log_entry.dart';
import 'package:network_logging/src/data/storage/network_log_storage.dart';

class InMemoryNetworkLogStorage implements NetworkLogStorage {
  final int maxEntries;
  final int maxMemoryBytes;
  final Queue<NetworkLogEntry> _entries = Queue<NetworkLogEntry>();
  final Map<String, NetworkLogEntry> _entriesById = <String, NetworkLogEntry>{};

  InMemoryNetworkLogStorage({
    this.maxEntries = 1000,
    this.maxMemoryBytes = 50 * 1024 * 1024, // 50MB
  });

  @override
  Future<void> store(NetworkLogEntry entry) async {
    // Remove existing entry with same ID (for updates)
    if (_entriesById.containsKey(entry.id)) {
      _entries.removeWhere((e) => e.id == entry.id);
    }

    _entries.addLast(entry);
    _entriesById[entry.id] = entry;

    // Enforce limits
    await _enforceLimits();
  }

  @override
  Future<List<NetworkLogEntry>> getAll() async {
    return _entries.toList();
  }

  @override
  Future<List<NetworkLogEntry>> getByTimeRange(
    DateTime start,
    DateTime end,
  ) async {
    return _entries
        .where(
          (entry) =>
              entry.requestTimestamp.isAfter(start) &&
              entry.requestTimestamp.isBefore(end),
        )
        .toList();
  }

  @override
  Future<List<NetworkLogEntry>> getByUrlPattern(String pattern) async {
    final regex = RegExp(pattern, caseSensitive: false);
    return _entries.where((entry) => regex.hasMatch(entry.url)).toList();
  }

  @override
  Future<List<NetworkLogEntry>> getByStatusCode(
    int? minCode,
    int? maxCode,
  ) async {
    return _entries.where((entry) {
      if (entry.statusCode == null) return false;
      if (minCode != null && entry.statusCode! < minCode) return false;
      if (maxCode != null && entry.statusCode! > maxCode) return false;
      return true;
    }).toList();
  }

  @override
  Future<void> clear() async {
    _entries.clear();
    _entriesById.clear();
  }

  @override
  Future<int> getCount() async {
    return _entries.length;
  }

  @override
  Future<void> removeOldEntries(Duration maxAge) async {
    final cutoff = DateTime.now().subtract(maxAge);
    _entries.removeWhere((entry) => entry.requestTimestamp.isBefore(cutoff));
    _entriesById.removeWhere(
      (_, entry) => entry.requestTimestamp.isBefore(cutoff),
    );
  }

  @override
  Future<int> getMemoryUsage() async {
    int totalBytes = 0;
    for (final entry in _entries) {
      totalBytes += _calculateEntrySize(entry);
    }
    return totalBytes;
  }

  Future<void> _enforceLimits() async {
    // Remove old entries if we exceed max count
    while (_entries.length > maxEntries) {
      final removed = _entries.removeFirst();
      _entriesById.remove(removed.id);
    }

    // Remove old entries if we exceed memory limit
    while (await getMemoryUsage() > maxMemoryBytes && _entries.isNotEmpty) {
      final removed = _entries.removeFirst();
      _entriesById.remove(removed.id);
    }
  }

  int _calculateEntrySize(NetworkLogEntry entry) {
    // Rough estimation of memory usage
    final json = entry.toJson();
    return utf8.encode(jsonEncode(json)).length;
  }
}
