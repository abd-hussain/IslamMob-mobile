import 'dart:io';

import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/domain/usecase/notify_adhan_notification_usecase.dart';
import 'package:islam_app/my_app/locator.dart';

/// This UseCase schedules up to 64 local notifications:
/// - Up to 62 notifications for prayers:
///   - Up to 5 prayers x 2 notifications each (main + 15min before) => 10/day
///   - Sunrise (1/day)
///   - Last-third-of-the-night (1/day)
///   - Friday-specific (2 total if it happens on that day)
///   - Repeated over as many days as needed until we reach 62 or hit max days
/// - 2 final reminders, scheduled after the last prayer notification.
///
class SetupLocalNotificationWhenAppOpenUseCase {
  final _localNotificationRepository = locator<LocalNotificationRepository>();
  final NotifyAdhanNotificationUsecase _notifyAdhanNotificationUsecase =
      locator<NotifyAdhanNotificationUsecase>();

  // How many notifications we want from prayer-related scheduling.
  // The last 2 are the final "open the app" reminders.
  static const int maxPrayerNotifications = 62;

  // How far we extend scheduling if we have not reached 62 notifications yet.
  static const int maxDayCount = 14; // e.g., up to 2 weeks

  int _notificationCount =
      0; // will increment each time we schedule a notification

  /// We'll store the maximum time we schedule a prayer notification,
  /// so the final 2 reminders can come *after* that.
  DateTime? _lastScheduledTime;

  bool nextCounttdownNotificationScheduled = false;

  /// Entry method: cancels existing notifications, then schedules new ones.
  Future<void> call({required BuildContext context}) async {
    // 1. Cancel all existing notifications
    await _localNotificationRepository.cancelAllNotifications();

    // 2. Try scheduling enough days to reach up to 62 prayer notifications
    final now = DateTime.now();
    int scheduledPrayerNotifications = 0;
    int dayIndex = 0;

    while (scheduledPrayerNotifications < maxPrayerNotifications &&
        dayIndex < maxDayCount) {
      final targetDate = now.add(Duration(days: dayIndex));

      // Possibly skip day if user disabled notifications for "today," "3 days," or "week"
      if (_shouldSkipDay(targetDate)) {
        dayIndex++;
        continue;
      }

      // Get prayer timing for this specific day
      final prayTimingForDay = _notifyAdhanNotificationUsecase
          .getPrayTimingForSpesificDates(listOfDates: [targetDate]);
      if (prayTimingForDay.isNotEmpty) {
        // Schedules notifications for this day, returns how many got scheduled
        final dayCount = await _scheduleDailyNotifications(
          // ignore: use_build_context_synchronously
          context: context,
          model: prayTimingForDay.first,
        );
        scheduledPrayerNotifications += dayCount;
      }
      dayIndex++;
    }

    // 3. Schedule final 2 reminders AFTER the last scheduled prayer notification
    //    If we never scheduled anything, default to "now" so we at least schedule them.
    final referenceTime = _lastScheduledTime ?? DateTime.now();
    await _scheduleAppReminders(
      // ignore: use_build_context_synchronously
      context: context,
      referenceDate: referenceTime,
    );
  }

  Future<void> testNotification({
    required BuildContext context,
    required NotificationTypeState type,
    required String soundFileName,
  }) async {
    await _localNotificationRepository.cancelSpesificNotifications(111);
    await _localNotificationRepository.testNotification(
      id: 111,
      type: type,
      context: context,
      soundFileName: soundFileName,
    );
  }

  // ---------------------------------------------------------------------------
  //                           DAILY NOTIFICATIONS
  // ---------------------------------------------------------------------------

