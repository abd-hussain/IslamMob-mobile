import 'package:dio/dio.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/services/general/network_info_service.dart';
import 'package:islam_app/utils/constants/app_constant.dart';
import 'package:islam_app/utils/exceptions.dart';
import 'package:islam_app/utils/mixins.dart';
import 'package:islam_app/utils/repository/http_interceptor.dart';

enum RequestType { get, post, delete, put }

class HttpRepository {
  Future<dynamic> callRequest({
    required RequestType requestType,
    required String methodName,
    Map<String, dynamic> queryParam = const {},
    Model? postBody,
    FormData? formData,
  }) async {
    if (!await locator<NetworkInfoService>().checkConnectivityOnLaunch()) {
      throw ConnectionException(
          message: "Please check your internet connection");
    }

    final HttpMetric metric = FirebasePerformance.instance.newHttpMetric(
      "${AppConstant.applicationMainURL}$methodName",
      requestType == RequestType.get
          ? HttpMethod.Get
          : requestType == RequestType.post
              ? HttpMethod.Post
              : requestType == RequestType.delete
                  ? HttpMethod.Delete
                  : HttpMethod.Put,
    );

    metric.start();

    final dioClient = _createDioClient();

    // Prepare the request data
    final data = formData ?? postBody?.toJson();

    try {
      final response = await _sendRequest(
        dioClient: dioClient,
        requestType: requestType,
        methodName: methodName,
        queryParam: queryParam,
        data: data,
      );
      return response.data;
    } on DioException catch (_) {
      rethrow; // Rethrow DioExceptions for handling upstream
    } finally {
      metric.stop();
    }
  }

  Dio _createDioClient() {
    final dioClient = locator<Dio>()
      ..options = BaseOptions(
        baseUrl: AppConstant.applicationMainURL,
        followRedirects: false,
        validateStatus: (status) => true,
      )
      ..interceptors.add(locator<HttpInterceptor>());
    return dioClient;
  }

  Future<Response> _sendRequest({
    required Dio dioClient,
    required RequestType requestType,
    required String methodName,
    Map<String, dynamic> queryParam = const {},
    dynamic data,
  }) async {
    switch (requestType) {
      case RequestType.get:
        return await dioClient.get(methodName, queryParameters: queryParam);
      case RequestType.post:
        return await dioClient.post(methodName,
            data: data, queryParameters: queryParam);
      case RequestType.delete:
        return await dioClient.delete(methodName,
            data: data, queryParameters: queryParam);
      case RequestType.put:
        return await dioClient.put(methodName,
            data: data, queryParameters: queryParam);
    }
  }
}
