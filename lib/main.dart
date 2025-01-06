import 'package:flutter/material.dart';
// import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:islam_app/my_app/my_app.dart';
import 'package:logger_manager/logger_manager.dart';
// import 'package:workmanager/workmanager.dart';

//TODO: local notification sound not working
//TODO: local notification id understand the usgage
//TODO: cancel all of the scheduled notification when app is open
//TODO: fire a new notification schaduled when app is open
//TODO: add description to the notification as title specially for long message
void main() {
  LoggerManagerBase.logDebugMessage(message: 'Application Started ...');
  WidgetsFlutterBinding.ensureInitialized();

  // Workmanager().initialize(
  //   callbackDispatcher,
  //   isInDebugMode: true, // If enabled it will post a notification whenever the task is running. for debugging tasks
  // );
  // Periodic task for daily scheduling
  // Workmanager().registerPeriodicTask(
  //   "task-identifier",
  //   "dailyPrayerCalculation",
  //   initialDelay: const Duration(minutes: 2),
  //   constraints: Constraints(
  //     // connected or metered mark the task as requiring internet
  //     networkType: NetworkType.not_required,
  //     // require external power
  //     requiresCharging: false,
  //   ),

  //   // When no frequency is provided the default 15 minutes is set.
  //   // Minimum frequency is 15 min. Android will automatically change your frequency to 15 min if you have configured a lower frequency.
  //   frequency: const Duration(hours: 1),
  // );

  runApp(const MyApp());
}

// void callbackDispatcher() {
// Workmanager().executeTask((task, inputData) async {
//   // 1. Recalculate prayer times for the day
//   // 2. Schedule local notifications for each prayer

//   switch (task) {
//     case "task-identifier":
//       debugPrint("this method was called from native!");
//       break;
//     case Workmanager.iOSBackgroundTask:
//       debugPrint("iOS background fetch delegate ran");
//       break;
//   }

//   try {
//     //add code execution
//     DateTime scheduledDate = DateTime.now().add(const Duration(seconds: 3));

//     await LocalNotificationRepository.scheduleNotification(
//       id: 0,
//       title: "Scheduled Notification",
//       body: "This notification is scheduled to appear after 5 seconds",
//       scheduledTime: scheduledDate,
//       soundType: NotificationSoundType.isha,
//       seconds: 120,
//     );
//   } catch (err) {
//     Logger().e(err.toString()); // Logger flutter package, prints error on the debug console
//     throw Exception(err);
//   }
//   //Return true when the task executed successfully or not
//   return Future.value(true);
// });
// }