  /// Schedules all daily notifications for a specific day and
  /// returns how many were scheduled.
  Future<int> _scheduleDailyNotifications({
    required BuildContext context,
    required PrayTimingDateTimeModel model,
  }) async {
    int scheduledCount = 0;

    // 1. Fajr
    if (_isFajirNotificationAllowed()) {
      scheduledCount += await _schedulePrayerNotifications(
        context: context,
        mainTime: model.fajir,
        mainType: const NotificationTypeState.fajir(),
        beforeType: const NotificationTypeState.before15Minutes(),
        beforeAllowed: _isWarningBefore15MinNotificationAllowed(),
      );
    }

    // 2. Sunrise
    if (_isSunriseNotificationAllowed()) {
      scheduledCount += await _scheduleSingleTimeNotification(
        // ignore: use_build_context_synchronously
        context: context,
        time: model.sunrise,
        type: const NotificationTypeState.sunrise(),
      );
    }

    // 3. Dhuhr
    if (_isZhurNotificationAllowed()) {
      scheduledCount += await _schedulePrayerNotifications(
        // ignore: use_build_context_synchronously
        context: context,
        mainTime: model.dhuhr,
        mainType: const NotificationTypeState.zuhr(),
        beforeType: const NotificationTypeState.before15Minutes(),
        beforeAllowed: _isWarningBefore15MinNotificationAllowed(),
      );
    }

    // 4. Asr
    if (_isAsrNotificationAllowed()) {
      scheduledCount += await _schedulePrayerNotifications(
        // ignore: use_build_context_synchronously
        context: context,
        mainTime: model.asr,
        mainType: const NotificationTypeState.asr(),
        beforeType: const NotificationTypeState.before15Minutes(),
        beforeAllowed: _isWarningBefore15MinNotificationAllowed(),
      );
    }

    // 5. Maghrib
    if (_isMagreebNotificationAllowed()) {
      scheduledCount += await _schedulePrayerNotifications(
        // ignore: use_build_context_synchronously
        context: context,
        mainTime: model.maghrib,
        mainType: const NotificationTypeState.maghrib(),
        beforeType: const NotificationTypeState.before15Minutes(),
        beforeAllowed: _isWarningBefore15MinNotificationAllowed(),
      );
    }

    // 6. Isha
    if (_isIshaNotificationAllowed()) {
      scheduledCount += await _schedulePrayerNotifications(
        // ignore: use_build_context_synchronously
        context: context,
        mainTime: model.isha,
        mainType: const NotificationTypeState.isha(),
        beforeType: const NotificationTypeState.before15Minutes(),
        beforeAllowed: _isWarningBefore15MinNotificationAllowed(),
      );
    }

// 7. Last-third-of-the-night
    if (_isMidNightPrayNotificationAllowed()) {
      scheduledCount += await _scheduleSingleTimeNotification(
        // ignore: use_build_context_synchronously
        context: context,
        time: model.lastThirdOfTheNight,
        type: const NotificationTypeState.midnight(),
      );
    }

    // 8. Friday-specific notifications if applicable (Al-Kahf, last-hour do3aa)
    if (model.sunrise.weekday == DateTime.friday) {
      // ignore: use_build_context_synchronously
      scheduledCount += await _scheduleFridayNotifications(context, model);
    }

    return scheduledCount;
  }

  /// Schedules both the main prayer notification and a "15 minutes before" notification (if allowed),
  /// returns how many were scheduled.
  Future<int> _schedulePrayerNotifications({
    required BuildContext context,
    required DateTime mainTime,
    required NotificationTypeState mainType,
    required NotificationTypeState beforeType,
    required bool beforeAllowed,
  }) async {
    int count = 0;
    // 1. "15 min before"
    if (beforeAllowed) {
      final beforeTime = mainTime.subtract(const Duration(minutes: 15));
      count += await _scheduleSingleTimeNotification(
        context: context,
        time: beforeTime,
        type: beforeType,
      );
    }

    // 2. Main prayer time
    count += await _scheduleSingleTimeNotification(
      context: context,
      time: mainTime,
      type: mainType,
    );
    return count;
  }

  /// Schedules notifications specifically for Friday:
  /// - Reminder to read Surat Al-Kahf (30 min after sunrise) if allowed
  /// - Last-hour do3aa (average between Asr and Maghrib) if allowed
  /// Returns how many were scheduled.
  Future<int> _scheduleFridayNotifications(
    BuildContext context,
    PrayTimingDateTimeModel model,
  ) async {
    int count = 0;

    // a) Al-Kahf reminder
    if (_isJom3aAlkahfNotificationAllowed()) {
      final kahfTime = model.sunrise.add(const Duration(minutes: 30));
      count += await _scheduleSingleTimeNotification(
        context: context,
        time: kahfTime,
        type: const NotificationTypeState.jom3aSoratAlKahfReminder(),
      );
    }

    // b) Last-hour do3aa
    // Last-hour do3aa
    if (_isJom3aDoaaNotificationAllowed()) {
      final do3aaTime = _getAverageDate(model.asr, model.maghrib);
      count += await _scheduleSingleTimeNotification(
        // ignore: use_build_context_synchronously
        context: context,
        time: do3aaTime,
        type: const NotificationTypeState.jom3aLastHourForDoaa(),
      );
    }

    return count;
  }

