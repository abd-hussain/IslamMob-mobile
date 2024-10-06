import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:islam_app/utils/logger.dart';
import 'package:islam_app/utils/exceptions.dart';

//TODO: check coloring and logo
final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runZonedGuarded(() {
    logDebugMessage(message: 'Application Started ...');
    WidgetsFlutterBinding.ensureInitialized();

    runApp(MyApp(
      navigatorKey: navigatorKey,
    ));
  }, (error, stackTrace) {
    if (error is DioException) {
      final exception = error.error;
      if (exception is HttpException) {
        debugPrint("MAIN");
        debugPrint(exception.status.toString());
        debugPrint(exception.message);
        debugPrint(exception.requestId);
      }
    } else if (error is ConnectionException) {}
  });
}
