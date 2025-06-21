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
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_sealed.dart';

/// Use case for managing Islamic prayer calculation settings and configurations.
///
/// This class provides comprehensive functionality for configuring all aspects
/// of Islamic prayer time calculations, including:
/// - **Time zone management** for accurate local prayer times
/// - **Madhab selection** for Asr prayer calculation differences
/// - **Calculation method selection** from various Islamic authorities
/// - **High latitude adjustments** for extreme geographical locations
/// - **Prayer time corrections** for local variations and preferences
/// - **Salah configuration** for individual prayer settings
///
/// The use case supports the complex requirements of Islamic prayer time
/// calculations, which must account for geographical location, Islamic
/// jurisprudence differences, regional calculation methods, and user
/// preferences while maintaining religious accuracy.
///
/// This is essential for providing Muslims worldwide with accurate prayer
/// times that align with their local Islamic authorities and personal
/// religious practices.
class CalculationSettingUsecase {
  /// Generates a comprehensive list of time zone options for prayer time calculations.
  ///
  /// This method creates a complete list of time zones from UTC-12 to UTC+14,
  /// including half-hour and quarter-hour offsets used in various regions.
  /// Each time zone option includes:
  /// - Human-readable UTC offset display
  /// - Precise Duration object for calculations
  /// - Selection state based on current user setting
  ///
  /// Time zones are crucial for Islamic prayer times as even small errors
  /// can result in incorrect prayer times, potentially affecting the
  /// validity of prayers in Islamic practice.
  ///
  /// Parameters:
  /// - [localizations]: Localization object for potential future localization
  /// - [currentState]: The currently selected time zone offset
  ///
  /// Returns a list of [TimeZoneSetting] objects covering all major time zones
  /// worldwide, with the current selection properly marked.
  ///
  /// Example:
  /// ```dart
  /// final currentOffset = Duration(hours: 3); // UTC+3
  /// final timeZones = CalculationSettingUsecase.getTimeZonesList(localizations, currentOffset);
  /// // Returns list with UTC+3 marked as selected
  /// ```
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

  /// Generates a list of Islamic Madhab (school of jurisprudence) options.
  ///
  /// This method creates a list of the major Islamic schools of jurisprudence
  /// that affect prayer time calculations, specifically for the Asr prayer:
  /// - **Shafi'i**: Earlier Asr time (shadow = object length + original shadow)
  /// - **Hanafi**: Later Asr time (shadow = 2 × object length + original shadow)
  ///
  /// The Madhab selection is crucial for accurate prayer times as different
  /// schools have varying interpretations of when the Asr prayer time begins
  /// based on shadow length calculations. This affects daily prayer schedules
  /// for practicing Muslims who follow specific jurisprudential traditions.
  ///
  /// Parameters:
  /// - [localizations]: Localization object for Madhab names
  /// - [currentState]: The currently selected Madhab
  ///
  /// Returns a list of [MadhabSetting] objects with localized names and
  /// proper selection state marking.
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

  /// Generates a comprehensive list of Islamic prayer calculation methods.
  ///
  /// This method creates a complete list of calculation methods used by various
  /// Islamic authorities and organizations worldwide. Each method has different
  /// parameters for calculating prayer times, including:
  /// - **Fajr and Isha angles** (degrees below horizon)
  /// - **Maghrib calculation** (sunset + minutes or angle)
  /// - **Regional adjustments** for local Islamic authorities
  ///
  /// The available methods include calculations from:
  /// - Jafari (Shia) method
  /// - University of Islamic Sciences, Karachi
  /// - Islamic Society of North America (ISNA)
  /// - Muslim World League
  /// - Umm Al-Qura University, Makkah
  /// - Egyptian General Authority of Survey
  /// - Institute of Geophysics, University of Tehran
  /// - Gulf Region calculations
  /// - Various national Islamic authorities (Kuwait, Qatar, Singapore, etc.)
  ///
  /// Parameters:
  /// - [localizations]: Localization object for method names
  /// - [currentState]: The currently selected calculation method
  ///
  /// Returns a list of [CalculationMethodSetting] objects with localized names
  /// and proper selection state marking.
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

