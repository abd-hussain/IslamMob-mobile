import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/domain/usecase/pray_manager/all_pray_time_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/next_pray_usecase.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';
import 'package:islam_mob_adhan/adhan.dart';

class PrayUsecase {
  final DateComponents? specificDate;
  PrayUsecase({this.specificDate}) {
    _initalize();
  }
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);
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

  List<CalenderModel> getAllPrayTimeAsDateTimeForMonth(
      {required DateTime fromDate, required DateTime toDate}) {
    return AllPrayTimeUsecase(_prayManager)
        .getAllPrayTimeAsDateTimeForMonth(fromDate: fromDate, toDate: toDate);
  }

  /// Retrieves the selected Madhab from the Hive box.
  Madhab _retrieveMadhab() {
    final String madhab = _box.get(
        DatabaseFieldPrayCalculationConstant.selectedMadhab,
        defaultValue: "shafi");
    return madhab == "shafi" ? Madhab.shafi : Madhab.hanafi;
  }

  /// Retrieves the selected calculation method from the Hive box.
  CalculationMethod _retrieveCalculationMethod() {
    final String selectedMethod = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedCalculationMethod,
      defaultValue: "jordan",
    );

    return CalculationMethod.values.firstWhere(
      (method) => method.name == selectedMethod,
      orElse: () => CalculationMethod.jordan,
    );
  }

  HighLatitudeRule? _retrieveHighLatitudeRule() {
    final String selectedMethod = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedHighLatitude,
      defaultValue: "",
    );
    if (selectedMethod.isEmpty) {
      return null;
    } else {
      return HighLatitudeRule.values.firstWhere(
        (method) => method.name == selectedMethod,
      );
    }
  }

  /// Retrieves the selected coordinates (latitude and longitude) from the Hive box.
  Coordinates _retrieveCoordinates() {
    final String latitude =
        _box.get(DatabaseFieldConstant.selectedLatitude, defaultValue: "0.0");
    final String longitude =
        _box.get(DatabaseFieldConstant.selectedLongitude, defaultValue: "0.0");

    return Coordinates(
      double.tryParse(latitude) ?? 0.0,
      double.tryParse(longitude) ?? 0.0,
    );
  }

  /// Retrieves the UTC offset, either from Hive or the device's timezone.
  Duration _retrieveUtcOffset() {
    final String hourOffset = _box.get(
        DatabaseFieldConstant.selectedDifferenceWithUTCHour,
        defaultValue: "");
    final String minuteOffset = _box.get(
        DatabaseFieldConstant.selectedDifferenceWithUTCMin,
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
