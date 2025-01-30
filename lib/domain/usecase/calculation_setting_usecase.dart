import 'package:islam_app/domain/model/calculation_method_setting.dart';
import 'package:islam_app/domain/model/correction_min_time.dart';
import 'package:islam_app/domain/model/high_latitude_setting.dart';
import 'package:islam_app/domain/model/madhab_setting.dart';
import 'package:islam_app/domain/model/salah_config_setting.dart';
import 'package:islam_app/domain/model/time_zone_setting.dart';
import 'package:islam_app/domain/sealed/high_latitude_method.dart';
import 'package:islam_app/domain/sealed/madhab.dart';
import 'package:islam_app/domain/sealed/pray_calculation_method.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_enum.dart';

class CalculationSettingUsecase {
  static List<TimeZoneSetting> getTimeZonesList(
      IslamMobLocalizations localizations, Duration currentState) {
    return [
      TimeZoneSetting(
        name: 'UTC -12:00',
        duration: const Duration(hours: -12),
        isSelected: currentState == const Duration(hours: -12),
      ),
      TimeZoneSetting(
        name: 'UTC -11:00',
        duration: const Duration(hours: -11),
        isSelected: currentState == const Duration(hours: -11),
      ),
      TimeZoneSetting(
        name: 'UTC -10:00',
        duration: const Duration(hours: -10),
        isSelected: currentState == const Duration(hours: -10),
      ),
      TimeZoneSetting(
        name: 'UTC -09:30',
        duration: const Duration(hours: -9, minutes: -30),
        isSelected: currentState == const Duration(hours: -09, minutes: -30),
      ),
      TimeZoneSetting(
        name: 'UTC -09:00',
        duration: const Duration(hours: -9),
        isSelected: currentState == const Duration(hours: -09),
      ),
      TimeZoneSetting(
        name: 'UTC -08:00',
        duration: const Duration(hours: -8),
        isSelected: currentState == const Duration(hours: -8),
      ),
      TimeZoneSetting(
        name: 'UTC -07:00',
        duration: const Duration(hours: -7),
        isSelected: currentState == const Duration(hours: -7),
      ),
      TimeZoneSetting(
        name: 'UTC -06:00',
        duration: const Duration(hours: -6),
        isSelected: currentState == const Duration(hours: -6),
      ),
      TimeZoneSetting(
        name: 'UTC -05:00',
        duration: const Duration(hours: -5),
        isSelected: currentState == const Duration(hours: -5),
      ),
      TimeZoneSetting(
        name: 'UTC -04:00',
        duration: const Duration(hours: -4),
        isSelected: currentState == const Duration(hours: -4),
      ),
      TimeZoneSetting(
        name: 'UTC -03:30',
        duration: const Duration(hours: -3, minutes: -30),
        isSelected: currentState == const Duration(hours: -3, minutes: -30),
      ),
      TimeZoneSetting(
        name: 'UTC -03:00',
        duration: const Duration(hours: -3),
        isSelected: currentState == const Duration(hours: -3),
      ),
      TimeZoneSetting(
        name: 'UTC -02:00',
        duration: const Duration(hours: -2),
        isSelected: currentState == const Duration(hours: -2),
      ),
      TimeZoneSetting(
        name: 'UTC -01:00',
        duration: const Duration(hours: -1),
        isSelected: currentState == const Duration(hours: -1),
      ),
      TimeZoneSetting(
        name: 'UTC/GMT',
        duration: Duration.zero,
        isSelected: currentState == Duration.zero,
      ),
      TimeZoneSetting(
        name: 'UTC +01:00',
        duration: const Duration(hours: 1),
        isSelected: currentState == const Duration(hours: 1),
      ),
      TimeZoneSetting(
        name: 'UTC +02:00',
        duration: const Duration(hours: 2),
        isSelected: currentState == const Duration(hours: 2),
      ),
      TimeZoneSetting(
        name: 'UTC +03:00',
        duration: const Duration(hours: 3),
        isSelected: currentState == const Duration(hours: 3),
      ),
      TimeZoneSetting(
        name: 'UTC +03:30',
        duration: const Duration(hours: 3, minutes: 30),
        isSelected: currentState == const Duration(hours: 3, minutes: 30),
      ),
      TimeZoneSetting(
        name: 'UTC +04:00',
        duration: const Duration(hours: 4),
        isSelected: currentState == const Duration(hours: 4),
      ),
      TimeZoneSetting(
        name: 'UTC +04:30',
        duration: const Duration(hours: 4, minutes: 30),
        isSelected: currentState == const Duration(hours: 4, minutes: 30),
      ),
      TimeZoneSetting(
        name: 'UTC +05:00',
        duration: const Duration(hours: 5),
        isSelected: currentState == const Duration(hours: 5),
      ),
      TimeZoneSetting(
        name: 'UTC +05:30',
        duration: const Duration(hours: 5, minutes: 30),
        isSelected: currentState == const Duration(hours: 5, minutes: 30),
      ),
      TimeZoneSetting(
        name: 'UTC +05:45',
        duration: const Duration(hours: 5, minutes: 45),
        isSelected: currentState == const Duration(hours: 5, minutes: 45),
      ),
      TimeZoneSetting(
        name: 'UTC +06:00',
        duration: const Duration(hours: 6),
        isSelected: currentState == const Duration(hours: 6),
      ),
      TimeZoneSetting(
        name: 'UTC +06:30',
        duration: const Duration(hours: 6, minutes: 30),
        isSelected: currentState == const Duration(hours: 6, minutes: 30),
      ),
      TimeZoneSetting(
        name: 'UTC +07:00',
        duration: const Duration(hours: 7),
        isSelected: currentState == const Duration(hours: 7),
      ),
      TimeZoneSetting(
        name: 'UTC +08:00',
        duration: const Duration(hours: 8),
        isSelected: currentState == const Duration(hours: 8),
      ),
      TimeZoneSetting(
        name: 'UTC +08:45',
        duration: const Duration(hours: 8, minutes: 45),
        isSelected: currentState == const Duration(hours: 8, minutes: 45),
      ),
      TimeZoneSetting(
        name: 'UTC +09:00',
        duration: const Duration(hours: 9),
        isSelected: currentState == const Duration(hours: 9),
      ),
      TimeZoneSetting(
        name: 'UTC +09:30',
        duration: const Duration(hours: 9, minutes: 30),
        isSelected: currentState == const Duration(hours: 9, minutes: 30),
      ),
      TimeZoneSetting(
        name: 'UTC +10:00',
        duration: const Duration(hours: 10),
        isSelected: currentState == const Duration(hours: 10),
      ),
      TimeZoneSetting(
        name: 'UTC +10:30',
        duration: const Duration(hours: 10, minutes: 30),
        isSelected: currentState == const Duration(hours: 10, minutes: 30),
      ),
      TimeZoneSetting(
        name: 'UTC +11:00',
        duration: const Duration(hours: 11),
        isSelected: currentState == const Duration(hours: 11),
      ),
      TimeZoneSetting(
        name: 'UTC +12:00',
        duration: const Duration(hours: 12),
        isSelected: currentState == const Duration(hours: 12),
      ),
      TimeZoneSetting(
        name: 'UTC +12:45',
        duration: const Duration(hours: 12, minutes: 45),
        isSelected: currentState == const Duration(hours: 12, minutes: 45),
      ),
      TimeZoneSetting(
        name: 'UTC +13:00',
        duration: const Duration(hours: 13),
        isSelected: currentState == const Duration(hours: 13),
      ),
      TimeZoneSetting(
        name: 'UTC +14:00',
        duration: const Duration(hours: 14),
        isSelected: currentState == const Duration(hours: 14),
      ),
    ];
  }