  /// Generates a list of high latitude calculation adjustment methods.
  ///
  /// This method creates options for handling prayer time calculations in
  /// extreme latitudes where normal astronomical calculations may not work
  /// properly during certain times of the year. The methods include:
  /// - **None**: No special adjustments (standard calculation)
  /// - **Angle-based method**: Uses angle-based approximations
  /// - **Midnight**: Splits night between Maghrib and Fajr
  /// - **One-seventh**: Divides night into seven parts
  ///
  /// High latitude adjustments are essential for Muslims living in northern
  /// or southern regions where the sun may not reach the required angles
  /// for Fajr and Isha calculations during certain seasons.
  ///
  /// Parameters:
  /// - [localizations]: Localization object for method names
  /// - [currentState]: The currently selected high latitude method
  ///
  /// Returns a list of [HighLatitudeSetting] objects with localized names
  /// and proper selection state marking.
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

  /// Generates configuration settings for all prayer times.
  ///
  /// This method creates a list of configuration objects for each prayer time,
  /// mapping prayer types to their corresponding state selectors. This enables
  /// the app to handle each prayer time individually for:
  /// - Time corrections and adjustments
  /// - Notification scheduling
  /// - Display formatting
  /// - User preference management
  ///
  /// The configuration includes all five daily prayers plus sunrise:
  /// - Fajr (Dawn prayer)
  /// - Sunrise (end of Fajr time)
  /// - Dhuhr (Noon prayer)
  /// - Asr (Afternoon prayer)
  /// - Maghrib (Sunset prayer)
  /// - Isha (Night prayer)
  ///
  /// Returns a list of [SalahConfigSetting] objects that map each prayer
  /// type to its corresponding time selector function.
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

  /// Generates configuration data for manual prayer time corrections.
  ///
  /// This method creates a list of correction settings that allow users to
  /// manually adjust prayer times by adding or subtracting minutes. This is
  /// important for:
  /// - **Local variations** in prayer time calculations
  /// - **Personal preferences** based on local Islamic authority guidance
  /// - **Seasonal adjustments** for specific geographical locations
  /// - **Community synchronization** with local mosque times
  ///
  /// The correction options include all prayer times and special times:
  /// - Fajr correction
  /// - Sunrise correction
  /// - Dhuhr correction
  /// - Asr correction
  /// - Maghrib correction
  /// - Isha correction
  /// - Midnight correction (for voluntary prayers)
  /// - Last third of night correction (for Tahajjud)
  ///
  /// Parameters:
  /// - [localizations]: Localization object for correction titles
  ///
  /// Returns a list of [CorrectionMinTimeData] objects with localized titles
  /// and corresponding state getters and setters.
  static List<CorrectionMinTimeData> getCorrectionMinTimeDataList(
      IslamMobLocalizations localizations) {
    return [
      CorrectionMinTimeData(
        title: localizations.fajirCorrectionTitle,
        getter: (state) => state.editFajirTimeManual,
        type: const AzanTypeForEditMinState.fajir(),
      ),
      CorrectionMinTimeData(
        title: localizations.sunriseCorrectionTitle,
        getter: (state) => state.editSunriseTimeManual,
        type: const AzanTypeForEditMinState.sunrise(),
      ),
      CorrectionMinTimeData(
        title: localizations.duhorCorrectionTitle,
        getter: (state) => state.editDuhirTimeManual,
        type: const AzanTypeForEditMinState.zhur(),
      ),
      CorrectionMinTimeData(
        title: localizations.asrCorrectionTitle,
        getter: (state) => state.editAsrTimeManual,
        type: const AzanTypeForEditMinState.asr(),
      ),
      CorrectionMinTimeData(
        title: localizations.maghribCorrectionTitle,
        getter: (state) => state.editMagrebTimeManual,
        type: const AzanTypeForEditMinState.magrieb(),
      ),
      CorrectionMinTimeData(
        title: localizations.ishaCorrectionTitle,
        getter: (state) => state.editIshaTimeManual,
        type: const AzanTypeForEditMinState.isha(),
      ),
      CorrectionMinTimeData(
        title: localizations.midnightCorrectionTitle,
        getter: (state) => state.editMidNightTimeManual,
        type: const AzanTypeForEditMinState.midnight(),
      ),
      CorrectionMinTimeData(
        title: localizations.lastThirdOfTheNightCorrectionTitle,
        getter: (state) => state.editLast3thTimeTimeManual,
        type: const AzanTypeForEditMinState.last3th(),
      ),
    ];
  }
}
