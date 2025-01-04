import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/domain/usecase/pray_manager/all_pray_time_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_calculation_db_parser.dart';
import 'package:islam_app/models/pray_timing.dart';
import 'package:islam_mob_adhan/adhan.dart';

class PraySettingUsecase {
  final Duration utcOffset;
  final String calculationMethod;
  final String madhab;
  final String highLatitudeRule;
  PraySettingUsecase({
    required this.madhab,
    required this.calculationMethod,
    required this.utcOffset,
    required this.highLatitudeRule,
  }) {
    _initalize();
  }
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);
  late PrayManagerRepository _prayManager;
  final PrayDBParser _prayDBParser = PrayDBParser();

  void _initalize() {
    _prayManager = PrayManagerRepository(
      coordinates: _retrieveCoordinates(),
      utcOffset: utcOffset,
      calculationMethod:
          _prayDBParser.parseCalculationMethod(calculationMethod),
      madhab: _prayDBParser.parseMadhab(madhab),
      highLatitudeRule: _prayDBParser.parseHighLatitudeRule(highLatitudeRule),
    );
  }

  /// Retrieves the selected coordinates (latitude and longitude) from the Hive box.
  Coordinates _retrieveCoordinates() {
    final String latitude = _box.get(
        DatabaseFieldLocationConstant.selectedLatitude,
        defaultValue: "0.0");
    final String longitude = _box.get(
        DatabaseFieldLocationConstant.selectedLongitude,
        defaultValue: "0.0");

    return Coordinates(
      double.tryParse(latitude) ?? 0.0,
      double.tryParse(longitude) ?? 0.0,
    );
  }

  PrayTimingDateTimeModel getAllPrayTimeAsDateTimeForToday() {
    return AllPrayTimeUsecase(_prayManager).getAllPrayTimeAsDateTimeForToday();
  }
}
