import 'package:api_client/src/http/api/model/http_api_exception.dart';
import 'package:api_client/src/http/api/model/http_api_response.dart';
import 'package:api_client/src/http/api_client_base.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

/// A concrete implementation of [ApiClientBase] using the Dio HTTP client.
///
/// This class provides HTTP API functionality using the Dio library for making
/// network requests. It implements all the standard HTTP methods (GET, POST,
/// PUT, PATCH, DELETE) with functional programming error handling using
/// [TaskEither] from the fpdart library.
///
/// The implementation automatically handles:
/// - Request/response serialization
/// - Error mapping from Dio exceptions to custom API exceptions
/// - Connection timeouts and network errors
/// - HTTP status code handling
///
/// Example usage:
/// ```dart
/// final dio = DioBuilder()
///   .setBaseUrl('https://api.example.com')
///   .build();
/// final apiClient = DioApiClient(dio);
///
/// final result = await apiClient.get<Map<String, dynamic>>('/users').run();
/// result.fold(
///   (error) => print('Error: $error'),
///   (response) => print('Data: ${response.data}'),
/// );
/// ```
class DioApiClient extends ApiClientBase {
  /// Creates a new [DioApiClient] instance with the provided Dio client.
  ///
  /// [_dio] The configured Dio instance to use for making HTTP requests.
  /// This should be properly configured with base URL, interceptors, and
  /// any other necessary settings before being passed to this constructor.
  DioApiClient(this._dio);

  final Dio _dio;

  @override
  TaskEither<Exception, HttpApiResponse<T>> get<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  }) {
    return TaskEither.tryCatch(() async {
      final response = await _dio.get<T>(
        path,
        queryParameters: queryParams,
        options: Options(headers: headers),
      );

      return HttpApiResponse<T>(
        data: response.data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
      );
    }, _mapException);
  }

  @override
  TaskEither<Exception, HttpApiResponse<T>> delete<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  }) => TaskEither.tryCatch(() async {
    final response = await _dio.delete<T>(
      path,
      queryParameters: queryParams,
      options: Options(headers: headers),
    );

    return HttpApiResponse<T>(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }, _mapException);

  @override
  TaskEither<Exception, HttpApiResponse<T>> patch<T>(
    String path, {
    required Map<String, Object?> data,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  }) => TaskEither.tryCatch(() async {
    final response = await _dio.patch<T>(
      path,
      data: data,
      queryParameters: queryParams,
      options: Options(headers: headers),
    );

    return HttpApiResponse<T>(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }, _mapException);

  @override
  TaskEither<Exception, HttpApiResponse<T>> post<T>(
    String path, {
    required Map<String, Object?> data,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  }) => TaskEither.tryCatch(() async {
    final response = await _dio.post<T>(
      path,
      data: data,
      queryParameters: queryParams,
      options: Options(headers: headers),
    );

    return HttpApiResponse<T>(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }, _mapException);

  @override
  TaskEither<Exception, HttpApiResponse<T>> put<T>(
    String path, {
    required Map<String, Object?> data,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  }) => TaskEither.tryCatch(() async {
    final response = await _dio.put<T>(
      path,
      data: data,
      queryParameters: queryParams,
      options: Options(headers: headers),
    );

    return HttpApiResponse<T>(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }, _mapException);

  Exception _mapException(Object error, StackTrace stackTrace) {
    if (error case final DioException dioException) {
      if (dioException.type == DioExceptionType.connectionTimeout ||
          dioException.type == DioExceptionType.connectionError ||
          dioException.type == DioExceptionType.receiveTimeout ||
          dioException.type == DioExceptionType.sendTimeout) {
        return ConnectionException(
          message: 'ConnectionException',
          statusCode: error.response?.statusCode,
          cause: error,
          stackTrace: stackTrace,
        );
      } else {
        return ClientException(
          message: error.toString(),
          statusCode: error.response?.statusCode,
          cause: error,
          stackTrace: stackTrace,
        );
      }
    } else {
      return ClientException(
        message: error.toString(),
        cause: error,
        stackTrace: stackTrace,
      );
    }
  }
}
