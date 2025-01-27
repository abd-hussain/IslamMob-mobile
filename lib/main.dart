import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: make the download faster zip is not a soluation
//TODO: theres a defrent in magreeb, zhur, sunrise time always
//TODO: Qibla direction is not correct
//TODO: if app is open notification is not working
//TODO: theres crash we need to check it
//TODO: we need a new button for move to the next bookmark page
//TODO: android need permission for download pdf file in boardign screen

void main() {
  LoggerManagerBase.logDebugMessage(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
