import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:islam_app/utils/logger.dart';
//TODO: Utils refactored
//TODO: Services refactored
//TODO: shared_widgets refactored
//TODO: local notification handle depend on athan

//TODO: defrentate between azkar and tasbee7 after salah

//TODO: add quran copy with defrent languages

//TODO:user shoudl choose his copy from inboarding depend on his language

void main() {
  logDebugMessage(message: 'Application Started ...');
  runApp(const MyApp());
}
