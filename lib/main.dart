import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: show widget out side the app for next prayer time
//TODO: handle description to show the stopped notification for 3 days when it will get back
void main() {
  LoggerManagerBase.logInfo(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
