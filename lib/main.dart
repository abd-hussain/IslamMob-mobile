import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: theres a defrent in magreeb, zhur, sunrise time always

void main() {
  LoggerManagerBase.logDebugMessage(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
