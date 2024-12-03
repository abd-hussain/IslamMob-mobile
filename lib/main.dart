import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:islam_app/utils/logger.dart';
//TODO: local notification handle depend on athan

//TODO: add quran copy with defrent languages

//TODO: Fill for the first time   _getCoordinates(), _getDifferenceFromUTC() _getSelectedCalculationMethod(), _getMadhab(),

//TODO: if timer get zero then next salah time should be handled,

void main() {
  logDebugMessage(message: 'Application Started ...');
  runApp(const MyApp());
}