  // ---------------------------------------------------------------------------
  //                           APP REMINDER NOTIFICATIONS
  // ---------------------------------------------------------------------------

  /// Schedules the final 2 reminders **after** the last prayer notification
  /// we've scheduled. If no notifications were scheduled at all,
  /// we fallback to 'now'.
  Future<void> _scheduleAppReminders({
    required BuildContext context,
    required DateTime referenceDate,
  }) async {
    // Example: 5 and 10 hours after the last scheduled prayer notification
    await _scheduleSingleTimeNotification(
      context: context,
      time: referenceDate.add(const Duration(hours: 5)),
      type: const NotificationTypeState.reminderToOpenTheApp1(),
    );

    await _scheduleSingleTimeNotification(
      // ignore: use_build_context_synchronously
      context: context,
      time: referenceDate.add(const Duration(hours: 10)),
      type: const NotificationTypeState.reminderToOpenTheApp2(),
    );
  }

  // ---------------------------------------------------------------------------
  //                            SHARED HELPERS
  // ---------------------------------------------------------------------------

  /// Schedules a single notification if [time] is in the future.
  /// Returns 1 if scheduled, 0 if not.
  Future<int> _scheduleSingleTimeNotification({
    required BuildContext context,
    required DateTime time,
    required NotificationTypeState type,
  }) async {
    if (time.isAfter(DateTime.now())) {
      await _localNotificationRepository.scheduleNotification(
        id: _notificationCount++,
        type: type,
        scheduledTime: time,
        context: context,
        soundFileName: _getSoundFileName(type),
      );
      // Update our `_lastScheduledTime` to be the max of itself and this time
      if (_lastScheduledTime == null || time.isAfter(_lastScheduledTime!)) {
        _lastScheduledTime = time;
      }

      // Optionally handle countdown on Android
      if (Platform.isAndroid && !nextCounttdownNotificationScheduled) {
        if (Platform.isAndroid && !nextCounttdownNotificationScheduled) {
          if (type == const NotificationTypeStateFajir() ||
              type == const NotificationTypeStateZuhr() ||
              type == const NotificationTypeStateAsr() ||
              type == const NotificationTypeStateMaghrib() ||
              type == const NotificationTypeStateIsha()) {
            final diff = time.difference(DateTime.now());
            final minutes = diff.inMinutes;
            await _localNotificationRepository.countdownNotificationForAndroid(
              id: _notificationCount++,
              // ignore: use_build_context_synchronously
              context: context,
              minites: minutes,
              nextSalahTime: DateFormat('hh:mm a').format(time),
              type: type,
              soundFileName: _getSoundFileName(type),
            );
            nextCounttdownNotificationScheduled = true;
          }
        }
      }
      return 1;
    }
    return 0;
  }

  /// Calculates the average of two DateTime values (midpoint).
  DateTime _getAverageDate(DateTime d1, DateTime d2) {
    final ms1 = d1.millisecondsSinceEpoch;
    final ms2 = d2.millisecondsSinceEpoch;
    final averageMs = ((ms1 + ms2) / 2).floor();
    return DateTime.fromMillisecondsSinceEpoch(averageMs);
  }

  /// Determines if we should skip scheduling for a given day
  /// based on the user's "disable notifications for X days" settings.
  bool _shouldSkipDay(DateTime date) {
    // Example logic:
    // If "disable all for today" and the day is 'today', skip it
    if (!_isNotificationForTodayAllowed() && _isSameDay(date, DateTime.now())) {
      return true;
    }
    // If "disable all for three days" and the day is within 3 days
    if (!_isNotificationForThreeTodayAllowed()) {
      final diff = date.difference(DateTime.now()).inDays;
      if (diff >= 0 && diff < 3) {
        return true;
      }
    }
    // If "disable all for week" and the day is within 7 days
    if (!_isNotificationForWeekAllowed()) {
      final diff = date.difference(DateTime.now()).inDays;
      if (diff >= 0 && diff < 7) {
        return true;
      }
    }

    return false;
  }

