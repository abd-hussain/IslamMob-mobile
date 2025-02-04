import 'package:database_manager/database_manager.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/hijri_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/all_pray_time_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/next_pray_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_calculation_db_parser.dart';
import 'package:islam_mob_adhan/adhan.dart';

class PrayUsecase {
  final DateComponents? specificDate;
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

  SalahTimeState getNextPrayType() {
    return NextPrayUsecase(_prayManager).nextPrayerType();
  }

  DateTime? getNextPrayTime() {
    return NextPrayUsecase(_prayManager).nextPrayerTime();
  }

  PrayTimingDateTimeModel getAllPrayTimeAsDateTimeForToday() {
    return AllPrayTimeUsecase(_prayManager).getAllPrayTimeAsDateTimeForToday();
  }

  List<CalenderModel> getAllPrayTimeAsDateTimeForPassedMonth(
    HijriCalendar hijriDate,
  ) {
    final last = HijriUsecase.getLastDayNumberForThisMonth(hijriDate);

    final fromDate =
        hijriDate.hijriToGregorian(hijriDate.hYear, hijriDate.hMonth, 1);
    final toDate =
        hijriDate.hijriToGregorian(hijriDate.hYear, hijriDate.hMonth, last);

    return AllPrayTimeUsecase(_prayManager)
        .getAllPrayTimeAsDateTimeForMonth(fromDate: fromDate, toDate: toDate);
  }

  /// Retrieves the selected Madhab from the Hive box.
  Madhab _retrieveMadhab() {
    final String madhab = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldPrayCalculationConstant.selectedMadhab,
        defaultValue: "MadhabState.hanafi()");
    return PrayDBParser.parseMadhab(madhab);
  }

  /// Retrieves the selected calculation method from the Hive box.
  CalculationMethod _retrieveCalculationMethod() {
    final String selectedMethod = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldPrayCalculationConstant.selectedCalculationMethod,
      defaultValue: "PrayCalculationMethodState.jordanAwqaf()",
    );

    return PrayDBParser.parseCalculationMethod(selectedMethod);
  }

  HighLatitudeRule? _retrieveHighLatitudeRule() {
    final String selectedMethod = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldPrayCalculationConstant.selectedHighLatitude,
      defaultValue: "PrayHightLatitudeCaluclationState.none()",
    );

    return PrayDBParser.parseHighLatitudeRule(selectedMethod);
  }

  /// Retrieves the selected coordinates (latitude and longitude) from the Hive box.
  Coordinates _retrieveCoordinates() {
    final String latitude = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldLocationConstant.selectedLatitude,
        defaultValue: "0.0");
    final String longitude = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldLocationConstant.selectedLongitude,
        defaultValue: "0.0");

    return Coordinates(
      double.tryParse(latitude) ?? 0.0,
      double.tryParse(longitude) ?? 0.0,
    );
  }

  /// Retrieves the UTC offset, either from Hive or the device's timezone.
  Duration _retrieveUtcOffset() {
    final String hourOffset = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour,
        defaultValue: "");
    final String minuteOffset = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin,
        defaultValue: "");

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
