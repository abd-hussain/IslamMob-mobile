import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:islam_app/utils/logger.dart';
//TODO: local notification handle depend on athan
//TODO: notificaion sound not working in iOS

//TODO: add quran copy with defrent languages

//TODO:user shoudl choose his copy from inboarding depend on his language

//TODO: Fill for the first time   _getCoordinates(), _getDifferenceFromUTC() _getSelectedCalculationMethod(), _getMadhab(),

//TODO: if timer get zero then next salah time should be handled,

void main() {
  logDebugMessage(message: 'Application Started ...');
  runApp(const MyApp());
}
