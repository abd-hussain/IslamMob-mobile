import 'dart:async';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_enum.dart';
import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_mob_adhan/adhan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pray_calculation_setting_event.dart';
part 'pray_calculation_setting_state.dart';
part 'pray_calculation_setting_bloc.freezed.dart';

class PrayCalculationSettingBloc
    extends Bloc<PrayCalculationSettingEvent, PrayCalculationSettingState> {
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);

  PrayCalculationSettingBloc() : super(const PrayCalculationSettingState()) {
    on<_UpdateCalculationMethod>(_handleUpdateCalculationMethod);
    on<_UpdateMathhab>(_handleUpdateMathhab);
    on<_UpdateTimeZone>(_handleUpdateTimeZone);
    on<_UpdateAzanTypeInMin>(_handleUpdateAzanTypeInMin);
    on<_UpdateHightLatitudeCalculation>(_handleUpdateHighLatitudeCalculation);
    on<_UpdateTimeOfPreview>(_handleUpdateTimeOfPreview);
    on<_FactoryReset>(_handleFactoryReset);
    on<_SaveChanges>(_handleSaveChanges);

    _initialize();
  }

  void _initialize() {
    final initialSettings = _getDefaultSettings();
    initialSettings.forEach((key, defaultValue) {
      _applySetting(key, _box.get(key, defaultValue: defaultValue));
    });
    _prepareSalahTiming();
  }

  Map<String, dynamic> _getDefaultSettings() => {
        DatabaseFieldPrayCalculationConstant.selectedCalculationMethod: "",
        DatabaseFieldPrayCalculationConstant.selectedMadhab: "",
        DatabaseFieldPrayCalculationConstant.selectedTimeZone: "UTC +03:00",
        DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin: 0,
        DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin: 0,
        DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin: 0,
        DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin: 0,
        DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin: 0,
        DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin: 0,
        DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin: 0,
        DatabaseFieldPrayCalculationConstant.selectedTimeLast3thOfNightMin: 0,
        DatabaseFieldPrayCalculationConstant.selectedHighLatitude: "",
      };

  // Apply Settings
  void _applySetting(String key, dynamic value) {
    final settingActions = {
      DatabaseFieldPrayCalculationConstant.selectedCalculationMethod: () {
        final method = value.isEmpty
            ? const CalculationMethodStateJordanAwqaf()
            : _mapToCalculationMethod(value);
        add(PrayCalculationSettingEvent.updateCalculationMethod(
            method: method));
      },
      DatabaseFieldPrayCalculationConstant.selectedMadhab: () {
        final mathhab =
            value.isEmpty ? const MathhabStateShaafei() : _mapToMathhab(value);
        add(PrayCalculationSettingEvent.updateMathhab(mathhab: mathhab));
      },
      DatabaseFieldPrayCalculationConstant.selectedTimeZone: () {
        add(PrayCalculationSettingEvent.updateTimeZone(value: value));
      },
      DatabaseFieldPrayCalculationConstant.selectedHighLatitude: () {
        final highLatitude = value.isEmpty
            ? const HightLatitudeCaluclationStateNone()
            : _mapToHighLatitude(value);
        add(PrayCalculationSettingEvent.updateHightLatitudeCalculation(
            state: highLatitude));
      },
    };

    if (settingActions.containsKey(key)) {
      settingActions[key]?.call();
    } else if (key.startsWith("selectedTime")) {
      _applyAzanTypeSetting(key, value as int);
    }
  }

  void _applyAzanTypeSetting(String key, int minutes) {
    final azanType = _mapKeyToAzanType(key);
    if (azanType != null) {
      add(PrayCalculationSettingEvent.updateAzanTypeInMin(
          minutes: minutes, azanType: azanType));
    }
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

  MathhabState _mapToMathhab(String value) {
    const mapping = {
      "MathhabStateShaafei": MathhabStateShaafei(),
      "MathhabStateHanafi": MathhabStateHanafi(),
    };

    return mapping[value] ?? const MathhabStateShaafei();
  }

  String _getMathhabString(MathhabState value) {
    final mapping = {
      const MathhabStateShaafei(): "MathhabStateShaafei",
      const MathhabStateHanafi(): "MathhabStateHanafi",
    };
    return mapping[value] ?? "MathhabStateShaafei";
  }

  Madhab _retrieveMadhab() {
    final mathhabMap = {
      const MathhabStateHanafi(): Madhab.hanafi,
      const MathhabStateShaafei(): Madhab.shafi,
    };

    return mathhabMap[state.mathhab] ??
        Madhab.shafi; // Default fallback to Shafi if no match
  }

  HightLatitudeCaluclationState _mapToHighLatitude(String value) {
    const mapping = {
      "HightLatitudeCaluclationStateNone": HightLatitudeCaluclationStateNone(),
      "HightLatitudeCaluclationStateAngleBasedMethod":
          HightLatitudeCaluclationStateAngleBasedMethod(),
      "HightLatitudeCaluclationStateMidnight":
          HightLatitudeCaluclationStateMidnight(),
      "HightLatitudeCaluclationStateSeventhPartOfTheNight":
          HightLatitudeCaluclationStateSeventhPartOfTheNight(),
    };

    return mapping[value] ?? const HightLatitudeCaluclationStateNone();
  }

  String _getHightLatitudeCaluclationString(
      HightLatitudeCaluclationState value) {
    final mapping = {
      const HightLatitudeCaluclationStateNone():
          "HightLatitudeCaluclationStateNone",
      const HightLatitudeCaluclationStateAngleBasedMethod():
          "HightLatitudeCaluclationStateAngleBasedMethod",
      const HightLatitudeCaluclationStateMidnight():
          "HightLatitudeCaluclationStateMidnight",
      const HightLatitudeCaluclationStateSeventhPartOfTheNight():
          "HightLatitudeCaluclationStateSeventhPartOfTheNight",
    };
    return mapping[value] ?? "HightLatitudeCaluclationStateNone";
  }

  String _getCalculationMethodSring(CalculationMethodState value) {
    final mapping = {
      const CalculationMethodStateJordanAwqaf():
          "CalculationMethodStateJordanAwqaf",
      const CalculationMethodStateJafari(): "CalculationMethodStateJafari",
      const CalculationMethodStateKarachi(): "CalculationMethodStateKarachi",
      const CalculationMethodStateIslamicSocietyOfNorthAmerica():
          "CalculationMethodStateIslamicSocietyOfNorthAmerica",
      const CalculationMethodStateMuslimWorldLeague():
          "CalculationMethodStateMuslimWorldLeague",
      const CalculationMethodStateUmmAlQura():
          "CalculationMethodStateUmmAlQura",
      const CalculationMethodStateEgypt(): "CalculationMethodStateEgypt",
      const CalculationMethodStateTehran(): "CalculationMethodStateTehran",
      const CalculationMethodStateGulfRegion():
          "CalculationMethodStateGulfRegion",
      const CalculationMethodStateQatar(): "CalculationMethodStateQatar",
      const CalculationMethodStateKuwait(): "CalculationMethodStateKuwait",
      const CalculationMethodStateSingapore():
          "CalculationMethodStateSingapore",
      const CalculationMethodStateFrance(): "CalculationMethodStateFrance",
      const CalculationMethodStateTurkey(): "CalculationMethodStateTurkey",
      const CalculationMethodStateRussia(): "CalculationMethodStateRussia",
      const CalculationMethodStateDubai(): "CalculationMethodStateDubai",
      const CalculationMethodStateJAKIM(): "CalculationMethodStateJAKIM",
      const CalculationMethodStateTunisia(): "CalculationMethodStateTunisia",
      const CalculationMethodStateAlgeria(): "CalculationMethodStateAlgeria",
      const CalculationMethodStateKEMENAG(): "CalculationMethodStateKEMENAG",
      const CalculationMethodStateMorocco(): "CalculationMethodStateMorocco",
      const CalculationMethodStateComunidadeIslamicaLisboa():
          "CalculationMethodStateComunidadeIslamicaLisboa",
    };
    return mapping[value] ?? "CalculationMethodStateJordanAwqaf";
  }

  CalculationMethodState _mapToCalculationMethod(String value) {
    final mapping = {
      "CalculationMethodStateJordanAwqaf":
          const CalculationMethodStateJordanAwqaf(),
      "CalculationMethodStateJafari": const CalculationMethodStateJafari(),
      "CalculationMethodStateKarachi": const CalculationMethodStateKarachi(),
      "CalculationMethodStateIslamicSocietyOfNorthAmerica":
          const CalculationMethodStateIslamicSocietyOfNorthAmerica(),
      "CalculationMethodStateMuslimWorldLeague":
          const CalculationMethodStateMuslimWorldLeague(),
      "CalculationMethodStateUmmAlQura":
          const CalculationMethodStateUmmAlQura(),
      "CalculationMethodStateEgypt": const CalculationMethodStateEgypt(),
      "CalculationMethodStateTehran": const CalculationMethodStateTehran(),
      "CalculationMethodStateGulfRegion":
          const CalculationMethodStateGulfRegion(),
      "CalculationMethodStateQatar": const CalculationMethodStateQatar(),
      "CalculationMethodStateKuwait": const CalculationMethodStateKuwait(),
      "CalculationMethodStateSingapore":
          const CalculationMethodStateSingapore(),
      "CalculationMethodStateFrance": const CalculationMethodStateFrance(),
      "CalculationMethodStateTurkey": const CalculationMethodStateTurkey(),
      "CalculationMethodStateRussia": const CalculationMethodStateRussia(),
      "CalculationMethodStateDubai": const CalculationMethodStateDubai(),
      "CalculationMethodStateJAKIM": const CalculationMethodStateJAKIM(),
      "CalculationMethodStateTunisia": const CalculationMethodStateTunisia(),
      "CalculationMethodStateAlgeria": const CalculationMethodStateAlgeria(),
      "CalculationMethodStateKEMENAG": const CalculationMethodStateKEMENAG(),
      "CalculationMethodStateMorocco": const CalculationMethodStateMorocco(),
      "CalculationMethodStateComunidadeIslamicaLisboa":
          const CalculationMethodStateComunidadeIslamicaLisboa(),
    };
    return mapping[value] ?? const CalculationMethodStateJordanAwqaf();
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

  Duration _retrieveUtcOffset() {
    const timeZoneOffsetMap = {
      "UTC -12:00": Duration(hours: -12),
      "UTC -11:00": Duration(hours: -11),
      "UTC -10:00": Duration(hours: -10),
      "UTC -09:30": Duration(hours: -9, minutes: -30),
      "UTC -09:00": Duration(hours: -9),
      "UTC -08:00": Duration(hours: -8),
      "UTC -07:00": Duration(hours: -7),
      "UTC -06:00": Duration(hours: -6),
      "UTC -05:00": Duration(hours: -5),
      "UTC -04:00": Duration(hours: -4),
      "UTC -03:30": Duration(hours: -3, minutes: -30),
      "UTC -03:00": Duration(hours: -3),
      "UTC -02:00": Duration(hours: -2),
      "UTC -01:00": Duration(hours: -1),
      "UTC/GMT": Duration(hours: 0),
      "UTC +01:00": Duration(hours: 1),
      "UTC +02:00": Duration(hours: 2),
      "UTC +03:00": Duration(hours: 3),
      "UTC +03:30": Duration(hours: 3, minutes: 30),
      "UTC +04:00": Duration(hours: 4),
      "UTC +04:30": Duration(hours: 4, minutes: 30),
      "UTC +05:00": Duration(hours: 5),
      "UTC +05:30": Duration(hours: 5, minutes: 30),
      "UTC +05:45": Duration(hours: 5, minutes: 45),
      "UTC +06:00": Duration(hours: 6),
      "UTC +06:30": Duration(hours: 6, minutes: 30),
      "UTC +07:00": Duration(hours: 7),
      "UTC +08:00": Duration(hours: 8),
      "UTC +08:45": Duration(hours: 8, minutes: 45),
      "UTC +09:00": Duration(hours: 9),
      "UTC +09:30": Duration(hours: 9, minutes: 30),
      "UTC +10:00": Duration(hours: 10),
      "UTC +10:30": Duration(hours: 10, minutes: 30),
      "UTC +11:00": Duration(hours: 11),
      "UTC +12:00": Duration(hours: 12),
      "UTC +12:45": Duration(hours: 12, minutes: 45),
      "UTC +13:00": Duration(hours: 13),
      "UTC +14:00": Duration(hours: 14),
    };

    return timeZoneOffsetMap[state.timeZone] ??
        const Duration(hours: 3); // Default fallback
  }

  CalculationMethod _retrieveCalculationMethod() {
    final calculationMethodMap = {
      const CalculationMethodStateJafari(): CalculationMethod.jafari,
      const CalculationMethodStateKarachi(): CalculationMethod.karachi,
      const CalculationMethodStateIslamicSocietyOfNorthAmerica():
          CalculationMethod.northAmerica,
      const CalculationMethodStateMuslimWorldLeague():
          CalculationMethod.muslimWorldLeague,
      const CalculationMethodStateUmmAlQura(): CalculationMethod.ummAlQura,
      const CalculationMethodStateEgypt(): CalculationMethod.egyptian,
      const CalculationMethodStateTehran(): CalculationMethod.tehran,
      const CalculationMethodStateGulfRegion(): CalculationMethod.gulfRegion,
      const CalculationMethodStateKuwait(): CalculationMethod.kuwait,
      const CalculationMethodStateQatar(): CalculationMethod.qatar,
      const CalculationMethodStateSingapore(): CalculationMethod.singapore,
      const CalculationMethodStateFrance(): CalculationMethod.france,
      const CalculationMethodStateTurkey(): CalculationMethod.turkey,
      const CalculationMethodStateRussia(): CalculationMethod.russia,
      const CalculationMethodStateDubai(): CalculationMethod.dubai,
      const CalculationMethodStateJAKIM(): CalculationMethod.jakim,
      const CalculationMethodStateTunisia(): CalculationMethod.tunisia,
      const CalculationMethodStateAlgeria(): CalculationMethod.algeria,
      const CalculationMethodStateKEMENAG(): CalculationMethod.kemenag,
      const CalculationMethodStateMorocco(): CalculationMethod.morocco,
      const CalculationMethodStateComunidadeIslamicaLisboa():
          CalculationMethod.portugal,
      const CalculationMethodStateJordanAwqaf(): CalculationMethod.jordan,
    };

    return calculationMethodMap[state.calculationMethod] ??
        CalculationMethod.jordan; // Default fallback
  }

  HighLatitudeRule? _retrieveHighLatitudeRule() {
    final highLatitudeRuleMap = {
      const HightLatitudeCaluclationStateAngleBasedMethod():
          HighLatitudeRule.twilightAngle,
      const HightLatitudeCaluclationStateMidnight():
          HighLatitudeRule.middleOfTheNight,
      const HightLatitudeCaluclationStateSeventhPartOfTheNight():
          HighLatitudeRule.seventhOfTheNight,
    };

    return highLatitudeRuleMap[state.hightLatitudeCaluclation];
  }

  void _prepareSalahTiming() {
    final prayManager = PrayManagerRepository(
        coordinates: _retrieveCoordinates(),
        utcOffset: _retrieveUtcOffset(),
        calculationMethod: _retrieveCalculationMethod(),
        madhab: _retrieveMadhab(),
        highLatitudeRule: _retrieveHighLatitudeRule());

    final currentTime = DateTime.now();

    // Prepare device and application time
    final deviceTime = currentTime.toLocal();
    final applicationTime = currentTime.toUtc().add(_retrieveUtcOffset());

    // Get Salah timings from PrayManager
    final timings = prayManager.getAllPrayTimeAsDateTimeForToday();

    // Map Salah timings and their adjustments
    final azanTimings = {
      PreviewBoxes.fajir:
          timings.fajir.add(Duration(minutes: state.editFajirTimeManual)),
      PreviewBoxes.sunrise:
          timings.sunrise.add(Duration(minutes: state.editSunriseTimeManual)),
      PreviewBoxes.zhur:
          timings.dhuhr.add(Duration(minutes: state.editDuhirTimeManual)),
      PreviewBoxes.asr:
          timings.asr.add(Duration(minutes: state.editAsrTimeManual)),
      PreviewBoxes.maghrib:
          timings.maghrib.add(Duration(minutes: state.editMagrebTimeManual)),
      PreviewBoxes.isha:
          timings.isha.add(Duration(minutes: state.editIshaTimeManual)),
      PreviewBoxes.midnight: timings.middleOfTheNight
          .add(Duration(minutes: state.editMidNightTimeManual)),
      PreviewBoxes.last3th: timings.lastThirdOfTheNight
          .add(Duration(minutes: state.editLast3thTimeTimeManual)),
      PreviewBoxes.deviceTime: deviceTime,
      PreviewBoxes.applicationTime: applicationTime,
    };

    // Dispatch updated timings
    azanTimings.forEach((azanType, time) {
      add(PrayCalculationSettingEvent.updateTimeOfPreview(
          azanType: azanType, time: time));
    });
  }

  FutureOr<void> _handleUpdateMathhab(
      _UpdateMathhab event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(mathhab: event.mathhab, buttonsStatus: true));
    _prepareSalahTiming();
  }

  FutureOr<void> _handleUpdateCalculationMethod(_UpdateCalculationMethod event,
      Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(calculationMethod: event.method, buttonsStatus: true));
    _prepareSalahTiming();
  }

  FutureOr<void> _handleUpdateTimeZone(
      _UpdateTimeZone event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(timeZone: event.value, buttonsStatus: true));
    _prepareSalahTiming();
  }

  FutureOr<void> _handleUpdateHighLatitudeCalculation(
      _UpdateHightLatitudeCalculation event,
      Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(
        hightLatitudeCaluclation: event.state, buttonsStatus: true));
    _prepareSalahTiming();
  }

  FutureOr<void> _handleUpdateAzanTypeInMin(
      _UpdateAzanTypeInMin event, Emitter<PrayCalculationSettingState> emit) {
    final updateMapping = {
      AzanTypeForEditMin.fajir: (int minutes) =>
          state.copyWith(editFajirTimeManual: minutes, buttonsStatus: true),
      AzanTypeForEditMin.sunrise: (int minutes) =>
          state.copyWith(editSunriseTimeManual: minutes, buttonsStatus: true),
      AzanTypeForEditMin.zhur: (int minutes) =>
          state.copyWith(editDuhirTimeManual: minutes, buttonsStatus: true),
      AzanTypeForEditMin.asr: (int minutes) =>
          state.copyWith(editAsrTimeManual: minutes, buttonsStatus: true),
      AzanTypeForEditMin.maghrib: (int minutes) =>
          state.copyWith(editMagrebTimeManual: minutes, buttonsStatus: true),
      AzanTypeForEditMin.isha: (int minutes) =>
          state.copyWith(editIshaTimeManual: minutes, buttonsStatus: true),
      AzanTypeForEditMin.midnight: (int minutes) =>
          state.copyWith(editMidNightTimeManual: minutes, buttonsStatus: true),
      AzanTypeForEditMin.last3th: (int minutes) => state.copyWith(
          editLast3thTimeTimeManual: minutes, buttonsStatus: true),
    };

    final updatedState = updateMapping[event.azanType]?.call(event.minutes);

    if (updatedState != null) {
      emit(updatedState);
      _prepareSalahTiming();
    }
  }

  FutureOr<void> _handleUpdateTimeOfPreview(
      _UpdateTimeOfPreview event, Emitter<PrayCalculationSettingState> emit) {
    final updateMapping = {
      PreviewBoxes.fajir: (DateTime time) => state.copyWith(fajirTime: time),
      PreviewBoxes.sunrise: (DateTime time) =>
          state.copyWith(sunriseTime: time),
      PreviewBoxes.zhur: (DateTime time) => state.copyWith(duherTime: time),
      PreviewBoxes.asr: (DateTime time) => state.copyWith(asrTime: time),
      PreviewBoxes.maghrib: (DateTime time) => state.copyWith(megribTime: time),
      PreviewBoxes.isha: (DateTime time) => state.copyWith(ishaTime: time),
      PreviewBoxes.midnight: (DateTime time) =>
          state.copyWith(midleNighTime: time),
      PreviewBoxes.last3th: (DateTime time) =>
          state.copyWith(last3thTime: time),
      PreviewBoxes.deviceTime: (DateTime time) =>
          state.copyWith(deviceTime: time),
      PreviewBoxes.applicationTime: (DateTime time) =>
          state.copyWith(applicationTime: time),
    };

    final updatedState = updateMapping[event.azanType]?.call(event.time);

    if (updatedState != null) {
      emit(updatedState);
    }
  }

  FutureOr<void> _handleFactoryReset(
      event, Emitter<PrayCalculationSettingState> emit) {
    _initialize();
    emit(state.copyWith(buttonsStatus: true));
  }

  FutureOr<void> _handleSaveChanges(
      event, Emitter<PrayCalculationSettingState> emit) async {
    final saveMapping = {
      DatabaseFieldPrayCalculationConstant.selectedCalculationMethod:
          _getCalculationMethodSring(state.calculationMethod),
      DatabaseFieldPrayCalculationConstant.selectedMadhab:
          _getMathhabString(state.mathhab),
      DatabaseFieldPrayCalculationConstant.selectedTimeZone: state.timeZone,
      DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin:
          state.editFajirTimeManual,
      DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin:
          state.editSunriseTimeManual,
      DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin:
          state.editDuhirTimeManual,
      DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin:
          state.editAsrTimeManual,
      DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin:
          state.editMagrebTimeManual,
      DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin:
          state.editIshaTimeManual,
      DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin:
          state.editMidNightTimeManual,
      DatabaseFieldPrayCalculationConstant.selectedTimeLast3thOfNightMin:
          state.editLast3thTimeTimeManual,
      DatabaseFieldPrayCalculationConstant.selectedHighLatitude:
          _getHightLatitudeCaluclationString(state.hightLatitudeCaluclation),
    };

    for (final entry in saveMapping.entries) {
      await _box.put(entry.key, entry.value);
    }
  }
}
