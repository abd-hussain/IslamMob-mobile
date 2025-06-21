import 'package:database_manager/database_manager.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/domain/usecase/pray_manager/all_pray_time_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_calculation_db_parser.dart';
import 'package:islam_mob_adhan/adhan.dart';

/// A use case class that manages prayer time settings and configurations.
///
/// This class handles the configuration of prayer time calculations based on
/// user preferences including calculation method, madhab, timezone offset,
/// and high latitude rules. It initializes the prayer manager repository
/// with the specified settings and provides access to prayer times.
class PraySettingUsecase {
  /// The UTC offset for the user's timezone.
  ///
  /// This duration represents the difference between the user's local time
  /// and UTC time, used for accurate prayer time calculations.
  final Duration utcOffset;

  /// The calculation method used for prayer time calculations.
  ///
  /// This string identifier specifies which Islamic calculation method
  /// to use (e.g., "MuslimWorldLeague", "Egyptian", "Karachi", etc.).
  final String calculationMethod;

  /// The madhab (Islamic school of jurisprudence) for prayer calculations.
  ///
  /// This affects the calculation of Asr prayer time. Common values
  /// include "Shafi" and "Hanafi".
  final String madhab;

  /// The rule to apply for high latitude locations.
  ///
  /// This string specifies how to handle prayer time calculations
  /// in locations with extreme daylight variations (e.g., "MiddleOfTheNight",
  /// "SeventhOfTheNight", "TwilightAngle").
  final String highLatitudeRule;

  /// Creates an instance of [PraySettingUsecase] with the specified settings.
  ///
  /// All parameters are required and will be used to configure the
  /// prayer time calculations:
  /// - [madhab]: The Islamic school of jurisprudence
  /// - [calculationMethod]: The prayer time calculation method
  /// - [utcOffset]: The timezone offset from UTC
  /// - [highLatitudeRule]: The rule for high latitude locations
  ///
  /// The constructor automatically initializes the prayer manager
  /// repository with these settings.
  PraySettingUsecase({
    required this.madhab,
    required this.calculationMethod,
    required this.utcOffset,
    required this.highLatitudeRule,
  }) {
    _initalize();
  }
  late PrayManagerRepository _prayManager;

  void _initalize() {
    _prayManager = PrayManagerRepository(
      coordinates: _retrieveCoordinates(),
      utcOffset: utcOffset,
      calculationMethod: PrayDBParser.parseCalculationMethod(calculationMethod),
      madhab: PrayDBParser.parseMadhab(madhab),
      highLatitudeRule: PrayDBParser.parseHighLatitudeRule(highLatitudeRule),
    );
  }

  /// Retrieves the selected coordinates (latitude and longitude) from the Hive box.
  Coordinates _retrieveCoordinates() {
    final double latitude = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldLocationConstant.selectedLatitude,
        defaultValue: 0.0) as double;
    final double longitude = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldLocationConstant.selectedLongitude,
        defaultValue: 0.0) as double;

    return Coordinates(
      latitude,
      longitude,
    );
  }

  /// Retrieves all prayer times for today using the configured settings.
  ///
  /// This method creates an [AllPrayTimeUsecase] instance with the
  /// initialized prayer manager and returns today's prayer times
  /// as DateTime objects with user-configured adjustments applied.
  ///
  /// Returns a [PrayTimingDateTimeModel] containing all prayer times
  /// for today calculated using the settings provided to this use case.
  PrayTimingDateTimeModel getAllPrayTimeAsDateTimeForToday() {
    return AllPrayTimeUsecase(_prayManager).getAllPrayTimeAsDateTimeForToday();
  }
}
