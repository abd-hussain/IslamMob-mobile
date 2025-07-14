import 'package:dio/dio.dart';
import 'package:network_logging/src/config/production_network_log_config.dart';
import 'package:network_logging/src/data/models/network_log_entry.dart';
import 'package:network_logging/src/data/storage/no_op_network_log_storage.dart';
import 'package:network_logging/src/interceptor/network_logger_interceptor_base.dart';

class ProductionNetworkLoggerInterceptor extends NetworkLoggerInterceptorBase {
  ProductionNetworkLoggerInterceptor()
    : super(NoOpNetworkLogStorage(), const ProductionNetworkLogConfig());

  @override
  Future<void> logRequest(NetworkLogEntry entry) async {
    // No-op for production
  }

  @override
  // ignore: strict_raw_type
  Future<void> logResponse(Response response, String requestId) async {
    // No-op for production
  }

  @override
  Future<void> logError(DioException error, String requestId) async {
    // No-op for production
  }
}
