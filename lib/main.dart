import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:islam_app/utils/logger.dart';

//TODO: check coloring and logo
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  logDebugMessage(message: 'Application Started ...');
  runApp(MyApp(navigatorKey: navigatorKey));
}
