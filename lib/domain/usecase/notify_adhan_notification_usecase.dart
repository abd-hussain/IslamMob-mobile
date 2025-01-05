import 'package:flutter/material.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_mob_adhan/adhan.dart';

class NotifyAdhanNotificationUsecase {
  PrayUsecase _prayUsecase = PrayUsecase();

  Future<void> prepareLocalNotificationForTomorrow(BuildContext context) async {
    final tommorrow = DateTime.now().add(const Duration(days: 1));
    _prayUsecase = PrayUsecase(
        specificDate:
            DateComponents(tommorrow.year, tommorrow.month, tommorrow.day));
    PrayTimingDateTimeModel prayTimingDateTimeModel =
        _prayUsecase.getAllPrayTimeAsDateTimeForToday();

    final fajirPrayTime = DateTime(
      tommorrow.year,
      tommorrow.month,
      tommorrow.day,
      prayTimingDateTimeModel.fajir.hour,
      prayTimingDateTimeModel.fajir.minute,
    );

    final sunrisePrayTime = DateTime(
      tommorrow.year,
      tommorrow.month,
      tommorrow.day,
      prayTimingDateTimeModel.sunrise.hour,
      prayTimingDateTimeModel.sunrise.minute,
    );

    final dhuhrPrayTime = DateTime(
      tommorrow.year,
      tommorrow.month,
      tommorrow.day,
      prayTimingDateTimeModel.dhuhr.hour,
      prayTimingDateTimeModel.dhuhr.minute,
    );

    final asrPrayTime = DateTime(
      tommorrow.year,
      tommorrow.month,
      tommorrow.day,
      prayTimingDateTimeModel.asr.hour,
      prayTimingDateTimeModel.asr.minute,
    );

    final maghribPrayTime = DateTime(
      tommorrow.year,
      tommorrow.month,
      tommorrow.day,
      prayTimingDateTimeModel.maghrib.hour,
      prayTimingDateTimeModel.maghrib.minute,
    );

    final ishaPrayTime = DateTime(
      tommorrow.year,
      tommorrow.month,
      tommorrow.day,
      prayTimingDateTimeModel.isha.hour,
      prayTimingDateTimeModel.isha.minute,
    );

    await LocalNotificationRepository.scheduleNotification(
      id: 1,
      context: context,
      type: const NotificationTypeState.before15Minutes(),
      scheduledTime: fajirPrayTime.subtract(const Duration(minutes: 15)),
    );
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 2,
        context: context,
        type: const NotificationTypeState.fajir(),
        scheduledTime: fajirPrayTime,
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 3,
        context: context,
        type: const NotificationTypeState.before15Minutes(),
        scheduledTime: sunrisePrayTime.subtract(const Duration(minutes: 15)),
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 4,
        context: context,
        type: const NotificationTypeState.sunrise(),
        scheduledTime: sunrisePrayTime,
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 5,
        context: context,
        type: const NotificationTypeState.before15Minutes(),
        scheduledTime: dhuhrPrayTime.subtract(const Duration(minutes: 15)),
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 6,
        context: context,
        type: const NotificationTypeState.zuhr(),
        scheduledTime: dhuhrPrayTime,
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 7,
        context: context,
        type: const NotificationTypeState.before15Minutes(),
        scheduledTime: asrPrayTime.subtract(const Duration(minutes: 15)),
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 8,
        context: context,
        type: const NotificationTypeState.asr(),
        scheduledTime: asrPrayTime,
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 9,
        context: context,
        type: const NotificationTypeState.before15Minutes(),
        scheduledTime: maghribPrayTime.subtract(const Duration(minutes: 15)),
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 10,
        context: context,
        type: const NotificationTypeState.maghrib(),
        scheduledTime: maghribPrayTime,
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 11,
        context: context,
        type: const NotificationTypeState.before15Minutes(),
        scheduledTime: ishaPrayTime.subtract(const Duration(minutes: 15)),
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 12,
        context: context,
        type: const NotificationTypeState.isha(),
        scheduledTime: ishaPrayTime,
      );
    }
  }
}
