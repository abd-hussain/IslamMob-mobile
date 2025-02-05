import 'package:database_manager/database_manager.dart';
import 'package:islam_app/domain/sealed/high_latitude_method.dart';
import 'package:islam_app/domain/sealed/madhab.dart';
import 'package:islam_app/domain/sealed/pray_calculation_method.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_calculation_db_parser.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_sealed.dart';

class GetUserSettingUseCase {
  /// Retrieves the HighLatitude Rule, from Hive
  PrayHightLatitudeCaluclationState savedHighLatitudeRule() {
    final String selectedPraynHightLatitudeCaluclation =
        DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldPrayCalculationConstant.selectedHighLatitude,
      defaultValue: "PraynHightLatitudeCaluclatioState.none()",
    );

    final PrayHightLatitudeCaluclationState highLatitude =
        PrayDBParser.parseHighLatitudeRuleState(
            selectedPraynHightLatitudeCaluclation);
    return highLatitude;
  }

  /// Retrieves the Calculation Method, from Hive
  PrayCalculationMethodState savedCalculationMethod() {
    final String selectedCalculationMethod =
        DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldPrayCalculationConstant.selectedCalculationMethod,
      defaultValue: "PrayCalculationMethodState.jordanAwqaf()",
    );

    final PrayCalculationMethodState calculationMethod =
        PrayDBParser.parseCalculationMethodState(selectedCalculationMethod);

    return calculationMethod;
  }

  /// Retrieves the Madhab, from Hive
  MadhabState savedMadhab() {
    final String selectedMadhab = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldPrayCalculationConstant.selectedMadhab,
      defaultValue: "MadhabState.hanafi()",
    );

    final MadhabState madhab = PrayDBParser.parseMadhabState(selectedMadhab);
    return madhab;
  }

  /// Retrieves the UTC offset, from Hive
  Duration savedUtcOffset() {
    final String hourOffset = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour,
      defaultValue: "",
    );
    final String minuteOffset = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin,
      defaultValue: "",
    );

    if (hourOffset.isEmpty) {
      return const Duration(
        hours: 3,
      );
    } else {
      final int hours = int.tryParse(hourOffset) ?? 0;
      final int minutes = int.tryParse(minuteOffset) ?? 0;
      return Duration(hours: hours, minutes: minutes);
    }
  }

  Map<AzanTypeForEditMinState, int> savedMinutesEdited() {
    final Map<String, dynamic> getDefaultMinEditSettings = {
      DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin: "0",
      DatabaseFieldPrayCalculationConstant.selectedTimeLast3thOfNightMin: "0",
    };

    final Map<AzanTypeForEditMinState, int> minutesEdited = {};

    getDefaultMinEditSettings.forEach((key, defaultValue) {
      final value = DataBaseManagerBase.getFromDatabase(
          key: key, defaultValue: defaultValue);
      final azanType = _mapKeyToAzanType(key);
      if (azanType != null) {
        minutesEdited[azanType] = int.tryParse(value) ?? 0;
      }
    });

    return minutesEdited;
  }

  AzanTypeForEditMinState? _mapKeyToAzanType(String key) {
    switch (key) {
      case DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin:
        return const AzanTypeForEditMinState.fajir();
      case DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin:
        return const AzanTypeForEditMinState.sunrise();
      case DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin:
        return const AzanTypeForEditMinState.zhur();
      case DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin:
        return const AzanTypeForEditMinState.asr();
      case DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin:
        return const AzanTypeForEditMinState.magrieb();
      case DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin:
        return const AzanTypeForEditMinState.isha();
      case DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin:
        return const AzanTypeForEditMinState.midnight();
      case DatabaseFieldPrayCalculationConstant.selectedTimeLast3thOfNightMin:
        return const AzanTypeForEditMinState.last3th();
      default:
        return null;
    }
  }
}
