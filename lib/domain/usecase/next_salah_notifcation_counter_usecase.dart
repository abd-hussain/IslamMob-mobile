import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/salah_time_state_parser.dart';
import 'package:islam_mob_adhan/adhan.dart';

class NextSalahNotificationCounterUsecase {
  PrayUsecase _prayUsecase = PrayUsecase();

  Future<void> handleNextSalahNotification(BuildContext context) async {
    DateTime nextSalahTime = DateTime.now();
    SalahTimeState nextSalahType = const SalahTimeState.fajir();

    if (_prayUsecase.getNextPrayType() == const SalahTimeState.none()) {
      final tommorrow = DateTime.now().add(const Duration(days: 1));

      _prayUsecase = PrayUsecase(
          specificDate:
              DateComponents(tommorrow.year, tommorrow.month, tommorrow.day));
      final fajirDate = _prayUsecase.getAllPrayTimeAsDateTimeForToday().fajir;
      nextSalahTime = DateTime(
        tommorrow.year,
        tommorrow.month,
        tommorrow.day,
        fajirDate.hour,
        fajirDate.minute,
      );
    } else {
      nextSalahTime = _prayUsecase.getNextPrayTime()!;
      nextSalahType = _prayUsecase.getNextPrayType();
    }

    Duration diff = nextSalahTime.difference(DateTime.now());
    // 2. Convert that duration to minutes
    int minutes = diff.inMinutes;

    return await LocalNotificationRepository().countdownNotificationForAndroid(
      id: 0,
      context: context,
      minites: minutes,
      nextSalahTime: DateFormat('hh:mm a').format(nextSalahTime),
      type: SalahTimeStateParser.getNextSalahNotificationType(nextSalahType),
    );
  }
}
