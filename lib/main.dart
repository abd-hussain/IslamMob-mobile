import 'package:flutter/material.dart';
import 'package:islam_app/domain/edge_to_edge_handler.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: correct ads errors

void main() {
  LoggerManagerBase.logInfo(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();
  // Enable edge-to-edge display
  EdgeToEdgeHandler.enableEdgeToEdge();
  runApp(const MyApp());
}
