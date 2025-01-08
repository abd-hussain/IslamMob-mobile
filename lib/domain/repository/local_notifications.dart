import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:islam_app/domain/model/local_notification.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalNotificationRepository {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  /// Initializes the local notification service with platform-specific settings.
  static Future<void> initialize() async {
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
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
  Future<void> scheduleNotification({
    required DateTime scheduledTime,
    required NotificationTypeState type,
    required BuildContext context,
    required int id,
  }) async {
    final details = _notificationDetails(context, type);
    String? iOSSoundFileName;
    String? androidSoundFileName;

    // Reference without the file extension
    if (details.soundFileName != null) {
      iOSSoundFileName = '${details.soundFileName}.wav'; // For iOS
      androidSoundFileName = details.soundFileName; // For Android
    }

    final notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        '$androidSoundFileName _channel',
        'Adhan Notifications',
        importance: Importance.high,
        priority: Priority.high,
        sound: androidSoundFileName != null
            ? RawResourceAndroidNotificationSound(androidSoundFileName)
            : null, // Without file extension
      ),
      iOS: DarwinNotificationDetails(
        sound: iOSSoundFileName,
        presentSound: true,
        presentAlert: true,
        presentBadge: true,
      ),
    );
    await _notificationsPlugin.zonedSchedule(
      id,
      details.rightNowMessage,
      details.description,
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
    required int id,
  }) async {
    final details = _notificationDetails(context, type);

    if (details.isItForCountdown == false) {
      return;
    }

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
      id,
      null,
      null,
      notificationDetails,
    );
  }

  /// Cancels all scheduled notifications.
  Future<void> cancelAllNotifications() async {
    await _notificationsPlugin.cancelAll();
  }

  static LocalNotification _notificationDetails(
      BuildContext context, NotificationTypeState type) {
    switch (type) {
      case NotificationTypeStateFajir():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowFajirMessage,
          description: "",
          soundFileName: "fajir",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeFajirMessage,
          nextSalahTime:
              AppLocalizations.of(context)!.nextSalahTimeFajirMessage,
          isItForCountdown: true,
        );
      case NotificationTypeStateZuhr():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowDuherMessage,
          description: "",
          soundFileName: "duher",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeDuherMessage,
          nextSalahTime:
              AppLocalizations.of(context)!.nextSalahTimeDuherMessage,
          isItForCountdown: true,
        );
      case NotificationTypeStateAsr():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowAsrMessage,
          description: "",
          soundFileName: "asr",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeAsrMessage,
          nextSalahTime: AppLocalizations.of(context)!.nextSalahTimeAsrMessage,
          isItForCountdown: true,
        );

      case NotificationTypeStateMaghrib():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowMagrebMessage,
          description: "",
          soundFileName: "magreb",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeMagrebMessage,
          nextSalahTime:
              AppLocalizations.of(context)!.nextSalahTimeMagrebMessage,
          isItForCountdown: true,
        );

      case NotificationTypeStateIsha():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowIshaMessage,
          description: "",
          soundFileName: "isha",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeIshaMessage,
          nextSalahTime: AppLocalizations.of(context)!.nextSalahTimeIshaMessage,
          isItForCountdown: true,
        );

      case NotificationTypeStateBefore15Minutes():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowWarningMessage,
          description: "",
          soundFileName: "warning",
          remeningTimeMessage: "",
          nextSalahTime: "",
          isItForCountdown: false,
        );

      case NotificationTypeStateSunrise():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.rightNowSunriseMessage,
          description: "",
          soundFileName: "sunrise",
          remeningTimeMessage:
              AppLocalizations.of(context)!.remeningTimeSunriseMessage,
          nextSalahTime:
              AppLocalizations.of(context)!.nextSalahTimeSunriseMessage,
          isItForCountdown: true,
        );
      case NotificationTypeReminderjom3aSoratAlKahfReminder():
        return LocalNotification(
          rightNowMessage:
              AppLocalizations.of(context)!.jom3AlkahfReminderTitle,
          description: AppLocalizations.of(context)!.jom3AlkahfReminderMessage,
          soundFileName: null,
          remeningTimeMessage: "",
          nextSalahTime: "",
          isItForCountdown: false,
        );
      case NotificationTypeStateJom3aLastHourForDoaa():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.jom3aDoaaTimeTitle,
          description: AppLocalizations.of(context)!.jom3adoaaTimeMessage,
          soundFileName: null,
          remeningTimeMessage: "",
          nextSalahTime: "",
          isItForCountdown: false,
        );
      case NotificationTypeStateMidnight():
        return LocalNotification(
          rightNowMessage: AppLocalizations.of(context)!.midnightTimeTitle,
          description: AppLocalizations.of(context)!.midnightTimeMessage,
          soundFileName: null,
          remeningTimeMessage: "",
          nextSalahTime: "",
          isItForCountdown: false,
        );
      case NotificationTypeReminderToOpenTheApp1():
        return LocalNotification(
          rightNowMessage:
              AppLocalizations.of(context)!.reminderToOpenTheApp1Title,
          description:
              AppLocalizations.of(context)!.reminderToOpenTheApp1Message,
          soundFileName: null,
          remeningTimeMessage: "",
          nextSalahTime: "",
          isItForCountdown: false,
        );
      case NotificationTypeReminderToOpenTheApp2():
        return LocalNotification(
          rightNowMessage:
              AppLocalizations.of(context)!.reminderToOpenTheApp2Title,
          description:
              AppLocalizations.of(context)!.reminderToOpenTheApp2Message,
          soundFileName: null,
          remeningTimeMessage: "",
          nextSalahTime: "",
          isItForCountdown: false,
        );
    }
  }
}
