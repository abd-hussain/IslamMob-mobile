import 'package:flutter/material.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_mob_adhan/adhan.dart';

/*
55 notifications 


1-  notification to remind the user for open the app and setup the next notification 

2-  reminder for the setup

3- last reminder for the setup 



55 + 3 ‎ = 58	


Midnight notification for salad al 8eyaaam


For 5 day 

58 + 5 ‎ = 63	

One notification for jom3aa do3aa mostajaab


64 type of notifications——————————before 15 min —> 25
Fajir - > 5
Sunrise - 5
Zhur - 5
Aser - 5
Magreb - 5
Aisha - 5

Reminder to setup - 3

Midnight - 5

Jom3aa do3aaa - 1


25+30+3+5+1 = 64
*/

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
      id: 0,
      context: context,
      type: const NotificationTypeState.before15Minutes(),
      scheduledTime: fajirPrayTime.subtract(const Duration(minutes: 15)),
    );
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 0,
        context: context,
        type: const NotificationTypeState.fajir(),
        scheduledTime: fajirPrayTime,
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 0,
        context: context,
        type: const NotificationTypeState.sunrise(),
        scheduledTime: sunrisePrayTime,
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 0,
        context: context,
        type: const NotificationTypeState.before15Minutes(),
        scheduledTime: dhuhrPrayTime.subtract(const Duration(minutes: 15)),
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 0,
        context: context,
        type: const NotificationTypeState.zuhr(),
        scheduledTime: dhuhrPrayTime,
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 0,
        context: context,
        type: const NotificationTypeState.before15Minutes(),
        scheduledTime: asrPrayTime.subtract(const Duration(minutes: 15)),
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 0,
        context: context,
        type: const NotificationTypeState.asr(),
        scheduledTime: asrPrayTime,
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 0,
        context: context,
        type: const NotificationTypeState.before15Minutes(),
        scheduledTime: maghribPrayTime.subtract(const Duration(minutes: 15)),
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 0,
        context: context,
        type: const NotificationTypeState.maghrib(),
        scheduledTime: maghribPrayTime,
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 0,
        context: context,
        type: const NotificationTypeState.before15Minutes(),
        scheduledTime: ishaPrayTime.subtract(const Duration(minutes: 15)),
      );
    }
    if (context.mounted) {
      await LocalNotificationRepository.scheduleNotification(
        id: 0,
        context: context,
        type: const NotificationTypeState.isha(),
        scheduledTime: ishaPrayTime,
      );
    }
  }
}
