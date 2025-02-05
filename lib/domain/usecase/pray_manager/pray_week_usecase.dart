import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_mob_adhan/adhan.dart';

class PrayWeekUsecase {
  /// Generates prayer timings for the current week (-3 to +4 days).
  static List<PrayTimingDateTimeModel> generateWeeklyPrayerTimings(
      PrayUsecase prayUsecase) {
    final List<PrayTimingDateTimeModel> prayerTimings = [];

    for (int offset = -3; offset <= 4; offset++) {
      final DateTime date = DateTime.now().add(Duration(days: offset));
      prayUsecase = PrayUsecase(
          specificDate: DateComponents(date.year, date.month, date.day));
      final PrayTimingDateTimeModel timings =
          prayUsecase.getAllPrayTimeAsDateTimeForToday();

      prayerTimings.add(timings);
    }

    return prayerTimings;
  }
}
