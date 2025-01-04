import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_app/utils/exceptions.dart';

class HttpInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final box = Hive.box(DatabaseBoxConstant.userInfo);
    // final token = box.get(DatabaseFieldConstant.token);
    final language = box.get(DatabaseFieldConstant.userLanguageCode, defaultValue: "en");

    // // Set Authorization header if token exists
    // if (token != null && token.isNotEmpty) {
    //   options.headers["Authorization"] = "Bearer $token";
    // }

    // Set language header
    options.headers["lang"] = language;

    return handler.next(options);
  }

  @override
  Future<void> onResponse(Response response, ResponseInterceptorHandler handler) async {
    try {
      if (await _validateResponse(response)) {
        handler.next(response); // Pass the response to the next interceptor
      }
    } catch (error) {
      handler.reject(error as DioException); // Handle error
    }
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    return super.onError(err, handler); // Use the default error handling
  }

  Future<bool> _validateResponse(Response response) async {
    debugPrint("Request: ${response.requestOptions.path}, Status Code: ${response.statusCode}");

    switch (response.statusCode) {
      case 200:
      case 201:
        return true;
      case 403:
      case 404:
        _logError(response, "Client error occurred");
        throw _buildDioException(response, response.data["detail"] ?? response.data.toString());

      case 500:
        throw _buildDioException(response, "Server Down");

      default:
        _logError(response, "Unexpected error");
        throw _buildDioException(response, response.data["detail"]["message"], response.data["detail"]["request_id"]);
    }
  }

  void _logError(Response response, String message) {}

  DioException _buildDioException(Response response, String message, [String? requestId]) {
    return DioException(
      error: HttpException(
        status: response.statusCode!,
        message: message,
        requestId: requestId ?? "",
      ),
      requestOptions: response.requestOptions,
    );
  }
}
