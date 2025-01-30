import 'package:api_client/src/http/api/dio/dio_api_client.dart';
import 'package:api_client/src/http/api/model/http_api_exception.dart';
import 'package:api_client/src/http/api/model/http_api_response.dart';
import 'package:api_client/src/http/api_client_base.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mock.dart';

void main() {
  group(DioApiClient, () {
    late ApiClientBase apiClient;
    late MockDio mockDio;

    setUp(() {
      mockDio = MockDio();
      apiClient = DioApiClient(mockDio);
    });

    group('GET method', () {
      test('success response', () async {
        when(
          () => mockDio.get<String>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenAnswer(
          (_) async => _buildResponse(
            data: 'success',
            statusCode: 200,
            statusMessage: 'OK',
            requestOptions: RequestOptions(),
          ),
        );

        final result = await apiClient.get<String>('/path').run();

        verify(
          () => mockDio.get<String>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isRight(), isTrue);
        expect(result.toNullable(), isA<HttpApiResponse<String>>());
        expect(result.toNullable()?.data, 'success');
        expect(result.toNullable()?.statusCode, 200);
        expect(result.toNullable()?.statusMessage, 'OK');
      });

      test('with ConnectionException', () async {
        when(
          () => mockDio.get<String>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenThrow(
          DioException(
            message: 'Connection timeout',
            requestOptions: RequestOptions(),
            type: DioExceptionType.connectionTimeout,
          ),
        );

        final result = await apiClient.get<String>('/path').run();

        verify(
          () => mockDio.get<String>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isLeft(), isTrue);
        expect(result.getLeft().toNullable(), isA<ConnectionException>());
      });

      test('with ClientException', () async {
        when(
          () => mockDio.get<String>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenThrow(
          DioException(
            message: 'Bad Certificate',
            requestOptions: RequestOptions(),
            type: DioExceptionType.badCertificate,
          ),
        );

        final result = await apiClient.get<String>('/path').run();

        verify(
          () => mockDio.get<String>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isLeft(), isTrue);
        expect(result.getLeft().toNullable(), isA<ClientException>());
      });
    });

    group('POST method', () {
      test('success response', () async {
        when(
          () => mockDio.post<Map<String, dynamic>>(
            '/path',
            data: any<String>(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenAnswer(
          (_) async => _buildResponse(
            data: {'message': 'success'},
            statusCode: 201,
            statusMessage: 'Created',
            requestOptions: RequestOptions(),
          ),
        );

        final result = await apiClient.post<Map<String, dynamic>>(
          '/path',
          data: {'key': 'value'},
        ).run();

        verify(
          () => mockDio.post<Map<String, dynamic>>(
            '/path',
            data: any<String>(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isRight(), isTrue);
        expect(
          result.toNullable(),
          isA<HttpApiResponse<Map<String, dynamic>>>(),
        );
        expect(result.toNullable()?.data, {'message': 'success'});
        expect(result.toNullable()?.statusCode, 201);
        expect(result.toNullable()?.statusMessage, 'Created');
      });

      test('with ConnectionException', () async {
        when(
          () => mockDio.post<Map<String, dynamic>>(
            '/path',
            data: any<String>(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenThrow(
          DioException(
            message: 'Connection timeout',
            requestOptions: RequestOptions(),
            type: DioExceptionType.connectionTimeout,
          ),
        );

        final result = await apiClient.post<Map<String, dynamic>>(
          '/path',
          data: {'key': 'value'},
        ).run();

        verify(
          () => mockDio.post<Map<String, dynamic>>(
            '/path',
            data: any<String>(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isLeft(), isTrue);
        expect(result.getLeft().toNullable(), isA<ConnectionException>());
      });

      test('with ClientException', () async {
        when(
          () => mockDio.post<Map<String, dynamic>>(
            '/path',
            data: any<String>(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenThrow(
          DioException(
            message: 'Bad certificate',
            requestOptions: RequestOptions(),
            type: DioExceptionType.badCertificate,
          ),
        );

        final result = await apiClient.post<Map<String, dynamic>>(
          '/path',
          data: {'key': 'value'},
        ).run();

        verify(
          () => mockDio.post<Map<String, dynamic>>(
            '/path',
            data: any<String>(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isLeft(), isTrue);
        expect(result.getLeft().toNullable(), isA<ClientException>());
      });
    });

    group('DELETE method', () {
      test('success response', () async {
        when(
          () => mockDio.delete<Map<String, dynamic>>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenAnswer(
          (_) async => _buildResponse(
            statusCode: 204,
            data: {},
            statusMessage: 'No Content',
            requestOptions: RequestOptions(),
          ),
        );

        final result =
            await apiClient.delete<Map<String, dynamic>>('/path').run();

        verify(
          () => mockDio.delete<Map<String, dynamic>>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isRight(), isTrue);
        expect(result.toNullable(), isA<HttpApiResponse<void>>());
        expect(result.toNullable()?.data, <String, dynamic>{});
        expect(result.toNullable()?.statusCode, 204);
        expect(result.toNullable()?.statusMessage, 'No Content');
      });

      test('with ClientException', () async {
        when(
          () => mockDio.delete<Map<String, dynamic>>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenThrow(
          DioException(
            message: 'Bad certificate',
            requestOptions: RequestOptions(),
            type: DioExceptionType.badCertificate,
          ),
        );

        final result =
            await apiClient.delete<Map<String, dynamic>>('/path').run();

        verify(
          () => mockDio.delete<Map<String, dynamic>>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isLeft(), isTrue);
        expect(result.getLeft().toNullable(), isA<ClientException>());
      });

      test('with ConnectionException', () async {
        when(
          () => mockDio.delete<Map<String, dynamic>>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenThrow(
          DioException(
            message: 'Connection timeout',
            requestOptions: RequestOptions(),
            type: DioExceptionType.connectionTimeout,
          ),
        );

        final result =
            await apiClient.delete<Map<String, dynamic>>('/path').run();

        verify(
          () => mockDio.delete<Map<String, dynamic>>(
            '/path',
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isLeft(), isTrue);
        expect(result.getLeft().toNullable(), isA<ConnectionException>());
      });
    });

    group('PATCH method', () {
      test('success response', () async {
        when(
          () => mockDio.patch<Map<String, dynamic>>(
            '/path',
            data: any<String>(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenAnswer(
          (_) async => _buildResponse(
            statusCode: 200,
            data: {'message': 'success'},
            statusMessage: 'OK',
            requestOptions: RequestOptions(),
          ),
        );

        final result = await apiClient
            .patch<Map<String, dynamic>>('/path', data: {'key': 'value'}).run();

        verify(
          () => mockDio.patch<Map<String, dynamic>>(
            '/path',
            data: any<String>(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isRight(), isTrue);
        expect(
          result.toNullable(),
          isA<HttpApiResponse<Map<String, dynamic>>>(),
        );
        expect(result.toNullable()?.data, {'message': 'success'});
        expect(result.toNullable()?.statusCode, 200);
        expect(result.toNullable()?.statusMessage, 'OK');
      });
    });

    group('PUT method', () {
      test('success response', () async {
        when(
          () => mockDio.put<Map<String, dynamic>>(
            '/path',
            data: any<String>(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).thenAnswer(
          (_) async => _buildResponse(
            statusCode: 200,
            data: {'updated': true},
            statusMessage: 'OK',
            requestOptions: RequestOptions(),
          ),
        );

        final result = await apiClient
            .put<Map<String, dynamic>>('/path', data: {'key': 'value'}).run();

        verify(
          () => mockDio.put<Map<String, dynamic>>(
            '/path',
            data: any<String>(named: 'data'),
            queryParameters: any(named: 'queryParameters'),
            options: any(named: 'options'),
          ),
        ).called(1);
        expect(result.isRight(), isTrue);
        expect(
          result.toNullable(),
          isA<HttpApiResponse<Map<String, dynamic>>>(),
        );
        expect(result.toNullable()?.data, {'updated': true});
        expect(result.toNullable()?.statusCode, 200);
        expect(result.toNullable()?.statusMessage, 'OK');
      });
    });
  });
}

Response<T> _buildResponse<T>({
  required int statusCode,
  required T data,
  required String statusMessage,
  required RequestOptions requestOptions,
}) =>
    Response(
      statusCode: statusCode,
      data: data,
      statusMessage: statusMessage,
      requestOptions: requestOptions,
    );
