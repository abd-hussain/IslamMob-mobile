import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:islam_app/utils/logger.dart';
//TODO: local notification handle depend on athan

//TODO : handle new strucutre for files

//TODO: add quran copy with defrent languages

//TODO: Fill for the first time   _getCoordinates(), _getDifferenceFromUTC() _getSelectedCalculationMethod(), _getMadhab(),

//TODO: if timer get zero then next salah time should be handled,

//TODO: azkar when user click it should not be hidden

//TODO: select location sometimes not working

//TODO: discripe for the user you need to download this pdf to read quran

//TODO: linkedin, whatsup, facebook not working

//TODO: download pdf sometimes when it finish the button not updated

void main() {
  logDebugMessage(message: 'Application Started ...');
  runApp(const MyApp());
}
