import 'package:database_manager/database_manager.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/domain/usecase/hijri_usecase.dart';
import 'package:islam_mob_adhan/adhan.dart';

/// A use case class that handles prayer time calculations and retrieval.
///
/// This class provides functionality to:
/// - Get prayer times for today as DateTime objects
/// - Get prayer times for a range of dates (monthly calendar)
/// - Apply user-configured time adjustments to each prayer
/// - Handle both Islamic prayer times and Sunnah times
class AllPrayTimeUsecase {
  /// The repository responsible for managing prayer time calculations and configurations.
  ///
  /// This repository provides access to prayer time calculations, user preferences,
  /// and location-based prayer time data.
  final PrayManagerRepository prayManager;

  /// Creates an instance of [AllPrayTimeUsecase].
  ///
  /// Requires a [prayManager] repository that provides prayer time calculations
  /// and user configuration data.
  AllPrayTimeUsecase(this.prayManager);

  /// Retrieves all prayer times for today as DateTime objects.
  ///
  /// This method calculates and returns today's prayer times including:
  /// - The five daily prayers (Fajr, Sunrise, Dhuhr, Asr, Maghrib, Isha)
  /// - Sunnah times (Middle of the Night, Last Third of the Night)
  /// - User-configured time adjustments applied to each prayer
  ///
  /// All times are returned as [DateTime] objects with any user-defined
  /// minute adjustments already applied from the database settings.
  ///
  /// Returns a [PrayTimingDateTimeModel] containing all prayer times for today.
  PrayTimingDateTimeModel getAllPrayTimeAsDateTimeForToday() {
    final prayerTimes = prayManager.getPrayerTimes();
    final sunnahTimes = prayManager.getSunnahTimes(prayerTimes);

    return PrayTimingDateTimeModel(
      fajir: prayerTimes.fajr.add(_fajirAddedMinutes()),
      sunrise: prayerTimes.sunrise.add(_sunriseAddedMinutes()),
      dhuhr: prayerTimes.dhuhr.add(_zhurAddedMinutes()),
      asr: prayerTimes.asr.add(_asrAddedMinutes()),
      maghrib: prayerTimes.maghrib.add(_maghribAddedMinutes()),
      isha: prayerTimes.isha.add(_ishaAddedMinutes()),
      middleOfTheNight: sunnahTimes.middleOfTheNight.add(
        _middleOfTheNightAddedMinutes(),
      ),
      lastThirdOfTheNight: sunnahTimes.lastThirdOfTheNight.add(
        _lastThirdOfTheNightAddedMinutes(),
      ),
    );
  }

