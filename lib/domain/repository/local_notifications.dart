import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:islam_app/domain/model/local_notification.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:timezone/timezone.dart' as tz;

/// Repository for managing local notifications in the Islam Mob app.
///
/// This class provides comprehensive notification management for Islamic
/// prayer times, reminders, and other religious observances. It handles:
/// - **Prayer time notifications** with customizable sounds (Adhan)
/// - **Countdown notifications** showing time until next prayer
/// - **Islamic reminders** for special occasions and practices
/// - **Platform-specific implementations** for Android and iOS
/// - **Permission management** for notification access
///
/// The repository supports various Islamic notification types including:
/// - Five daily prayer notifications (Fajr, Zuhr, Asr, Maghrib, Isha)
/// - Sunrise time notifications
/// - 15-minute prayer reminders
/// - Friday special reminders (Surah Al-Kahf, Dua time)
/// - Midnight time notifications
/// - App usage reminders
///
/// All notifications are localized and can include traditional Islamic
/// call to prayer (Adhan) sounds or custom notification tones.
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
      // First: request Android permission as you already do
      await _requestAndroidPermission();
      // await _requestiOSPermission();

      await _notificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: _notificationTapBackground,
        onDidReceiveBackgroundNotificationResponse: _notificationTapBackground,
      );

      // **Now** explicitly request iOS permission:
      await _notificationsPlugin
          .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin
          >()
          ?.requestPermissions(alert: true, badge: true, sound: true);

      debugPrint('Notification Initialized Successfully!');
    } catch (e) {
      debugPrint('Error initializing notifications: $e');
    }
  }

  /// Handles notification responses for both foreground and background events.
  @pragma('vm:entry-point')
  static Future<void> _notificationTapBackground(
    NotificationResponse response,
  ) async {
    debugPrint('Notification received with payload: ${response.payload}');
  }

  /// Requests notification permission on Android devices.
  static Future<void> _requestAndroidPermission() async {
    final androidPlugin = _notificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    if (androidPlugin != null) {
      await androidPlugin.requestNotificationsPermission();
    }
  }

  /// Displays a test notification immediately for preview purposes.
  ///
  /// This method allows users to preview notification sounds and content
  /// before applying them to their prayer time settings. It's useful for:
  /// - Testing different Adhan sounds
  /// - Previewing notification content and formatting
  /// - Verifying notification permissions and functionality
  /// - Allowing users to make informed choices about notification settings
  ///
  /// Parameters:
  /// - [type]: The type of notification to test (prayer, reminder, etc.)
  /// - [context]: Build context for localization
  /// - [id]: Unique identifier for this test notification
  /// - [soundFileName]: The sound file to play with the notification
  Future<void> testNotification({
    required NotificationTypeState type,
    required BuildContext context,
    required int id,
    required String soundFileName,
  }) async {
    final localize = IslamMobLocalizations.of(context);
    final details = _notificationDetails(
      context: context,
      type: type,
      localize: localize,
      soundFileName: soundFileName,
    );

    final notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        '${details.soundFileName}_channel_$id',
        'Adhan Notifications',
        importance: Importance.high,
        priority: Priority.high,
        sound: details.soundFileName != null
            ? RawResourceAndroidNotificationSound(details.soundFileName)
            : null,
      ),
      iOS: DarwinNotificationDetails(
        sound: details.soundFileName != null
            ? '${details.soundFileName}.wav'
            : null,
        presentSound: true,
        presentAlert: true,
        presentBadge: true,
      ),
    );

    await _notificationsPlugin.show(
      id,
      details.rightNowMessage,
      details.description,
      notificationDetails,
    );
  }

  /// Schedules a notification at the specified date and time.
  Future<void> scheduleNotification({
    required DateTime scheduledTime,
    required NotificationTypeState type,
    required BuildContext context,
    required int id,
    required String soundFileName,
  }) async {
    final localize = IslamMobLocalizations.of(context);
    final details = _notificationDetails(
      context: context,
      type: type,
      localize: localize,
      soundFileName: soundFileName,
    );
    // String? iOSSoundFileName;
    // String? androidSoundFileName;

    // // Reference without the file extension
    // if (details.soundFileName != null) {
    //   iOSSoundFileName = '${details.soundFileName}.wav'; // For iOS
    //   androidSoundFileName = '${details.soundFileName}'; // For Android
    // }

    final notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        '${details.soundFileName}_channel_$id',
        'Adhan Notifications',
        importance: Importance.high,
        priority: Priority.high,
        sound: details.soundFileName != null
            ? RawResourceAndroidNotificationSound(details.soundFileName)
            : null,
      ),
      iOS: DarwinNotificationDetails(
        sound: details.soundFileName != null
            ? '${details.soundFileName}.wav'
            : null,
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

  /// Creates a persistent countdown notification for Android devices.
  ///
  /// This method displays an ongoing notification that shows the countdown
  /// to the next prayer time. It's specifically designed for Android and
  /// provides a persistent reminder in the notification panel showing:
  /// - Time remaining until the next prayer
  /// - Name of the upcoming prayer
  /// - Chronometer-style countdown display
  /// - Action to dismiss the notification
  ///
  /// The countdown notification helps Muslims stay aware of prayer times
  /// throughout their day without needing to open the app repeatedly.
  /// It uses Android's chronometer feature for accurate time display.
  ///
  /// Parameters:
  /// - [context]: Build context for localization
  /// - [minites]: Minutes until the next prayer (for chronometer calculation)
  /// - [nextSalahTime]: Formatted time string for the next prayer
  /// - [type]: The type of notification for content customization
  /// - [id]: Unique identifier for this countdown notification
  /// - [soundFileName]: Sound file (though countdown notifications are silent)
  Future<void> countdownNotificationForAndroid({
    required BuildContext context,
    required int minites,
    required String nextSalahTime,
    required NotificationTypeState type,
    required int id,
    required String soundFileName,
  }) async {
    final localize = IslamMobLocalizations.of(context);
    final details = _notificationDetails(
      context: context,
      type: type,
      localize: localize,
      soundFileName: soundFileName,
    );

    // If it's not meant to be a countdown, bail out
    if (!details.isItForCountdown) return;

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
            localize.close,
            titleColor: Colors.red,
          ),
        ],
      ),
    );
    await _notificationsPlugin.show(id, null, null, notificationDetails);
  }

  /// Cancels all scheduled notifications.
  Future<void> cancelSpesificNotifications(int id) async {
    return _notificationsPlugin.cancel(id);
  }

  /// Cancels all scheduled notifications.
  Future<void> cancelAllNotifications() async {
    return _notificationsPlugin.cancelAll();
  }

  static LocalNotification _notificationDetails({
    required BuildContext context,
    required NotificationTypeState type,
    required IslamMobLocalizations localize,
    required String soundFileName,
  }) {
    switch (type) {
      case NotificationTypeStateFajir():
        return LocalNotification(
          rightNowMessage: localize.rightNowFajirMessage,
          description: '',
          soundFileName: soundFileName,
          remeningTimeMessage: localize.remeningTimeFajirMessage,
          nextSalahTime: localize.nextSalahTimeFajirMessage,
          isItForCountdown: true,
        );
      case NotificationTypeStateZuhr():
        return LocalNotification(
          rightNowMessage: localize.rightNowDuherMessage,
          description: '',
          soundFileName: soundFileName,
          remeningTimeMessage: localize.remeningTimeDuherMessage,
          nextSalahTime: localize.nextSalahTimeDuherMessage,
          isItForCountdown: true,
        );
      case NotificationTypeStateAsr():
        return LocalNotification(
          rightNowMessage: localize.rightNowAsrMessage,
          description: '',
          soundFileName: soundFileName,
          remeningTimeMessage: localize.remeningTimeAsrMessage,
          nextSalahTime: localize.nextSalahTimeAsrMessage,
          isItForCountdown: true,
        );

      case NotificationTypeStateMaghrib():
        return LocalNotification(
          rightNowMessage: localize.rightNowMagrebMessage,
          description: '',
          soundFileName: soundFileName,
          remeningTimeMessage: localize.remeningTimeMagrebMessage,
          nextSalahTime: localize.nextSalahTimeMagrebMessage,
          isItForCountdown: true,
        );

      case NotificationTypeStateIsha():
        return LocalNotification(
          rightNowMessage: localize.rightNowIshaMessage,
          description: '',
          soundFileName: soundFileName,
          remeningTimeMessage: localize.remeningTimeIshaMessage,
          nextSalahTime: localize.nextSalahTimeIshaMessage,
          isItForCountdown: true,
        );

      case NotificationTypeStateBefore15Minutes():
        return LocalNotification(
          rightNowMessage: localize.rightNowWarningMessage,
          description: '',
          soundFileName: soundFileName,
          remeningTimeMessage: '',
          nextSalahTime: '',
          isItForCountdown: false,
        );

      case NotificationTypeStateSunrise():
        return LocalNotification(
          rightNowMessage: localize.rightNowSunriseMessage,
          description: '',
          soundFileName: soundFileName,
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