  /// Checks if [d1] and [d2] represent the exact same calendar day (ignoring time).
  bool _isSameDay(DateTime d1, DateTime d2) {
    return d1.year == d2.year && d1.month == d2.month && d1.day == d2.day;
  }

  // ---------------------------------------------------------------------------
  //                     DATABASE CHECKS FOR ALLOWED NOTIFICATIONS
  // ---------------------------------------------------------------------------

  bool _isFajirNotificationAllowed() {
    return DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableFajr,
      defaultValue: true,
    );
  }

  bool _isSunriseNotificationAllowed() {
    return DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableSunriseTime,
      defaultValue: true,
    );
  }

  bool _isZhurNotificationAllowed() {
    return DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableDuher,
      defaultValue: true,
    );
  }

  bool _isAsrNotificationAllowed() {
    return DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableAsr,
      defaultValue: true,
    );
  }

  bool _isMagreebNotificationAllowed() {
    return DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableMagrieb,
      defaultValue: true,
    );
  }

  bool _isIshaNotificationAllowed() {
    return DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableIsha,
      defaultValue: true,
    );
  }

  bool _isWarningBefore15MinNotificationAllowed() {
    return DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableNotificationBefore15Min,
      defaultValue: true,
    );
  }

  bool _isJom3aAlkahfNotificationAllowed() {
    return DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableJom3aAlkahf,
      defaultValue: true,
    );
  }

  bool _isJom3aDoaaNotificationAllowed() {
    return DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableJom3aDo3aa,
      defaultValue: true,
    );
  }

  bool _isMidNightPrayNotificationAllowed() {
    return DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableQeyamAlLayel,
      defaultValue: true,
    );
  }

  bool _isNotificationForTodayAllowed() {
    return !DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableAllForToday,
      defaultValue: false,
    );
  }

  bool _isNotificationForThreeTodayAllowed() {
    return !DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableAllForThreeDay,
      defaultValue: false,
    );
  }

  bool _isNotificationForWeekAllowed() {
    return !DataBaseManagerBase.getFromDatabase(
      key: LocalNotificationConstant.disableAllForWeek,
      defaultValue: false,
    );
  }

  // ---------------------------------------------------------------------------
  //                     DATABASE GET NOTIFICATIONS Sound
  // ---------------------------------------------------------------------------

  String _getSoundFileName(NotificationTypeState type) {
    switch (type) {
      case NotificationTypeStateFajir():
        return _fajirNotificationSound();
      case NotificationTypeStateZuhr():
        return _zhurNotificationSound();
      case NotificationTypeStateAsr():
        return _asrNotificationSound();
      case NotificationTypeStateMaghrib():
        return _magreebNotificationSound();
      case NotificationTypeStateIsha():
        return _ishaNotificationSound();
      case NotificationTypeStateBefore15Minutes():
        return "warning";
      case NotificationTypeStateSunrise():
        return "sunrise";
      default:
        return "";
    }
  }

  String _fajirNotificationSound() {
    return DataBaseManagerBase.getFromDatabase(
      key: DatabaseNotificationSoundConstant.fajirNotification,
      defaultValue: "adhan1",
    );
  }

  String _zhurNotificationSound() {
    return DataBaseManagerBase.getFromDatabase(
      key: DatabaseNotificationSoundConstant.zhurNotification,
      defaultValue: "adhan2",
    );
  }

  String _asrNotificationSound() {
    return DataBaseManagerBase.getFromDatabase(
      key: DatabaseNotificationSoundConstant.asrNotification,
      defaultValue: "adhan3",
    );
  }

  String _magreebNotificationSound() {
    return DataBaseManagerBase.getFromDatabase(
      key: DatabaseNotificationSoundConstant.maghribNotification,
      defaultValue: "adhan4",
    );
  }

  String _ishaNotificationSound() {
    return DataBaseManagerBase.getFromDatabase(
      key: DatabaseNotificationSoundConstant.ishaNotification,
      defaultValue: "adhan5",
    );
  }
}
