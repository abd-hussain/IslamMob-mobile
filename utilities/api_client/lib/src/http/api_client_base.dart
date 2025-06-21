import 'package:api_client/src/http/api/model/http_api_response.dart';
import 'package:fpdart/fpdart.dart';

/// Abstract base class for HTTP API client implementations.
///
/// This class defines the contract for making HTTP requests using functional
/// programming principles with [TaskEither] for error handling. All methods
/// return a [TaskEither] that resolves to either an [Exception] on failure
/// or an [HttpApiResponse] on success.
///
/// Implementations should handle:
/// - Network connectivity
/// - Request/response serialization
/// - Error handling and mapping
/// - Authentication headers
/// - Base URL configuration
abstract class ApiClientBase {
  /// Performs an HTTP GET request.
  ///
  /// [path] - The API endpoint path to request.
  /// [headers] - Optional HTTP headers to include in the request.
  /// [queryParams] - Optional query parameters to append to the URL.
  ///
  /// Returns a [TaskEither] that resolves to an [HttpApiResponse] on success
  /// or an [Exception] on failure.
  TaskEither<Exception, HttpApiResponse<T>> get<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });

  /// Performs an HTTP POST request.
  ///
  /// [path] - The API endpoint path to request.
  /// [data] - The request body data to send.
  /// [headers] - Optional HTTP headers to include in the request.
  /// [queryParams] - Optional query parameters to append to the URL.
  ///
  /// Returns a [TaskEither] that resolves to an [HttpApiResponse] on success
  /// or an [Exception] on failure.
  TaskEither<Exception, HttpApiResponse<T>> post<T>(
    String path, {
    required Map<String, Object?> data,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });

  /// Performs an HTTP PUT request.
  ///
  /// [path] - The API endpoint path to request.
  /// [data] - The request body data to send.
  /// [headers] - Optional HTTP headers to include in the request.
  /// [queryParams] - Optional query parameters to append to the URL.
  ///
  /// Returns a [TaskEither] that resolves to an [HttpApiResponse] on success
  /// or an [Exception] on failure.
  TaskEither<Exception, HttpApiResponse<T>> put<T>(
    String path, {
    required Map<String, Object?> data,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });

  /// Performs an HTTP DELETE request.
  ///
  /// [path] - The API endpoint path to request.
  /// [headers] - Optional HTTP headers to include in the request.
  /// [queryParams] - Optional query parameters to append to the URL.
  ///
  /// Returns a [TaskEither] that resolves to an [HttpApiResponse] on success
  /// or an [Exception] on failure.
  TaskEither<Exception, HttpApiResponse<T>> delete<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });

  /// Performs an HTTP PATCH request.
  ///
  /// [path] - The API endpoint path to request.
  /// [data] - The request body data to send.
  /// [headers] - Optional HTTP headers to include in the request.
  /// [queryParams] - Optional query parameters to append to the URL.
  ///
  /// Returns a [TaskEither] that resolves to an [HttpApiResponse] on success
  /// or an [Exception] on failure.
  TaskEither<Exception, HttpApiResponse<T>> patch<T>(
    String path, {
    required Map<String, Object?> data,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });
}
