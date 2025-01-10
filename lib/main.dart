import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: handle countdown notification for android
//TODO: theres a case where the location shown invalid or empty

void main() {
  LoggerManagerBase.logDebugMessage(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
