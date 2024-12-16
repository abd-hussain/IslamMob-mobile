import 'package:flutter/material.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:islam_app/utils/logger.dart';

//TODO: local notification handle depend on athan

//TODO: add quran copy with defrent languages

//TODO: Fill for the first time   _getCoordinates(), _getDifferenceFromUTC() _getSelectedCalculationMethod(), _getMadhab(),

//TODO: if timer get zero then next salah time should be handled,

//TODO: select location sometimes not working

//TODO: whatsup, facebook

//TODO: local notification with timer such as other apps

// DateTime scheduledDate = DateTime.now().add(const Duration(seconds: 3));
// LocalNotificationRepository.scheduleNotification(
//   id: 0,
//   title: "Scheduled Notification",
//   body: "This notification is scheduled to appear after 5 seconds",
//   scheduledTime: scheduledDate,
//   soundType: NotificationSoundType.isha,
// );

void main() {
  logDebugMessage(message: 'Application Started ...');
  runApp(const MyApp());
}
