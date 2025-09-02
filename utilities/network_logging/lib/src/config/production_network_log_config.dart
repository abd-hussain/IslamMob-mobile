import 'package:network_logging/src/config/network_log_config.dart';

class ProductionNetworkLogConfig implements NetworkLogConfig {
  const ProductionNetworkLogConfig();

  @override
  bool get isEnabled => false;

  @override
  int get maxEntries => 0;

  @override
  int get maxMemoryMB => 0;

  @override
  Duration get retentionPeriod => Duration.zero;

  @override
  List<String> get sensitiveHeaders => [];

  @override
  List<String> get sensitiveUrlPatterns => [];

  @override
  int get maxBodySize => 0;

  @override
  bool get logRequestBodies => false;

  @override
  bool get logResponseBodies => false;

  @override
  int get minErrorStatusCode => 999;
}
