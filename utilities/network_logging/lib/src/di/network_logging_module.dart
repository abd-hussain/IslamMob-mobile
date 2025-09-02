import 'package:injectable/injectable.dart';
import 'package:network_logging/src/config/dev_network_log_config.dart';
import 'package:network_logging/src/config/network_log_config.dart';
import 'package:network_logging/src/config/production_network_log_config.dart';
import 'package:network_logging/src/config/staging_network_log_config.dart';
import 'package:network_logging/src/data/storage/in_memory_network_log_storage.dart';
import 'package:network_logging/src/data/storage/network_log_storage.dart';
import 'package:network_logging/src/data/storage/no_op_network_log_storage.dart';
import 'package:network_logging/src/interceptor/development_network_logger_interceptor.dart';
import 'package:network_logging/src/interceptor/network_logger_interceptor_base.dart';
import 'package:network_logging/src/interceptor/production_network_logger_interceptor.dart';

@module
abstract class NetworkLoggingModule {
  @lazySingleton
  NetworkLogConfig networkLogConfig(@Named('environment') String env) {
    // Enable network logging for all flavors except production
    // and for all build types (debug, profile, release)
    if (env == 'prod') {
      return const ProductionNetworkLogConfig();
    }

    // For all non-production environments (dev, rel, staging)
    // use appropriate config based on environment
    switch (env) {
      case 'dev':
      case 'rel':
        return const DevNetworkLogConfig();
      case 'staging':
        return const StagingNetworkLogConfig();
      default:
        // Fallback to dev config for unknown environments
        return const DevNetworkLogConfig();
    }
  }

  @lazySingleton
  NetworkLogStorage networkLogStorage(NetworkLogConfig config) {
    if (!config.isEnabled) {
      return NoOpNetworkLogStorage();
    }

    return InMemoryNetworkLogStorage(
      maxEntries: config.maxEntries,
      maxMemoryBytes: config.maxMemoryMB * 1024 * 1024,
    );
  }

  @lazySingleton
  NetworkLoggerInterceptorBase networkLoggerInterceptor(
    NetworkLogStorage storage,
    NetworkLogConfig config,
  ) {
    if (!config.isEnabled) {
      return ProductionNetworkLoggerInterceptor();
    }

    return DevelopmentNetworkLoggerInterceptor(storage, config);
  }
}
