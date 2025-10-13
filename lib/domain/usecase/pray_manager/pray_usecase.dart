import 'package:hijri/hijri_calendar.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/hijri_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/all_pray_time_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/next_pray_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_calculation_db_parser.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_mob_adhan/adhan.dart';
import 'package:preferences/preferences.dart';

/// A comprehensive use case class for managing prayer time operations.
///
/// This class serves as the main interface for prayer time functionality,
/// providing access to:
/// - Next prayer information (type and time)
/// - Today's prayer times
/// - Monthly prayer time calendars
/// - Prayer time calculations based on user settings
///
/// The class automatically retrieves user preferences from the database
/// including calculation method, madhab, coordinates, and timezone settings.
class PrayUsecase {
  /// An optional specific date for prayer time calculations.
  ///
  /// When provided, prayer times will be calculated for this specific date
  /// instead of the current date. If null, calculations use the current date.
  final DateComponents? specificDate;

  /// Creates an instance of [PrayUsecase].
  ///
  /// Optionally accepts a [specificDate] parameter to calculate prayer times
  /// for a particular date. If not provided, calculations will use the current date.
  ///
  /// The constructor automatically initializes the prayer manager repository
  /// with user settings retrieved from the database.
  PrayUsecase({this.specificDate}) {
    _initalize();
  }
  late PrayManagerRepository _prayManager;

  void _initalize() {
    _prayManager = PrayManagerRepository(
      coordinates: _retrieveCoordinates(),
      utcOffset: _retrieveUtcOffset(),
      calculationMethod: _retrieveCalculationMethod(),
      madhab: _retrieveMadhab(),
      specificDate: specificDate,
      highLatitudeRule: _retrieveHighLatitudeRule(),
    );
  }

  /// Determines the type of the next upcoming prayer.
  ///
  /// This method analyzes the current time and returns the state representing
  /// which prayer is next (Fajr, Dhuhr, Asr, Maghrib, or Isha).
  ///
  /// Returns a [SalahTimeState] indicating the next prayer type.
  SalahTimeState getNextPrayType() {
    return NextPrayUsecase(_prayManager).nextPrayerType();
  }

  /// Gets the exact time of the next upcoming prayer.
  ///
  /// This method calculates when the next prayer will occur based on
  /// the current time and prayer schedule.
  ///
  /// Returns a [DateTime] representing when the next prayer will start,
  /// or null if no next prayer can be determined.
  DateTime? getNextPrayTime() {
    return NextPrayUsecase(_prayManager).nextPrayerTime();
  }

  /// Retrieves all prayer times for today as DateTime objects.
  ///
  /// This method returns today's complete prayer schedule including
  /// all five daily prayers and Sunnah times, with user-configured
  /// time adjustments applied.
  ///
  /// Returns a [PrayTimingDateTimeModel] containing all prayer times for today.
  PrayTimingDateTimeModel getAllPrayTimeAsDateTimeForToday() {
    return AllPrayTimeUsecase(_prayManager).getAllPrayTimeAsDateTimeForToday();
  }

  /// Retrieves prayer times for an entire Hijri month as calendar models.
  ///
  /// This method calculates prayer times for every day in the specified
  /// Hijri month and returns them formatted for calendar display.
  /// Each day includes prayer times, dates in both Hijri and Gregorian
  /// calendars, and day names.
  ///
  /// Parameters:
  /// - [hijriDate]: A [HijriCalendar] object representing any date within
  ///   the desired month. The method will calculate times for the entire month.
  ///
  /// Returns a [List<CalenderModel>] containing prayer times for each day
  /// in the specified Hijri month.
  List<CalenderModel> getAllPrayTimeAsDateTimeForPassedMonth(
    HijriCalendar hijriDate,
  ) {
    final last = HijriUsecase.getLastDayNumberForThisMonth(hijriDate);

    final fromDate = hijriDate.hijriToGregorian(
      hijriDate.hYear,
      hijriDate.hMonth,
      1,
    );
    final toDate = hijriDate.hijriToGregorian(
      hijriDate.hYear,
      hijriDate.hMonth,
      last,
    );

    return AllPrayTimeUsecase(
      _prayManager,
    ).getAllPrayTimeAsDateTimeForMonth(fromDate: fromDate, toDate: toDate);
  }

  /// Retrieves the selected Madhab from the Hive box.
  Madhab _retrieveMadhab() {
    final String madhab = locator<IslamPreferences>().getValue(
      key: DatabaseFieldPrayCalculationConstant.selectedMadhab,
      defaultValue: "MadhabState.hanafi()",
    );
    return PrayDBParser.parseMadhab(madhab);
  }

  /// Retrieves the selected calculation method from the Hive box.
  CalculationMethod _retrieveCalculationMethod() {
    final String selectedMethod = locator<IslamPreferences>().getValue(
      key: DatabaseFieldPrayCalculationConstant.selectedCalculationMethod,
      defaultValue: "PrayCalculationMethodState.jordanAwqaf()",
    );

    return PrayDBParser.parseCalculationMethod(selectedMethod);
  }

  HighLatitudeRule? _retrieveHighLatitudeRule() {
    final String selectedMethod = locator<IslamPreferences>().getValue(
      key: DatabaseFieldPrayCalculationConstant.selectedHighLatitude,
      defaultValue: "PrayHightLatitudeCaluclationState.none()",
    );

    return PrayDBParser.parseHighLatitudeRule(selectedMethod);
  }

  /// Retrieves the selected coordinates (latitude and longitude) from the Hive box.
  Coordinates _retrieveCoordinates() {
    final double latitude = locator<IslamPreferences>().getValue(
      key: DatabaseFieldLocationConstant.selectedLat,
      defaultValue: 0,
    );
    final double longitude = locator<IslamPreferences>().getValue(
      key: DatabaseFieldLocationConstant.selectedLong,
      defaultValue: 0,
    );

    return Coordinates(latitude, longitude);
  }

  /// Retrieves the UTC offset, either from Hive or the device's timezone.
  Duration _retrieveUtcOffset() {
    final String hourOffset = locator<IslamPreferences>().getValue(
      key: DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour,
      defaultValue: "",
    );
    final String minuteOffset = locator<IslamPreferences>().getValue(
      key: DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin,
      defaultValue: "",
    );

    if (hourOffset.isEmpty) {
      return DateTime.now().timeZoneOffset;
    } else {
      return Duration(
        hours: int.tryParse(hourOffset) ?? 0,
        minutes: int.tryParse(minuteOffset) ?? 0,
      );
    }
  }
}
