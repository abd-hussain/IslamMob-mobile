import 'dart:io';

import 'package:dio/dio.dart';
import 'package:native_dio_adapter/native_dio_adapter.dart';

/// A builder class for configuring and creating Dio HTTP client instances.
///
/// This class implements the builder pattern to provide a fluent API for
/// configuring Dio instances with custom base URLs, interceptors, and
/// HTTP client adapters. It supports method chaining for easy configuration.
///
/// Example usage:
/// ```dart
/// final dio = DioBuilder()
///   .setBaseUrl('https://api.example.com')
///   .addInterceptor(LogInterceptor())
///   .withNativeAdapter()
///   .build();
/// ```
class DioBuilder {
  String? _baseUrl;
  final List<Interceptor> _interceptors = [];
  HttpClientAdapter? _clientAdapter;

  /// Sets the base URL for the Dio instance.
  ///
  /// [baseUrl] - The base URL that will be prepended to all requests.
  /// Returns this [DioBuilder] instance for method chaining.
  DioBuilder setBaseUrl(String baseUrl) {
    _baseUrl = baseUrl;
    return this;
  }

  /// Adds an interceptor to the Dio instance.
  ///
  /// [interceptor] - The interceptor to add for request/response processing.
  /// Returns this [DioBuilder] instance for method chaining.
  ///
  /// Interceptors are executed in the order they are added.
  DioBuilder addInterceptor(Interceptor interceptor) {
    _interceptors.add(interceptor);
    return this;
  }

  /// Sets a custom HTTP client adapter for the Dio instance.
  ///
  /// [adapter] - The HTTP client adapter to use for network requests.
  /// Returns this [DioBuilder] instance for method chaining.
  DioBuilder setClientAdapter(HttpClientAdapter adapter) {
    _clientAdapter = adapter;
    return this;
  }

  /// Configures the Dio instance to use the native HTTP adapter.
  ///
  /// This method sets up the [NativeAdapter] for improved performance
  /// on mobile platforms. The native adapter is only applied when not
  /// running in a Flutter test environment.
  ///
  /// Returns this [DioBuilder] instance for method chaining.
  DioBuilder withNativeAdapter() {
    if (!Platform.environment.containsKey('FLUTTER_TEST')) {
      _clientAdapter = NativeAdapter();
    }
    return this;
  }

  /// Builds and returns a configured Dio instance.
  ///
  /// Creates a new [Dio] instance with all the configured settings including
  /// base URL, interceptors, and HTTP client adapter. This method should be
  /// called last in the builder chain.
  ///
  /// Returns a fully configured [Dio] instance ready for use.
  Dio build() {
    final dio = Dio(BaseOptions(baseUrl: _baseUrl ?? ''));

    // Add interceptors
    for (final interceptor in _interceptors) {
      dio.interceptors.add(interceptor);
    }

    // Set client adapter
    if (_clientAdapter != null) {
      dio.httpClientAdapter = _clientAdapter!;
    }

    return dio;
  }
}
