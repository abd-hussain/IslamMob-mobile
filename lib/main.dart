import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: download should handle zip file and extract it here, to make it faster
//TODO: theres a defrent in magreeb, zhur, sunrise time always
//TODO: handle push notification , test and allow user to disable it
//TODO: update the locaion each time the app open

void main() {
  LoggerManagerBase.logDebugMessage(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
