import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: local notification sound not working
//TODO: cancel all of the scheduled notification when app is open
//TODO: fire a new notification schaduled when app is open

void main() {
  LoggerManagerBase.logDebugMessage(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}
