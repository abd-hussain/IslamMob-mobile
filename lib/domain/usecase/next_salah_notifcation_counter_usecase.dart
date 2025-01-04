import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';
import 'package:islam_mob_adhan/adhan.dart';

class NextSalahNotificationCounterUsecase {
  PrayUsecase prayUsecase = PrayUsecase();

  Future<void> handleNextSalahNotification(BuildContext context) async {
    DateTime nextSalahTime = DateTime.now();
    SalahTimeState nextSalahType = const SalahTimeState.fajir();

    if (prayUsecase.getNextPrayType() == const SalahTimeState.none()) {
      final tommorrow = DateTime.now().add(const Duration(days: 1));

      prayUsecase = PrayUsecase(specificDate: DateComponents(tommorrow.year, tommorrow.month, tommorrow.day));
      final fajirDate = prayUsecase.getAllPrayTimeAsDateTimeForToday().fajir;
      nextSalahTime = DateTime(
        tommorrow.year,
        tommorrow.month,
        tommorrow.day,
        fajirDate.hour,
        fajirDate.minute,
      );
    } else {
      nextSalahTime = prayUsecase.getNextPrayTime()!;
      nextSalahType = prayUsecase.getNextPrayType();
    }

    Duration diff = nextSalahTime.difference(DateTime.now());
    // 2. Convert that duration to minutes
    int minutes = diff.inMinutes;

    return await LocalNotificationRepository.countdownNotificationForAndroid(
      context: context,
      minites: minutes,
      nextSalahTime: DateFormat('hh:mm a').format(nextSalahTime),
      type: getNextSalahNotificationType(nextSalahType),
    );
  }

  NotificationType getNextSalahNotificationType(SalahTimeState state) {
    switch (state) {
      case SalahTimeStateFajir():
        return NotificationType.fajir;
      case SalahTimeStateSunrise():
        return NotificationType.sunrise;
      case SalahTimeStateZhur():
        return NotificationType.zuhr;
      case SalahTimeStateAsr():
        return NotificationType.asr;
      case SalahTimeStateMaghrib():
        return NotificationType.maghrib;
      case SalahTimeStateIsha():
        return NotificationType.isha;
      case SalahTimeStateNone():
        return NotificationType.before15Minutes;
    }
  }
}
