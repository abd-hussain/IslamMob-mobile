import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_mob_adhan/adhan.dart';

/// Use case for calculating prayer times for notification scheduling.
///
/// This class provides functionality to calculate precise prayer times for
/// multiple dates, which is essential for scheduling Islamic prayer notifications
/// (Adhan) in advance. It supports:
/// - **Bulk prayer time calculation** for multiple dates
/// - **Notification scheduling** for prayer reminders
/// - **Accurate time conversion** with proper date handling
/// - **All prayer times** including voluntary prayer times
/// - **Consistent timing** across different dates
///
/// The use case is particularly important for:
/// - Scheduling prayer notifications for the upcoming week/month
/// - Ensuring accurate prayer times for each specific date
/// - Supporting offline notification scheduling
/// - Maintaining prayer time accuracy across date changes
/// - Providing reliable Islamic time management
///
/// This enables the app to schedule prayer notifications in advance,
/// ensuring Muslims receive timely reminders even when the app is
/// not actively running.
class NotifyAdhanNotificationUsecase {
  /// Internal prayer use case instance for calculations.
  PrayUsecase _prayUsecase = PrayUsecase();

  /// Calculates prayer times for a list of specific dates.
  ///
  /// This method processes multiple dates and calculates accurate prayer times
  /// for each date, returning properly formatted DateTime objects that can be
  /// used for notification scheduling. It handles:
  /// - All five daily prayers (Fajr, Dhuhr, Asr, Maghrib, Isha)
  /// - Sunrise time (end of Fajr prayer window)
  /// - Special night times (middle of night, last third of night)
  /// - Proper date-time construction with correct date components
  ///
  /// The method ensures that each prayer time is calculated specifically for
  /// its date, accounting for the gradual changes in prayer times throughout
  /// the year due to the sun's position.
  ///
  /// Parameters:
  /// - [listOfDates]: List of DateTime objects for which to calculate prayer times
  ///
  /// Returns a list of [PrayTimingDateTimeModel] objects, each containing
  /// all prayer times for the corresponding date. The returned times are
  /// properly formatted DateTime objects suitable for notification scheduling.
  ///
  /// Example:
  /// ```dart
  /// final usecase = NotifyAdhanNotificationUsecase();
  /// final dates = [
  ///   DateTime(2024, 3, 15),
  ///   DateTime(2024, 3, 16),
  ///   DateTime(2024, 3, 17),
  /// ];
  /// final prayerTimes = usecase.getPrayTimingForSpesificDates(listOfDates: dates);
  /// // Schedule notifications for each prayer time
  /// ```
  List<PrayTimingDateTimeModel> getPrayTimingForSpesificDates(
      {required List<DateTime> listOfDates}) {
    final List<PrayTimingDateTimeModel> prayTimingDateTimeModels = [];

    for (final date in listOfDates) {
      _prayUsecase = PrayUsecase(
          specificDate: DateComponents(date.year, date.month, date.day));
      final PrayTimingDateTimeModel prayTimingDateTimeModel =
          _prayUsecase.getAllPrayTimeAsDateTimeForToday();

      final fajirPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.fajir.hour,
        prayTimingDateTimeModel.fajir.minute,
        prayTimingDateTimeModel.fajir.second,
      );

      final sunrisePrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.sunrise.hour,
        prayTimingDateTimeModel.sunrise.minute,
      );

      final dhuhrPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.dhuhr.hour,
        prayTimingDateTimeModel.dhuhr.minute,
      );

      final asrPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.asr.hour,
        prayTimingDateTimeModel.asr.minute,
      );

      final maghribPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.maghrib.hour,
        prayTimingDateTimeModel.maghrib.minute,
      );

      final ishaPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.isha.hour,
        prayTimingDateTimeModel.isha.minute,
      );

      final middleOfTheNightPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.middleOfTheNight.hour,
        prayTimingDateTimeModel.middleOfTheNight.minute,
      );

      final lastThirdOfTheNightPrayTime = DateTime(
        date.year,
        date.month,
        date.day,
        prayTimingDateTimeModel.lastThirdOfTheNight.hour,
        prayTimingDateTimeModel.lastThirdOfTheNight.minute,
      );

      prayTimingDateTimeModels.add(
        PrayTimingDateTimeModel(
          fajir: fajirPrayTime,
          sunrise: sunrisePrayTime,
          dhuhr: dhuhrPrayTime,
          asr: asrPrayTime,
          maghrib: maghribPrayTime,
          isha: ishaPrayTime,
          middleOfTheNight: middleOfTheNightPrayTime,
          lastThirdOfTheNight: lastThirdOfTheNightPrayTime,
        ),
      );
    }

    return prayTimingDateTimeModels;
  }
}
