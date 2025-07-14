//@GeneratedMicroModule;NetworkLoggingPackageModule;package:network_logging/src/di/di_container.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:network_logging/src/config/network_log_config.dart' as _i183;
import 'package:network_logging/src/data/storage/network_log_storage.dart'
    as _i98;
import 'package:network_logging/src/di/network_logging_module.dart' as _i719;
import 'package:network_logging/src/interceptor/network_logger_interceptor_base.dart'
    as _i866;

class NetworkLoggingPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final networkLoggingModule = _$NetworkLoggingModule();
    gh.lazySingleton<_i183.NetworkLogConfig>(
      () => networkLoggingModule.networkLogConfig(
        gh<String>(instanceName: 'environment'),
      ),
    );
    gh.lazySingleton<_i98.NetworkLogStorage>(
      () =>
          networkLoggingModule.networkLogStorage(gh<_i183.NetworkLogConfig>()),
    );
    gh.lazySingleton<_i866.NetworkLoggerInterceptorBase>(
      () => networkLoggingModule.networkLoggerInterceptor(
        gh<_i98.NetworkLogStorage>(),
        gh<_i183.NetworkLogConfig>(),
      ),
    );
  }
}

class _$NetworkLoggingModule extends _i719.NetworkLoggingModule {}
