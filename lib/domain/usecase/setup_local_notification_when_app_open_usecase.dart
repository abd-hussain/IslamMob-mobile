import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/domain/usecase/notify_adhan_notification_usecase.dart';
// until now 61,
// i handle all salah times notification 5 x 5 = 25
// i handle all Before salah times notification 5 x 5 = 25
// i handle sunrise 5
// i handle midnight 5
// 1 jom3aa al kahf
// 1 jom3a do3aa

// remaning //TODO
// 2 notifications reminder
class SetupLocalNotificationWhenAppOpenUseCase {
  final LocalNotificationRepository _localNotificationRepository =
      LocalNotificationRepository();

  final NotifyAdhanNotificationUsecase _notifyAdhanNotificationUsecase =
      NotifyAdhanNotificationUsecase();

  int _notificationCount = 0;

  Future<void> call({required BuildContext context}) async {
    // Cancel all existing notifications first
    await _localNotificationRepository.cancelAllNotifications();

    // Get pray timings for the next 5 days
    final prayTimingDateTimeModels = _getNext5DaysPrayingTime();

    // Schedule notifications for each day
    for (final prayTimingDateTimeModel in prayTimingDateTimeModels) {
      await _setupLocalNotificationForDate(
        // ignore: use_build_context_synchronously
        context: context,
        model: prayTimingDateTimeModel,
      );
    }
  }

  Future<void> _setupLocalNotificationForDate({
    required BuildContext context,
    required PrayTimingDateTimeModel model,
  }) async {
    // 1. Fajr //TODO
    // await _schedulePrayerNotifications(
    //   context: context,
    //   mainTime: model.fajir,
    //   mainType: const NotificationTypeState.fajir(),
    //   beforeType: const NotificationTypeState.before15Minutes(),
    // );

    // 2. Sunrise //TODO
    // await _scheduleSingleTimeNotification(
    //   // ignore: use_build_context_synchronously
    //   context: context,
    //   time: model.sunrise,
    //   type: const NotificationTypeState.sunrise(),
    // );

    // 3. Dhuhr //TODO
    // await _schedulePrayerNotifications(
    //   // ignore: use_build_context_synchronously
    //   context: context,
    //   mainTime: model.dhuhr,
    //   mainType: const NotificationTypeState.zuhr(),
    //   beforeType: const NotificationTypeState.before15Minutes(),
    // );

    // 4. Asr //TODO
    // await _schedulePrayerNotifications(
    //   // ignore: use_build_context_synchronously
    //   context: context,
    //   mainTime: model.asr,
    //   mainType: const NotificationTypeState.asr(),
    //   beforeType: const NotificationTypeState.before15Minutes(),
    // );

    // 5. Maghrib //TODO
    // await _schedulePrayerNotifications(
    //   // ignore: use_build_context_synchronously
    //   context: context,
    //   mainTime: model.maghrib,
    //   mainType: const NotificationTypeState.maghrib(),
    //   beforeType: const NotificationTypeState.before15Minutes(),
    // );

    // 6. Isha //TODO
    // await _schedulePrayerNotifications(
    //   // ignore: use_build_context_synchronously
    //   context: context,
    //   mainTime: model.isha,
    //   mainType: const NotificationTypeState.isha(),
    //   beforeType: const NotificationTypeState.before15Minutes(),
    // );

    // 7. Last Third of the Night
    await _scheduleSingleTimeNotification(
      // ignore: use_build_context_synchronously
      context: context,
      time: model.lastThirdOfTheNight,
      type: const NotificationTypeState.midnight(),
    );

    // 8. Special notifications for Friday (e.g., reading Al-Kahf, last hour do3aa)
    // ignore: use_build_context_synchronously //TODO
    // await _scheduleFridayNotifications(context, model);
  }

  /// Helper method to schedule the main prayer time + "15 minutes before" if still in the future.
  Future<void> _schedulePrayerNotifications({
    required BuildContext context,
    required DateTime mainTime,
    required NotificationTypeState mainType,
    required NotificationTypeState beforeType,
  }) async {
    // Schedule "15 minutes before" if it is still in the future
    final beforeTime = mainTime.subtract(const Duration(minutes: 15));
    await _scheduleSingleTimeNotification(
      context: context,
      time: beforeTime,
      type: beforeType,
    );

    // Schedule main time notification if it is still in the future
    await _scheduleSingleTimeNotification(
      // ignore: use_build_context_synchronously
      context: context,
      time: mainTime,
      type: mainType,
    );
  }

  /// Helper method to schedule a single notification if [time] is in the future.
  Future<void> _scheduleSingleTimeNotification({
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
      );
    }
  }

  /// Handles special notifications for Friday: reminder to read Al-Kahf, and last hour do3aa.
  Future<void> _scheduleFridayNotifications(
    BuildContext context,
    PrayTimingDateTimeModel model,
  ) async {
    // Check if Friday & schedule Al-Kahf reminder 30 minutes after sunrise
    final timeOfNotifyForReadAlKahf =
        model.sunrise.add(const Duration(minutes: 30));
    if (timeOfNotifyForReadAlKahf.isAfter(DateTime.now()) &&
        timeOfNotifyForReadAlKahf.weekday == DateTime.friday) {
      // Reminder to read Surat Al-Kahf
      await _scheduleSingleTimeNotification(
        context: context,
        time: timeOfNotifyForReadAlKahf,
        type: const NotificationTypeState.jom3aSoratAlKahfReminder(),
      );
    }
    // Last hour for do3aa between Asr and Maghrib
    final timeOfNotifyForJom3aDo3aa = _getAverageDate(model.asr, model.maghrib);
    if (timeOfNotifyForJom3aDo3aa.isAfter(DateTime.now()) &&
        timeOfNotifyForReadAlKahf.weekday == DateTime.friday) {
      await _scheduleSingleTimeNotification(
        // ignore: use_build_context_synchronously
        context: context,
        time: timeOfNotifyForJom3aDo3aa,
        type: const NotificationTypeState.jom3aLastHourForDoaa(),
      );
    }
  }

  /// Retrieves the next 5 days' prayer timings.
  List<PrayTimingDateTimeModel> _getNext5DaysPrayingTime() {
    final now = DateTime.now();
    final listOfDates = List.generate(
      5,
      (i) => now.add(Duration(days: i)),
    );

    return _notifyAdhanNotificationUsecase.getPrayTimingForSpesificDates(
      listOfDates: listOfDates,
    );
  }

  /// Returns the average of two DateTime values.
  DateTime _getAverageDate(DateTime d1, DateTime d2) {
    final ms1 = d1.millisecondsSinceEpoch;
    final ms2 = d2.millisecondsSinceEpoch;
    final averageMs = ((ms1 + ms2) / 2).floor();
    return DateTime.fromMillisecondsSinceEpoch(averageMs);
  }
}