  static List<MadhabSetting> getMadhabList(
      IslamMobLocalizations localizations, MadhabState currentState) {
    return [
      MadhabSetting(
        name: localizations.mathhab1Shafi,
        method: const MadhabState.shafi(),
        isSelected: currentState == const MadhabState.shafi(),
      ),
      MadhabSetting(
        name: localizations.mathhab2Hanafi,
        method: const MadhabState.hanafi(),
        isSelected: currentState == const MadhabState.hanafi(),
      ),
    ];
  }

  static List<CalculationMethodSetting> getCalculationMethodsList(
    IslamMobLocalizations localizations,
    PrayCalculationMethodState currentState,
  ) {
    return [
      CalculationMethodSetting(
        name: localizations.calculationMethod1,
        method: const PrayCalculationMethodState.jafari(),
        isSelected: currentState == const PrayCalculationMethodState.jafari(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod2,
        method: const PrayCalculationMethodState.karachi(),
        isSelected: currentState == const PrayCalculationMethodState.karachi(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod3,
        method: const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
        isSelected: currentState ==
            const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod4,
        method: const PrayCalculationMethodState.muslimWorldLeague(),
        isSelected: currentState ==
            const PrayCalculationMethodState.muslimWorldLeague(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod5,
        method: const PrayCalculationMethodState.ummAlQura(),
        isSelected:
            currentState == const PrayCalculationMethodState.ummAlQura(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod6,
        method: const PrayCalculationMethodState.egypt(),
        isSelected: currentState == const PrayCalculationMethodState.egypt(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod7,
        method: const PrayCalculationMethodState.tehran(),
        isSelected: currentState == const PrayCalculationMethodState.tehran(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod8,
        method: const PrayCalculationMethodState.gulfRegion(),
        isSelected:
            currentState == const PrayCalculationMethodState.gulfRegion(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod9,
        method: const PrayCalculationMethodState.kuwait(),
        isSelected: currentState == const PrayCalculationMethodState.kuwait(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod10,
        method: const PrayCalculationMethodState.qatar(),
        isSelected: currentState == const PrayCalculationMethodState.qatar(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod11,
        method: const PrayCalculationMethodState.singapore(),
        isSelected:
            currentState == const PrayCalculationMethodState.singapore(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod12,
        method: const PrayCalculationMethodState.france(),
        isSelected: currentState == const PrayCalculationMethodState.france(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod13,
        method: const PrayCalculationMethodState.turkey(),
        isSelected: currentState == const PrayCalculationMethodState.turkey(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod14,
        method: const PrayCalculationMethodState.russia(),
        isSelected: currentState == const PrayCalculationMethodState.russia(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod15,
        method: const PrayCalculationMethodState.dubai(),
        isSelected: currentState == const PrayCalculationMethodState.dubai(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod16,
        method: const PrayCalculationMethodState.jAKIM(),
        isSelected: currentState == const PrayCalculationMethodState.jAKIM(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod17,
        method: const PrayCalculationMethodState.tunisia(),
        isSelected: currentState == const PrayCalculationMethodState.tunisia(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod18,
        method: const PrayCalculationMethodState.algeria(),
        isSelected: currentState == const PrayCalculationMethodState.algeria(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod19,
        method: const PrayCalculationMethodState.kEMENAG(),
        isSelected: currentState == const PrayCalculationMethodState.kEMENAG(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod20,
        method: const PrayCalculationMethodState.morocco(),
        isSelected: currentState == const PrayCalculationMethodState.morocco(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod21,
        method: const PrayCalculationMethodState.comunidadeIslamicaLisboa(),
        isSelected: currentState ==
            const PrayCalculationMethodState.comunidadeIslamicaLisboa(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod22,
        method: const PrayCalculationMethodState.jordanAwqaf(),
        isSelected:
            currentState == const PrayCalculationMethodState.jordanAwqaf(),
      ),
    ];
  }

  static List<HighLatitudeSetting> getHightLatitudeCaluclationList(
    IslamMobLocalizations localizations,
    PrayHightLatitudeCaluclationState currentState,
  ) {
    return [
      HighLatitudeSetting(
        name: localizations.hightLatitudeCaluclationNone,
        method: const PrayHightLatitudeCaluclationState.none(),
        isSelected:
            currentState == const PrayHightLatitudeCaluclationState.none(),
      ),
      HighLatitudeSetting(
        name: localizations.hightLatitudeCaluclationAngleBasedMethod,
        method: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
        isSelected: currentState ==
            const PrayHightLatitudeCaluclationState.angleBasedMethod(),
      ),
      HighLatitudeSetting(
        name: localizations.hightLatitudeCaluclationMidnight,
        method: const PrayHightLatitudeCaluclationState.midnight(),
        isSelected:
            currentState == const PrayHightLatitudeCaluclationState.midnight(),
      ),
      HighLatitudeSetting(
        name: localizations.hightLatitudeCaluclationOneSeventh,
        method: const PrayHightLatitudeCaluclationState.seventhPartOfTheNight(),
        isSelected: currentState ==
            const PrayHightLatitudeCaluclationState.seventhPartOfTheNight(),
      ),
    ];
  }

  static List<SalahConfigSetting> getSalahConfigSettingList() {
    return [
      SalahConfigSetting(
        stateSelector: (state) => state.fajirTime,
        salahType: const SalahTimeStateFajir(),
      ),
      SalahConfigSetting(
        stateSelector: (state) => state.sunriseTime,
        salahType: const SalahTimeStateSunrise(),
      ),
      SalahConfigSetting(
        stateSelector: (state) => state.duherTime,
        salahType: const SalahTimeStateZhur(),
      ),
      SalahConfigSetting(
        stateSelector: (state) => state.asrTime,
        salahType: const SalahTimeStateAsr(),
      ),
      SalahConfigSetting(
        stateSelector: (state) => state.megribTime,
        salahType: const SalahTimeStateMaghrib(),
      ),
      SalahConfigSetting(
        stateSelector: (state) => state.ishaTime,
        salahType: const SalahTimeStateIsha(),
      ),
    ];
  }

  static List<CorrectionMinTimeData> getCorrectionMinTimeDataList(
      IslamMobLocalizations localizations) {
    return [
      CorrectionMinTimeData(
        title: localizations.fajirCorrectionTitle,
        getter: (state) => state.editFajirTimeManual,
        type: AzanTypeForEditMin.fajir,
      ),
      CorrectionMinTimeData(
        title: localizations.sunriseCorrectionTitle,
        getter: (state) => state.editSunriseTimeManual,
        type: AzanTypeForEditMin.sunrise,
      ),
      CorrectionMinTimeData(
        title: localizations.duhorCorrectionTitle,
        getter: (state) => state.editDuhirTimeManual,
        type: AzanTypeForEditMin.zhur,
      ),
      CorrectionMinTimeData(
        title: localizations.asrCorrectionTitle,
        getter: (state) => state.editAsrTimeManual,
        type: AzanTypeForEditMin.asr,
      ),
      CorrectionMinTimeData(
        title: localizations.maghribCorrectionTitle,
        getter: (state) => state.editMagrebTimeManual,
        type: AzanTypeForEditMin.maghrib,
      ),
      CorrectionMinTimeData(
        title: localizations.ishaCorrectionTitle,
        getter: (state) => state.editIshaTimeManual,
        type: AzanTypeForEditMin.isha,
      ),
      CorrectionMinTimeData(
        title: localizations.midnightCorrectionTitle,
        getter: (state) => state.editMidNightTimeManual,
        type: AzanTypeForEditMin.midnight,
      ),
      CorrectionMinTimeData(
        title: localizations.lastThirdOfTheNightCorrectionTitle,
        getter: (state) => state.editLast3thTimeTimeManual,
        type: AzanTypeForEditMin.last3th,
      ),
    ];
  }
}
