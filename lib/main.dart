import 'package:flutter/material.dart';
import 'package:islam_app/domain/edge_to_edge_handler.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: Fix Description of the application and make sure to use keywards and fill it to the max, also short description should be more than 100 characters also app name

void main() {
  LoggerManagerBase.logInfo(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();
  // Enable edge-to-edge display
  EdgeToEdgeHandler.enableEdgeToEdge();
  runApp(const MyApp());
}
