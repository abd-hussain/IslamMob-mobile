import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:islam_app/utils/logger.dart';

//TODO: notification permission not working on IOS Testflight
void main() {
  logDebugMessage(message: 'Application Started ...');
  runApp(const MyApp());
}
