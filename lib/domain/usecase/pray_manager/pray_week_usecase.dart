import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_mob_adhan/adhan.dart';

/// Use case for generating weekly Islamic prayer time schedules.
///
/// This class provides functionality to calculate prayer times for a full week
/// period, which is essential for Islamic prayer planning and scheduling. It supports:
/// - **Weekly prayer schedules** for advance planning and preparation
/// - **Multi-day prayer time calculation** for travel and scheduling
/// - **Prayer time consistency** across consecutive days
/// - **Islamic calendar integration** with daily prayer requirements
///
/// The weekly view helps Muslims:
/// - Plan their daily schedules around prayer times
/// - Prepare for travel with accurate prayer schedules
/// - Coordinate family and community prayer activities
/// - Maintain consistent Islamic time awareness
///
/// The use case calculates prayer times for a 8-day period (3 days before
/// today, today, and 4 days after) to provide comprehensive weekly coverage
/// for prayer planning and Islamic time management.
class PrayWeekUsecase {
  /// Generates prayer timings for the current week (-3 to +4 days).
  static List<PrayTimingDateTimeModel> generateWeeklyPrayerTimings(
    PrayUsecase prayUsecase,
  ) {
    final List<PrayTimingDateTimeModel> prayerTimings = [];

    for (int offset = -3; offset <= 4; offset++) {
      final DateTime date = DateTime.now().add(Duration(days: offset));
      prayUsecase = PrayUsecase(
        specificDate: DateComponents(date.year, date.month, date.day),
      );
      final PrayTimingDateTimeModel timings = prayUsecase
          .getAllPrayTimeAsDateTimeForToday();

      prayerTimings.add(timings);
    }

    return prayerTimings;
  }
}
