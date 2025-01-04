import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_calculation_db_parser.dart';
import 'package:islam_app/models/high_latitude_method.dart';
import 'package:islam_app/models/madhab.dart';
import 'package:islam_app/models/pray_calculation_method.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_enum.dart';

class GetUserSettingUseCase {
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);
  final PrayDBParser _prayDBParser = PrayDBParser();

  /// Retrieves the HighLatitude Rule, from Hive
  PrayHightLatitudeCaluclationState savedHighLatitudeRule() {
    final String selectedPraynHightLatitudeCaluclation = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedHighLatitude,
      defaultValue: "PraynHightLatitudeCaluclatioState.none()",
    );

    final PrayHightLatitudeCaluclationState highLatitude = _prayDBParser
        .parseHighLatitudeRuleState(selectedPraynHightLatitudeCaluclation);
    return highLatitude;
  }

  /// Retrieves the Calculation Method, from Hive
  PrayCalculationMethodState savedCalculationMethod() {
    final String selectedCalculationMethod = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedCalculationMethod,
      defaultValue: "PrayCalculationMethodState.jordanAwqaf()",
    );

    final PrayCalculationMethodState calculationMethod =
        _prayDBParser.parseCalculationMethodState(selectedCalculationMethod);

    return calculationMethod;
  }

  /// Retrieves the Madhab, from Hive
  MadhabState savedMadhab() {
    final String selectedMadhab = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedMadhab,
      defaultValue: "MadhabState.hanafi()",
    );

    final MadhabState madhab = _prayDBParser.parseMadhabState(selectedMadhab);
    return madhab;
  }

  /// Retrieves the UTC offset, from Hive
  Duration savedUtcOffset() {
    final String hourOffset = _box.get(
        DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour,
        defaultValue: "");
    final String minuteOffset = _box.get(
        DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin,
        defaultValue: "");

    if (hourOffset.isEmpty) {
      return const Duration(hours: 3, minutes: 0);
    } else {
      int hours = int.tryParse(hourOffset) ?? 0;
      int minutes = int.tryParse(minuteOffset) ?? 0;
      return Duration(hours: hours, minutes: minutes);
    }
  }

  Map<AzanTypeForEditMin, int> savedMinutesEdited() {
    Map<String, dynamic> getDefaultMinEditSettings = {
      DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeLast3thOfNightMin: "0",
    };

    final Map<AzanTypeForEditMin, int> minutesEdited = {};

    getDefaultMinEditSettings.forEach((key, defaultValue) {
      final value = _box.get(key, defaultValue: defaultValue);
      final azanType = _mapKeyToAzanType(key);
      if (azanType != null) {
        minutesEdited[azanType] = int.tryParse(value) ?? 0;
      }
    });

    return minutesEdited;
  }

  AzanTypeForEditMin? _mapKeyToAzanType(String key) {
    switch (key) {
      case DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin:
        return AzanTypeForEditMin.fajir;
      case DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin:
        return AzanTypeForEditMin.sunrise;
      case DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin:
        return AzanTypeForEditMin.zhur;
      case DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin:
        return AzanTypeForEditMin.asr;
      case DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin:
        return AzanTypeForEditMin.maghrib;
      case DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin:
        return AzanTypeForEditMin.isha;
      case DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin:
        return AzanTypeForEditMin.midnight;
      case DatabaseFieldPrayCalculationConstant.selectedTimeLast3thOfNightMin:
        return AzanTypeForEditMin.last3th;
      default:
        return null;
    }
  }
}
