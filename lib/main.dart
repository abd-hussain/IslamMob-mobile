import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: theres a case where the location shown invalid or empty
//TODO: download should handle zip file and extract it here, to make it faster
//TODO: theres a defrent in magreeb, zhur, sunrise time always
//TODO: handle push notification , test and allow user to disable it

void main() {
  LoggerManagerBase.logDebugMessage(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
