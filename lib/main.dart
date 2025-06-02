import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';

//TODO: [ ] Download PDF should happen in background thread will the user navigating inside
//TODO: Control adhan sound for each prayer
//TODO: show widget out side the app for next prayer time
//TODO: azkar after salah should keep without counter
//TODO: Support should send to email instedof firestore
//TODO: kool ma tftaa7 al app lazm y3maal update ll location

void main() {
  LoggerManagerBase.logDebugMessage(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
