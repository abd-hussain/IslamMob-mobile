import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:islam_app/domain/model/local_notification.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalNotificationRepository {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static const AndroidInitializationSettings _initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  static const DarwinInitializationSettings _initializationSettingsIOS =
      DarwinInitializationSettings();

  /// Initializes the local notification service with platform-specific settings.
  static Future<void> initialize() async {
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: _initializationSettingsAndroid,
      iOS: _initializationSettingsIOS,
    );

    try {
      await _requestAndroidPermission();

      await _notificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: _notificationTapBackground,
        onDidReceiveBackgroundNotificationResponse: _notificationTapBackground,
      );

      debugPrint("Notification Initialized Successfully!");
    } catch (e) {
      debugPrint("Error initializing notifications: $e");
    }
  }

  /// Handles notification responses for both foreground and background events.
  @pragma('vm:entry-point')
  static Future<void> _notificationTapBackground(
      NotificationResponse response) async {
    debugPrint("Notification received with payload: ${response.payload}");
  }

  /// Requests notification permission on Android devices.
  static Future<void> _requestAndroidPermission() async {
    final androidPlugin =
        _notificationsPlugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();
    if (androidPlugin != null) {
      await androidPlugin.requestNotificationsPermission();
    }
  }

  /// Schedules a notification at the specified date and time.
  static Future<void> scheduleNotification({
    required int id,
    required DateTime scheduledTime,
    required NotificationTypeState type,
    required BuildContext context,
  }) async {
    final details = _notificationDetails(context, type);
    final notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        'reminder_channel',
        'Reminder Notifications',
        importance: Importance.high,
        priority: Priority.high,
        sound: RawResourceAndroidNotificationSound(
            details.soundFileName), // Without file extension
      ),
      iOS: DarwinNotificationDetails(
        sound: '${details.soundFileName}.mp3', // Use the file extension
        presentSound: true,
        presentAlert: true,
        presentBadge: true,
      ),
    );
    await _notificationsPlugin.zonedSchedule(
      id,
      details.rightNowMessage,
      null,
      tz.TZDateTime.from(scheduledTime, tz.local),
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.dateAndTime,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  static Future<void> countdownNotificationForAndroid({
    required BuildContext context,
    required int minites,
    required String nextSalahTime,
    required NotificationTypeState type,
  }) async {
    final details = _notificationDetails(context, type);

    final notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        'salah_channel_id', // channel id
        'Salah Notifications', // channel name
        channelDescription: 'Shows upcoming salah times',
        importance: Importance.max,
        priority: Priority.high,
        // If you want ongoing (non-dismissable) notifications:
        ongoing: true,
        autoCancel: false,
        styleInformation: BigTextStyleInformation(
          "",
          contentTitle: "${details.nextSalahTime} $nextSalahTime",
          htmlFormatContentTitle: true,
          htmlFormatBigText: true,
          htmlFormatTitle: true,
        ),
        subText: details.remeningTimeMessage,
        color: Colors.red,
        when: DateTime.now().millisecondsSinceEpoch + (minites * 60 * 1000),
        usesChronometer: true,
        visibility: NotificationVisibility.public,
        indeterminate: true,
        icon: '@mipmap/logo',
        chronometerCountDown: true,
        colorized: true,
        actions: [
          AndroidNotificationAction("1", AppLocalizations.of(context)!.close,
              cancelNotification: true, titleColor: Colors.red),
        ],
      ),
    );
    await _notificationsPlugin.show(
      1,
      null,
      null,
      notificationDetails,
    );
  }

  static LocalNotification _notificationDetails(
      BuildContext context, NotificationTypeState type) {
    switch (type) {
      case NotificationTypeStateFajir():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowFajirMessage,
          soundFileName: "fajir",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeFajirMessage,
          nextSalahTime:
              AppLocalizations.of(context)!.nextSalahTimeFajirMessage,
        );
      case NotificationTypeStateZuhr():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowDuherMessage,
          soundFileName: "duher",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeDuherMessage,
          nextSalahTime:
              AppLocalizations.of(context)!.nextSalahTimeDuherMessage,
        );

      case NotificationTypeStateAsr():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowAsrMessage,
          soundFileName: "asr",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeAsrMessage,
          nextSalahTime: AppLocalizations.of(context)!.nextSalahTimeAsrMessage,
        );

      case NotificationTypeStateMaghrib():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowMagrebMessage,
          soundFileName: "magreb",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeMagrebMessage,
          nextSalahTime:
              AppLocalizations.of(context)!.nextSalahTimeMagrebMessage,
        );

      case NotificationTypeStateIsha():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowIshaMessage,
          soundFileName: "isha",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeIshaMessage,
          nextSalahTime: AppLocalizations.of(context)!.nextSalahTimeIshaMessage,
        );

      case NotificationTypeStateBefore15Minutes():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowWarningMessage,
          soundFileName: "warning",
          remeningTimeMessage: "",
          nextSalahTime: "",
        );

      case NotificationTypeStateSunrise():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowSunriseMessage,
          soundFileName: "sunrise",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeSunriseMessage,
          nextSalahTime:
              AppLocalizations.of(context)!.nextSalahTimeSunriseMessage,
        );
    }
  }
}
