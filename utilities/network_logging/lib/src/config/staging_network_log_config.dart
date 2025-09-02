import 'package:network_logging/src/config/network_log_config.dart';

class StagingNetworkLogConfig implements NetworkLogConfig {
  const StagingNetworkLogConfig();

  @override
  bool get isEnabled => true;

  @override
  int get maxEntries => 500;

  @override
  int get maxMemoryMB => 25;

  @override
  Duration get retentionPeriod => const Duration(hours: 6);

  @override
  List<String> get sensitiveHeaders => [];

  @override
  List<String> get sensitiveUrlPatterns => [];

  @override
  int get maxBodySize => 512 * 1024; // 512KB

  @override
  bool get logRequestBodies => false; // Disabled for staging safety

  @override
  bool get logResponseBodies => false; // Disabled for staging safety

  @override
  int get minErrorStatusCode => 400;
}
