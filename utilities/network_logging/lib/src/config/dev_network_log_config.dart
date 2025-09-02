import 'package:network_logging/src/config/network_log_config.dart';

class DevNetworkLogConfig implements NetworkLogConfig {
  const DevNetworkLogConfig();

  @override
  bool get isEnabled => true;

  @override
  int get maxEntries => 2000;

  @override
  int get maxMemoryMB => 100;

  @override
  Duration get retentionPeriod => const Duration(hours: 24);

  @override
  List<String> get sensitiveHeaders => [];

  @override
  List<String> get sensitiveUrlPatterns => [];

  @override
  int get maxBodySize => 1024 * 1024; // 1MB

  @override
  bool get logRequestBodies => true;

  @override
  bool get logResponseBodies => true;

  @override
  int get minErrorStatusCode => 400;
}
