import 'dart:async';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_calculation_db_parser.dart';
// import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/models/high_latitude_method.dart';
import 'package:islam_app/models/madhab.dart';
import 'package:islam_app/models/pray_calculation_method.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_enum.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pray_calculation_setting_event.dart';
part 'pray_calculation_setting_state.dart';
part 'pray_calculation_setting_bloc.freezed.dart';

class PrayCalculationSettingBloc extends Bloc<PrayCalculationSettingEvent, PrayCalculationSettingState> {
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);
  // final PrayUsecase _prayUsecase = PrayUsecase();
  final PrayDBParser _prayDBParser = PrayDBParser();

  PrayCalculationSettingBloc() : super(const PrayCalculationSettingState()) {
    on<_Setup>(_setup);

    // on<_UpdateCalculationMethod>(_handleUpdateCalculationMethod);
    // on<_UpdateMathhab>(_handleUpdateMathhab);
    // on<_UpdateTimeZone>(_handleUpdateTimeZone);
    // on<_UpdateAzanTypeInMin>(_handleUpdateAzanTypeInMin);
    // on<_UpdateHightLatitudeCalculation>(_handleUpdateHighLatitudeCalculation);
    // on<_UpdateTimeOfPreview>(_handleUpdateTimeOfPreview);
    // on<_FactoryReset>(_handleFactoryReset);
    // on<_SaveChanges>(_handleSaveChanges);
  }

  /// Retrieves the HighLatitude Rule, from Hive
  void _getDefaultSettingsHighLatitudeRule() {
    final String selectedPraynHightLatitudeCaluclation = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedHighLatitude,
      defaultValue: "PraynHightLatitudeCaluclatioState.none()",
    );

    final PrayHightLatitudeCaluclationState highLatitude =
        _prayDBParser.parseHighLatitudeRuleState(selectedPraynHightLatitudeCaluclation);
    add(PrayCalculationSettingEvent.updateHightLatitudeCalculation(state: highLatitude));
  }

  /// Retrieves the Calculation Method, from Hive
  void _getDefaultSettingsCalculationMethod() {
    final String selectedCalculationMethod = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedCalculationMethod,
      defaultValue: "PrayCalculationMethodState.jordanAwqaf()",
    );

    final PrayCalculationMethodState calculationMethod =
        _prayDBParser.parseCalculationMethodState(selectedCalculationMethod);
    add(PrayCalculationSettingEvent.updateCalculationMethod(method: calculationMethod));
  }

  /// Retrieves the Madhab, from Hive
  void _getDefaultSettingsMadhab() {
    final String selectedMadhab = _box.get(
      DatabaseFieldPrayCalculationConstant.selectedMadhab,
      defaultValue: "MathhabState.hanafi()",
    );

    final MathhabState madhab = _prayDBParser.parseMadhabState(selectedMadhab);
    add(PrayCalculationSettingEvent.updateMathhab(mathhab: madhab));
  }

  /// Retrieves the UTC offset, from Hive
  void _getDefaultSettingsUtcOffset() {
    final String hourOffset =
        _box.get(DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour, defaultValue: "");
    final String minuteOffset =
        _box.get(DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin, defaultValue: "");

    if (hourOffset.isEmpty) {
      add(
        PrayCalculationSettingEvent.updateTimeZone(
          value: const Duration(hours: 3, minutes: 0),
        ),
      );
    } else {
      int hours = int.tryParse(hourOffset) ?? 0;
      int minutes = int.tryParse(minuteOffset) ?? 0;
      add(
        PrayCalculationSettingEvent.updateTimeZone(
          value: Duration(hours: hours, minutes: minutes),
        ),
      );
    }
  }

  void _getDefaultSettingsMinutesEdited() {
    Map<String, dynamic> getDefaultMinEditSettings = {
      DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin: 0,
      DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin: 0,
      DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin: 0,
      DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin: 0,
      DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin: 0,
      DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin: 0,
      DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin: 0,
      DatabaseFieldPrayCalculationConstant.selectedTimeLast3thOfNightMin: 0,
    };

    getDefaultMinEditSettings.forEach((key, defaultValue) {
      final value = _box.get(key, defaultValue: defaultValue);
      final azanType = _mapKeyToAzanType(key);
      if (azanType != null) {
        add(PrayCalculationSettingEvent.updateAzanTypeInMin(azanType: azanType, minutes: int.parse(value)));
      }
    });
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

//   MathhabState _mapToMathhab(String value) {
//     const mapping = {
//       "MathhabStateShaafei": MathhabStateShaafei(),
//       "MathhabStateHanafi": MathhabStateHanafi(),
//     };

//     return mapping[value] ?? const MathhabStateShaafei();
//   }

//   String _getMathhabString(MathhabState value) {
//     final mapping = {
//       const MathhabStateShaafei(): "MathhabStateShaafei",
//       const MathhabStateHanafi(): "MathhabStateHanafi",
//     };
//     return mapping[value] ?? "MathhabStateShaafei";
//   }

//   // Madhab _retrieveMadhab() {
//   //   final mathhabMap = {
//   //     const MathhabStateHanafi(): Madhab.hanafi,
//   //     const MathhabStateShaafei(): Madhab.shafi,
//   //   };

//   //   return mathhabMap[state.mathhab] ?? Madhab.shafi; // Default fallback to Shafi if no match
//   // }

//   HightLatitudeCaluclationState _mapToHighLatitude(String value) {
//     const mapping = {
//       "HightLatitudeCaluclationStateNone": HightLatitudeCaluclationStateNone(),
//       "HightLatitudeCaluclationStateAngleBasedMethod": HightLatitudeCaluclationStateAngleBasedMethod(),
//       "HightLatitudeCaluclationStateMidnight": HightLatitudeCaluclationStateMidnight(),
//       "HightLatitudeCaluclationStateSeventhPartOfTheNight": HightLatitudeCaluclationStateSeventhPartOfTheNight(),
//     };

//     return mapping[value] ?? const HightLatitudeCaluclationStateNone();
//   }

//   String _getHightLatitudeCaluclationString(HightLatitudeCaluclationState value) {
//     final mapping = {
//       const HightLatitudeCaluclationStateNone(): "HightLatitudeCaluclationStateNone",
//       const HightLatitudeCaluclationStateAngleBasedMethod(): "HightLatitudeCaluclationStateAngleBasedMethod",
//       const HightLatitudeCaluclationStateMidnight(): "HightLatitudeCaluclationStateMidnight",
//       const HightLatitudeCaluclationStateSeventhPartOfTheNight(): "HightLatitudeCaluclationStateSeventhPartOfTheNight",
//     };
//     return mapping[value] ?? "HightLatitudeCaluclationStateNone";
//   }

//   String _getCalculationMethodSring(CalculationMethodState value) {
//     final mapping = {
//       const PrayCalculationMethodStateJordanAwqaf(): "CalculationMethodStateJordanAwqaf",
//       const PrayCalculationMethodStateJafari(): "CalculationMethodStateJafari",
//       const PrayCalculationMethodStateKarachi(): "CalculationMethodStateKarachi",
//       const PrayCalculationMethodStateIslamicSocietyOfNorthAmerica():
//           "CalculationMethodStateIslamicSocietyOfNorthAmerica",
//       const PrayCalculationMethodStateMuslimWorldLeague(): "CalculationMethodStateMuslimWorldLeague",
//       const PrayCalculationMethodStateUmmAlQura(): "CalculationMethodStateUmmAlQura",
//       const PrayCalculationMethodStateEgypt(): "CalculationMethodStateEgypt",
//       const PrayCalculationMethodStateTehran(): "CalculationMethodStateTehran",
//       const PrayCalculationMethodStateGulfRegion(): "CalculationMethodStateGulfRegion",
//       const PrayCalculationMethodStateQatar(): "CalculationMethodStateQatar",
//       const PrayCalculationMethodStateKuwait(): "CalculationMethodStateKuwait",
//       const PrayCalculationMethodStateSingapore(): "CalculationMethodStateSingapore",
//       const PrayCalculationMethodStateFrance(): "CalculationMethodStateFrance",
//       const PrayCalculationMethodStateTurkey(): "CalculationMethodStateTurkey",
//       const PrayCalculationMethodStateRussia(): "CalculationMethodStateRussia",
//       const PrayCalculationMethodStateDubai(): "CalculationMethodStateDubai",
//       const PrayCalculationMethodStateJAKIM(): "CalculationMethodStateJAKIM",
//       const PrayCalculationMethodStateTunisia(): "CalculationMethodStateTunisia",
//       const PrayCalculationMethodStateAlgeria(): "CalculationMethodStateAlgeria",
//       const PrayCalculationMethodStateKEMENAG(): "CalculationMethodStateKEMENAG",
//       const PrayCalculationMethodStateMorocco(): "CalculationMethodStateMorocco",
//       const PrayCalculationMethodStateComunidadeIslamicaLisboa(): "CalculationMethodStateComunidadeIslamicaLisboa",
//     };
//     return mapping[value] ?? "CalculationMethodStateJordanAwqaf";
//   }

//   PrayCalculationMethodState _mapToCalculationMethod(String value) {
//     final mapping = {
//       "CalculationMethodStateJordanAwqaf": const PrayCalculationMethodStateJordanAwqaf(),
//       "CalculationMethodStateJafari": const PrayCalculationMethodStateJafari(),
//       "CalculationMethodStateKarachi": const PrayCalculationMethodStateKarachi(),
//       "CalculationMethodStateIslamicSocietyOfNorthAmerica":
//           const PrayCalculationMethodStateIslamicSocietyOfNorthAmerica(),
//       "CalculationMethodStateMuslimWorldLeague": const PrayCalculationMethodStateMuslimWorldLeague(),
//       "CalculationMethodStateUmmAlQura": const PrayCalculationMethodStateUmmAlQura(),
//       "CalculationMethodStateEgypt": const PrayCalculationMethodStateEgypt(),
//       "CalculationMethodStateTehran": const PrayCalculationMethodStateTehran(),
//       "CalculationMethodStateGulfRegion": const PrayCalculationMethodStateGulfRegion(),
//       "CalculationMethodStateQatar": const PrayCalculationMethodStateQatar(),
//       "CalculationMethodStateKuwait": const PrayCalculationMethodStateKuwait(),
//       "CalculationMethodStateSingapore": const PrayCalculationMethodStateSingapore(),
//       "CalculationMethodStateFrance": const PrayCalculationMethodStateFrance(),
//       "CalculationMethodStateTurkey": const PrayCalculationMethodStateTurkey(),
//       "CalculationMethodStateRussia": const PrayCalculationMethodStateRussia(),
//       "CalculationMethodStateDubai": const PrayCalculationMethodStateDubai(),
//       "CalculationMethodStateJAKIM": const PrayCalculationMethodStateJAKIM(),
//       "CalculationMethodStateTunisia": const PrayCalculationMethodStateTunisia(),
//       "CalculationMethodStateAlgeria": const PrayCalculationMethodStateAlgeria(),
//       "CalculationMethodStateKEMENAG": const PrayCalculationMethodStateKEMENAG(),
//       "CalculationMethodStateMorocco": const PrayCalculationMethodStateMorocco(),
//       "CalculationMethodStateComunidadeIslamicaLisboa": const PrayCalculationMethodStateComunidadeIslamicaLisboa(),
//     };
//     return mapping[value] ?? const PrayCalculationMethodStateJordanAwqaf();
//   }

//   // /// Retrieves the selected coordinates (latitude and longitude) from the Hive box.
//   // Coordinates _retrieveCoordinates() {
//   //   final String latitude = _box.get(DatabaseFieldConstant.selectedLatitude, defaultValue: "0.0");
//   //   final String longitude = _box.get(DatabaseFieldConstant.selectedLongitude, defaultValue: "0.0");

//   //   return Coordinates(
//   //     double.tryParse(latitude) ?? 0.0,
//   //     double.tryParse(longitude) ?? 0.0,
//   //   );
//   // }

//   Duration _retrieveUtcOffset() {
//     const timeZoneOffsetMap = {
//       "UTC -12:00": Duration(hours: -12),
//       "UTC -11:00": Duration(hours: -11),
//       "UTC -10:00": Duration(hours: -10),
//       "UTC -09:30": Duration(hours: -9, minutes: -30),
//       "UTC -09:00": Duration(hours: -9),
//       "UTC -08:00": Duration(hours: -8),
//       "UTC -07:00": Duration(hours: -7),
//       "UTC -06:00": Duration(hours: -6),
//       "UTC -05:00": Duration(hours: -5),
//       "UTC -04:00": Duration(hours: -4),
//       "UTC -03:30": Duration(hours: -3, minutes: -30),
//       "UTC -03:00": Duration(hours: -3),
//       "UTC -02:00": Duration(hours: -2),
//       "UTC -01:00": Duration(hours: -1),
//       "UTC/GMT": Duration(hours: 0),
//       "UTC +01:00": Duration(hours: 1),
//       "UTC +02:00": Duration(hours: 2),
//       "UTC +03:00": Duration(hours: 3),
//       "UTC +03:30": Duration(hours: 3, minutes: 30),
//       "UTC +04:00": Duration(hours: 4),
//       "UTC +04:30": Duration(hours: 4, minutes: 30),
//       "UTC +05:00": Duration(hours: 5),
//       "UTC +05:30": Duration(hours: 5, minutes: 30),
//       "UTC +05:45": Duration(hours: 5, minutes: 45),
//       "UTC +06:00": Duration(hours: 6),
//       "UTC +06:30": Duration(hours: 6, minutes: 30),
//       "UTC +07:00": Duration(hours: 7),
//       "UTC +08:00": Duration(hours: 8),
//       "UTC +08:45": Duration(hours: 8, minutes: 45),
//       "UTC +09:00": Duration(hours: 9),
//       "UTC +09:30": Duration(hours: 9, minutes: 30),
//       "UTC +10:00": Duration(hours: 10),
//       "UTC +10:30": Duration(hours: 10, minutes: 30),
//       "UTC +11:00": Duration(hours: 11),
//       "UTC +12:00": Duration(hours: 12),
//       "UTC +12:45": Duration(hours: 12, minutes: 45),
//       "UTC +13:00": Duration(hours: 13),
//       "UTC +14:00": Duration(hours: 14),
//     };

//     return timeZoneOffsetMap[state.timeZone] ?? const Duration(hours: 3); // Default fallback
//   }

//   // CalculationMethod _retrieveCalculationMethod() {
//   //   final calculationMethodMap = {
//   //     const CalculationMethodStateJafari(): CalculationMethod.jafari,
//   //     const CalculationMethodStateKarachi(): CalculationMethod.karachi,
//   //     const CalculationMethodStateIslamicSocietyOfNorthAmerica(): CalculationMethod.northAmerica,
//   //     const CalculationMethodStateMuslimWorldLeague(): CalculationMethod.muslimWorldLeague,
//   //     const CalculationMethodStateUmmAlQura(): CalculationMethod.ummAlQura,
//   //     const CalculationMethodStateEgypt(): CalculationMethod.egyptian,
//   //     const CalculationMethodStateTehran(): CalculationMethod.tehran,
//   //     const CalculationMethodStateGulfRegion(): CalculationMethod.gulfRegion,
//   //     const CalculationMethodStateKuwait(): CalculationMethod.kuwait,
//   //     const CalculationMethodStateQatar(): CalculationMethod.qatar,
//   //     const CalculationMethodStateSingapore(): CalculationMethod.singapore,
//   //     const CalculationMethodStateFrance(): CalculationMethod.france,
//   //     const CalculationMethodStateTurkey(): CalculationMethod.turkey,
//   //     const CalculationMethodStateRussia(): CalculationMethod.russia,
//   //     const CalculationMethodStateDubai(): CalculationMethod.dubai,
//   //     const CalculationMethodStateJAKIM(): CalculationMethod.jakim,
//   //     const CalculationMethodStateTunisia(): CalculationMethod.tunisia,
//   //     const CalculationMethodStateAlgeria(): CalculationMethod.algeria,
//   //     const CalculationMethodStateKEMENAG(): CalculationMethod.kemenag,
//   //     const CalculationMethodStateMorocco(): CalculationMethod.morocco,
//   //     const CalculationMethodStateComunidadeIslamicaLisboa(): CalculationMethod.portugal,
//   //     const CalculationMethodStateJordanAwqaf(): CalculationMethod.jordan,
//   //   };

//   //   return calculationMethodMap[state.calculationMethod] ?? CalculationMethod.jordan; // Default fallback
//   // }

//   // HighLatitudeRule? _retrieveHighLatitudeRule() {
//   //   final highLatitudeRuleMap = {
//   //     const HightLatitudeCaluclationStateAngleBasedMethod(): HighLatitudeRule.twilightAngle,
//   //     const HightLatitudeCaluclationStateMidnight(): HighLatitudeRule.middleOfTheNight,
//   //     const HightLatitudeCaluclationStateSeventhPartOfTheNight(): HighLatitudeRule.seventhOfTheNight,
//   //   };

//   //   return highLatitudeRuleMap[state.hightLatitudeCaluclation];
//   // }

  // void _prepareSalahTiming() {
  //   final currentTime = DateTime.now();

  // Prepare device and application time
  // final deviceTime = currentTime.toLocal();
  // final applicationTime = currentTime.toUtc().add(_retrieveUtcOffset());

  // // Get Salah timings from PrayManager
  // final timings = _prayUsecase.getAllPrayTimeAsDateTimeForToday();

  // // Map Salah timings and their adjustments
  // final azanTimings = {
  //   PreviewBoxes.fajir: timings.fajir.add(Duration(minutes: state.editFajirTimeManual)),
  //   PreviewBoxes.sunrise: timings.sunrise.add(Duration(minutes: state.editSunriseTimeManual)),
  //   PreviewBoxes.zhur: timings.dhuhr.add(Duration(minutes: state.editDuhirTimeManual)),
  //   PreviewBoxes.asr: timings.asr.add(Duration(minutes: state.editAsrTimeManual)),
  //   PreviewBoxes.maghrib: timings.maghrib.add(Duration(minutes: state.editMagrebTimeManual)),
  //     PreviewBoxes.isha: timings.isha.add(Duration(minutes: state.editIshaTimeManual)),
  //     PreviewBoxes.midnight: timings.middleOfTheNight.add(Duration(minutes: state.editMidNightTimeManual)),
  //     PreviewBoxes.last3th: timings.lastThirdOfTheNight.add(Duration(minutes: state.editLast3thTimeTimeManual)),
  //     PreviewBoxes.deviceTime: deviceTime,
  //     PreviewBoxes.applicationTime: applicationTime,
  //   };

  //   // Dispatch updated timings
  //   azanTimings.forEach((azanType, time) {
  //     add(PrayCalculationSettingEvent.updateTimeOfPreview(azanType: azanType, time: time));
  //   });
  // }

  // /// Retrieves the UTC offset, either from Hive or the device's timezone.
  // Duration _retrieveUtcOffset() {
  //   final String hourOffset =
  //       _box.get(DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour, defaultValue: "");
  //   final String minuteOffset =
  //       _box.get(DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin, defaultValue: "");

  //   if (hourOffset.isEmpty) {
  //     return DateTime.now().timeZoneOffset;
  //   } else {
  //     return Duration(
  //       hours: int.tryParse(hourOffset) ?? 0,
  //       minutes: int.tryParse(minuteOffset) ?? 0,
  //     );
  //   }
  // }

  FutureOr<void> _setup(_Setup event, Emitter<PrayCalculationSettingState> emit) {
    _getDefaultSettingsHighLatitudeRule();
    _getDefaultSettingsCalculationMethod();
    _getDefaultSettingsMadhab();
    _getDefaultSettingsUtcOffset();
    _getDefaultSettingsMinutesEdited();

    // _prepareSalahTiming();
  }

  // FutureOr<void> _handleUpdateCalculationMethod(
  //     _UpdateCalculationMethod event, Emitter<PrayCalculationSettingState> emit) {
  //   emit(state.copyWith(calculationMethod: event.method, buttonsStatus: true));
  //   // _prepareSalahTiming();
  // }

  // FutureOr<void> _handleUpdateMathhab(_UpdateMathhab event, Emitter<PrayCalculationSettingState> emit) {
  //   emit(state.copyWith(mathhab: event.mathhab, buttonsStatus: true));
  //   // _prepareSalahTiming();
  // }

  // FutureOr<void> _handleUpdateTimeZone(_UpdateTimeZone event, Emitter<PrayCalculationSettingState> emit) {
  //   emit(state.copyWith(timeZone: event.value, buttonsStatus: true));
  //   // _prepareSalahTiming();
  // }

//   FutureOr<void> _handleUpdateAzanTypeInMin(_UpdateAzanTypeInMin event, Emitter<PrayCalculationSettingState> emit) {
//     final updateMapping = {
//       AzanTypeForEditMin.fajir: (int minutes) => state.copyWith(editFajirTimeManual: minutes, buttonsStatus: true),
//       AzanTypeForEditMin.sunrise: (int minutes) => state.copyWith(editSunriseTimeManual: minutes, buttonsStatus: true),
//       AzanTypeForEditMin.zhur: (int minutes) => state.copyWith(editDuhirTimeManual: minutes, buttonsStatus: true),
//       AzanTypeForEditMin.asr: (int minutes) => state.copyWith(editAsrTimeManual: minutes, buttonsStatus: true),
//       AzanTypeForEditMin.maghrib: (int minutes) => state.copyWith(editMagrebTimeManual: minutes, buttonsStatus: true),
//       AzanTypeForEditMin.isha: (int minutes) => state.copyWith(editIshaTimeManual: minutes, buttonsStatus: true),
//       AzanTypeForEditMin.midnight: (int minutes) =>
//           state.copyWith(editMidNightTimeManual: minutes, buttonsStatus: true),
//       AzanTypeForEditMin.last3th: (int minutes) =>
//           state.copyWith(editLast3thTimeTimeManual: minutes, buttonsStatus: true),
//     };

//     final updatedState = updateMapping[event.azanType]?.call(event.minutes);

//     if (updatedState != null) {
//       emit(updatedState);
// //       _prepareSalahTiming();
//     }
//   }

//   FutureOr<void> _handleUpdateHighLatitudeCalculation(
//       _UpdateHightLatitudeCalculation event, Emitter<PrayCalculationSettingState> emit) {
//     emit(state.copyWith(hightLatitudeCaluclation: event.state, buttonsStatus: true));
//     // _prepareSalahTiming();
//   }

//   FutureOr<void> _handleUpdateTimeOfPreview(_UpdateTimeOfPreview event, Emitter<PrayCalculationSettingState> emit) {
//     final updateMapping = {
//       PreviewBoxes.fajir: (DateTime time) => state.copyWith(fajirTime: time),
//       PreviewBoxes.sunrise: (DateTime time) => state.copyWith(sunriseTime: time),
//       PreviewBoxes.zhur: (DateTime time) => state.copyWith(duherTime: time),
//       PreviewBoxes.asr: (DateTime time) => state.copyWith(asrTime: time),
//       PreviewBoxes.maghrib: (DateTime time) => state.copyWith(megribTime: time),
//       PreviewBoxes.isha: (DateTime time) => state.copyWith(ishaTime: time),
//       PreviewBoxes.midnight: (DateTime time) => state.copyWith(midleNighTime: time),
//       PreviewBoxes.last3th: (DateTime time) => state.copyWith(last3thTime: time),
//       PreviewBoxes.deviceTime: (DateTime time) => state.copyWith(deviceTime: time),
//       PreviewBoxes.applicationTime: (DateTime time) => state.copyWith(applicationTime: time),
//     };

//     final updatedState = updateMapping[event.azanType]?.call(event.time);

//     if (updatedState != null) {
//       emit(updatedState);
//     }
//   }

//   FutureOr<void> _handleFactoryReset(event, Emitter<PrayCalculationSettingState> emit) {
//     // _initialize();
//     emit(state.copyWith(buttonsStatus: true));
//   }

//   FutureOr<void> _handleSaveChanges(event, Emitter<PrayCalculationSettingState> emit) async {
//     final saveMapping = {
//       DatabaseFieldPrayCalculationConstant.selectedCalculationMethod:
//           _getCalculationMethodSring(state.calculationMethod),
//       DatabaseFieldPrayCalculationConstant.selectedMadhab: _getMathhabString(state.mathhab),
//       DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour: "state.timeZone",
//       DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin: "state.timeZone",
//       DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin: state.editFajirTimeManual,
//       DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin: state.editSunriseTimeManual,
//       DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin: state.editDuhirTimeManual,
//       DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin: state.editAsrTimeManual,
//       DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin: state.editMagrebTimeManual,
//       DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin: state.editIshaTimeManual,
//       DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin: state.editMidNightTimeManual,
//       DatabaseFieldPrayCalculationConstant.selectedTimeLast3thOfNightMin: state.editLast3thTimeTimeManual,
//       DatabaseFieldPrayCalculationConstant.selectedHighLatitude:
//           _getHightLatitudeCaluclationString(state.hightLatitudeCaluclation),
//     };

//     for (final entry in saveMapping.entries) {
//       await _box.put(entry.key, entry.value);
//     }
  // }
}
