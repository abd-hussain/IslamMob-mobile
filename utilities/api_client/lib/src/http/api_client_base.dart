import 'package:api_client/src/http/api/model/http_api_response.dart';
import 'package:fpdart/fpdart.dart';

abstract class ApiClientBase {
  TaskEither<Exception, HttpApiResponse<T>> get<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });

  TaskEither<Exception, HttpApiResponse<T>> post<T>(
    String path, {
    required Map<String, Object?> data,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });

  TaskEither<Exception, HttpApiResponse<T>> put<T>(
    String path, {
    required Map<String, Object?> data,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });

  TaskEither<Exception, HttpApiResponse<T>> delete<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });

  TaskEither<Exception, HttpApiResponse<T>> patch<T>(
    String path, {
    required Map<String, Object?> data,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
  });
}
