import 'dart:io';

import 'package:dio/dio.dart';
import 'package:native_dio_adapter/native_dio_adapter.dart';

class DioBuilder {
  String? _baseUrl;
  final List<Interceptor> _interceptors = [];
  HttpClientAdapter? _clientAdapter;

  DioBuilder setBaseUrl(String baseUrl) {
    _baseUrl = baseUrl;
    return this;
  }

  DioBuilder addInterceptor(Interceptor interceptor) {
    _interceptors.add(interceptor);
    return this;
  }

  DioBuilder setClientAdapter(HttpClientAdapter adapter) {
    _clientAdapter = adapter;
    return this;
  }

  DioBuilder withNativeAdapter() {
    if (!Platform.environment.containsKey('FLUTTER_TEST'))
      _clientAdapter = NativeAdapter();
    return this;
  }

  Dio build() {
    final dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl ?? '',
      ),
    );

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
