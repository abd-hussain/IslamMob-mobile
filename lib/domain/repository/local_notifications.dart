import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:islam_app/domain/model/local_notification.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:timezone/timezone.dart' as tz;

class LocalNotificationRepository {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  /// Initializes the local notification service with platform-specific settings.
  Future<void> initialize() async {
    const initializationSettings = InitializationSettings(
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

      debugPrint('Notification Initialized Successfully!');
    } catch (e) {
      debugPrint('Error initializing notifications: $e');
    }
  }

  /// Handles notification responses for both foreground and background events.
  @pragma('vm:entry-point')
  static Future<void> _notificationTapBackground(
      NotificationResponse response) async {
    debugPrint('Notification received with payload: ${response.payload}');
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

  Future<void> countdownNotificationForAndroid({
    required BuildContext context,
    required int minites,
    required String nextSalahTime,
    required NotificationTypeState type,
    required int id,
  }) async {
    final details = _notificationDetails(context, type);

    // If it's not meant to be a countdown, bail out
    if (details.isItForCountdown == false) {
      return;
    }

    final notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        '${details.soundFileName} _channel_countdown',
        'Adhan Countdown Notifications',
        channelDescription: 'Shows upcoming salah times',
        importance: Importance.low,
        priority: Priority.low,
        // Turn off sound and vibration
        playSound: false,
        enableVibration: false,
        ongoing: true,
        autoCancel: false,
        styleInformation: BigTextStyleInformation(
          '',
          contentTitle: '${details.nextSalahTime} $nextSalahTime',
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
          AndroidNotificationAction(
            '1',
            IslamMobLocalizations.of(context).close,
            titleColor: Colors.red,
          ),
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
    return _notificationsPlugin.cancelAll();
  }

  static LocalNotification _notificationDetails(
      BuildContext context, NotificationTypeState type) {
    final localize = IslamMobLocalizations.of(context);

    switch (type) {
      case NotificationTypeStateFajir():
        return LocalNotification(
          rightNowMessage: localize.rightNowFajirMessage,
          description: '',
          soundFileName: 'fajir',
          remeningTimeMessage: localize.remeningTimeFajirMessage,
          nextSalahTime: localize.nextSalahTimeFajirMessage,
          isItForCountdown: true,
        );
      case NotificationTypeStateZuhr():
        return LocalNotification(
          rightNowMessage: localize.rightNowDuherMessage,
          description: '',
          soundFileName: 'duher',
          remeningTimeMessage: localize.remeningTimeDuherMessage,
          nextSalahTime: localize.nextSalahTimeDuherMessage,
          isItForCountdown: true,
        );
      case NotificationTypeStateAsr():
        return LocalNotification(
          rightNowMessage: localize.rightNowAsrMessage,
          description: '',
          soundFileName: 'asr',
          remeningTimeMessage: localize.remeningTimeAsrMessage,
          nextSalahTime: localize.nextSalahTimeAsrMessage,
          isItForCountdown: true,
        );

      case NotificationTypeStateMaghrib():
        return LocalNotification(
          rightNowMessage: localize.rightNowMagrebMessage,
          description: '',
          soundFileName: 'magreb',
          remeningTimeMessage: localize.remeningTimeMagrebMessage,
          nextSalahTime: localize.nextSalahTimeMagrebMessage,
          isItForCountdown: true,
        );

      case NotificationTypeStateIsha():
        return LocalNotification(
          rightNowMessage: localize.rightNowIshaMessage,
          description: '',
          soundFileName: 'isha',
          remeningTimeMessage: localize.remeningTimeIshaMessage,
          nextSalahTime: localize.nextSalahTimeIshaMessage,
          isItForCountdown: true,
        );

      case NotificationTypeStateBefore15Minutes():
        return LocalNotification(
          rightNowMessage: localize.rightNowWarningMessage,
          description: '',
          soundFileName: 'warning',
          remeningTimeMessage: '',
          nextSalahTime: '',
          isItForCountdown: false,
        );

      case NotificationTypeStateSunrise():
        return LocalNotification(
          rightNowMessage: localize.rightNowSunriseMessage,
          description: '',
          soundFileName: 'sunrise',
          remeningTimeMessage: localize.remeningTimeSunriseMessage,
          nextSalahTime: localize.nextSalahTimeSunriseMessage,
          isItForCountdown: true,
        );
      case NotificationTypeReminderjom3aSoratAlKahfReminder():
        return LocalNotification(
          rightNowMessage: localize.jom3AlkahfReminderTitle,
          description: localize.jom3AlkahfReminderMessage,
          soundFileName: null,
          remeningTimeMessage: '',
          nextSalahTime: '',
          isItForCountdown: false,
        );
      case NotificationTypeStateJom3aLastHourForDoaa():
        return LocalNotification(
          rightNowMessage: localize.jom3aDoaaTimeTitle,
          description: localize.jom3adoaaTimeMessage,
          soundFileName: null,
          remeningTimeMessage: '',
          nextSalahTime: '',
          isItForCountdown: false,
        );
      case NotificationTypeStateMidnight():
        return LocalNotification(
          rightNowMessage: localize.midnightTimeTitle,
          description: localize.midnightTimeMessage,
          soundFileName: null,
          remeningTimeMessage: '',
          nextSalahTime: '',
          isItForCountdown: false,
        );
      case NotificationTypeReminderToOpenTheApp1():
        return LocalNotification(
          rightNowMessage: localize.reminderToOpenTheApp1Title,
          description: localize.reminderToOpenTheApp1Message,
          soundFileName: null,
          remeningTimeMessage: '',
          nextSalahTime: '',
          isItForCountdown: false,
        );
      case NotificationTypeReminderToOpenTheApp2():
        return LocalNotification(
          rightNowMessage: localize.reminderToOpenTheApp2Title,
          description: localize.reminderToOpenTheApp2Message,
          soundFileName: null,
          remeningTimeMessage: '',
          nextSalahTime: '',
          isItForCountdown: false,
        );
    }
  }
}
