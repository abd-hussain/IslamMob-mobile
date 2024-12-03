import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

enum NotificationSoundType {
  fajir,
  zuhr,
  asr,
  maghrib,
  isha,
  before15Minutes,
  sunrise,
}

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  /// Initializes the local notification service with platform-specific settings.
  static Future<void> initialize() async {
    const androidSettings =
        AndroidInitializationSettings("@mipmap/ic_launcher");
    const iOSSettings = DarwinInitializationSettings();

    const initializationSettings = InitializationSettings(
      android: androidSettings,
      iOS: iOSSettings,
    );

    await _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _handleNotificationResponse,
      onDidReceiveBackgroundNotificationResponse: _handleNotificationResponse,
    );

    await _requestAndroidPermission();
  }

  /// Handles notification responses for both foreground and background events.
  static Future<void> _handleNotificationResponse(
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
    required String title,
    required String body,
    required DateTime scheduledTime,
    required NotificationSoundType soundType,
  }) async {
    final sound = _notificationFileName(soundType);
    final notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        'reminder_channel',
        'Reminder Notifications',
        importance: Importance.high,
        priority: Priority.high,
        sound: RawResourceAndroidNotificationSound(
            sound), // Without file extension
      ),
      iOS: DarwinNotificationDetails(
        sound: '$sound.mp3', // Use the file extension
        presentSound: true,
        presentAlert: true,
        presentBadge: true,
      ),
    );
    await _notificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.from(scheduledTime, tz.local),
      notificationDetails,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.dateAndTime,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  static String _notificationFileName(NotificationSoundType type) {
    switch (type) {
      case NotificationSoundType.fajir:
        return 'fajir';
      case NotificationSoundType.zuhr:
        return 'duher';
      case NotificationSoundType.asr:
        return 'asr';
      case NotificationSoundType.maghrib:
        return 'magreb';
      case NotificationSoundType.isha:
        return 'isha';
      case NotificationSoundType.before15Minutes:
        return 'warning';
      case NotificationSoundType.sunrise:
        return 'sunrise';
    }
  }
}