  /// Retrieves prayer times for a range of dates as a list of calendar models.
  ///
  /// This method calculates prayer times for each day within the specified date range
  /// and returns them formatted as [CalenderModel] objects. Each model contains:
  /// - All five daily prayer times (Fajr, Sunrise, Dhuhr, Asr, Maghrib, Isha)
  /// - Hijri and Gregorian dates
  /// - Day name and today indicator
  /// - User-configured time adjustments applied to each prayer
  ///
  /// Parameters:
  /// - [fromDate]: The start date of the range (inclusive)
  /// - [toDate]: The end date of the range (inclusive)
  ///
  /// Returns a [List<CalenderModel>] containing prayer times for each day in the range.
  ///
  /// Throws [ArgumentError] if [fromDate] is after [toDate].
  List<CalenderModel> getAllPrayTimeAsDateTimeForMonth({
    required DateTime fromDate,
    required DateTime toDate,
  }) {
    final List<CalenderModel> monthlyPrayerTimes = [];

    // Ensure the `fromDate` is before or equal to `toDate`
    if (fromDate.isAfter(toDate)) {
      throw ArgumentError("fromDate must be before or equal to toDate");
    }

    // Loop through each day in the range
    for (
      DateTime currentDate = fromDate;
      !currentDate.isAfter(toDate);
      currentDate = currentDate.add(const Duration(days: 1))
    ) {
      prayManager.specificDate = DateComponents.from(currentDate);
      final prayerTimes = prayManager.getPrayerTimes();

      final hijriDate = HijriUsecase.getHijriDateForThisDate(prayerTimes.isha);

      // Add the day's prayer times to the list
      monthlyPrayerTimes.add(
        CalenderModel(
          ishaTime: DateFormat(
            'hh:mm',
          ).format(prayerTimes.isha.add(_ishaAddedMinutes())),
          magribTime: DateFormat(
            'hh:mm',
          ).format(prayerTimes.maghrib.add(_maghribAddedMinutes())),
          asrTime: DateFormat(
            'hh:mm',
          ).format(prayerTimes.asr.add(_asrAddedMinutes())),
          zhurTime: DateFormat(
            'hh:mm',
          ).format(prayerTimes.dhuhr.add(_zhurAddedMinutes())),
          sunriseTime: DateFormat(
            'hh:mm',
          ).format(prayerTimes.sunrise.add(_sunriseAddedMinutes())),
          fajirTime: DateFormat(
            'hh:mm',
          ).format(prayerTimes.fajr.add(_fajirAddedMinutes())),
          dayName: DateFormat(
            'EEEE',
          ).format(prayerTimes.isha.add(_ishaAddedMinutes())),
          dateHijri: DateFormat(
            'MM/dd',
          ).format(prayerTimes.isha.add(_ishaAddedMinutes())),
          dateMilady: "${hijriDate.hMonth}/${hijriDate.hDay}",
          isToday: _isToday(prayerTimes.isha.add(_ishaAddedMinutes())),
        ),
      );
    }

    return monthlyPrayerTimes;
  }

  bool _isToday(DateTime dateTime) {
    final now = DateTime.now();
    return dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day;
  }

  Duration _fajirAddedMinutes() {
    final String selectedTimeFajirMin =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin,
              defaultValue: "0",
            )
            as String;

    return Duration(minutes: int.tryParse(selectedTimeFajirMin) ?? 0);
  }

  Duration _sunriseAddedMinutes() {
    final String selectedTimeSunriseMin =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin,
              defaultValue: "0",
            )
            as String;

    return Duration(minutes: int.tryParse(selectedTimeSunriseMin) ?? 0);
  }

  Duration _zhurAddedMinutes() {
    final String selectedTimeZhurMin =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin,
              defaultValue: "0",
            )
            as String;

    return Duration(minutes: int.tryParse(selectedTimeZhurMin) ?? 0);
  }

  Duration _asrAddedMinutes() {
    final String selectedTimeAsrMin =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin,
              defaultValue: "0",
            )
            as String;

    return Duration(minutes: int.tryParse(selectedTimeAsrMin) ?? 0);
  }

  Duration _maghribAddedMinutes() {
    final String selectedTimeMaghribMin =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin,
              defaultValue: "0",
            )
            as String;

    return Duration(minutes: int.tryParse(selectedTimeMaghribMin) ?? 0);
  }

  Duration _ishaAddedMinutes() {
    final String selectedTimeIshaMin =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin,
              defaultValue: "0",
            )
            as String;

    return Duration(minutes: int.tryParse(selectedTimeIshaMin) ?? 0);
  }

  Duration _middleOfTheNightAddedMinutes() {
    final String selectedTimeMidnightMin =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin,
              defaultValue: "0",
            )
            as String;

    return Duration(minutes: int.tryParse(selectedTimeMidnightMin) ?? 0);
  }

  Duration _lastThirdOfTheNightAddedMinutes() {
    final String selectedTimeLast3thOfNightMin =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldPrayCalculationConstant
                  .selectedTimeLast3thOfNightMin,
              defaultValue: "0",
            )
            as String;

    return Duration(minutes: int.tryParse(selectedTimeLast3thOfNightMin) ?? 0);
  }
}
