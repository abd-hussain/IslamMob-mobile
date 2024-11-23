import 'dart:async';

import 'package:adhan/adhan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/utils/pray_manager.dart';

part 'pray_calculation_setting_event.dart';
part 'pray_calculation_setting_state.dart';
part 'pray_calculation_setting_bloc.freezed.dart';

class PrayCalculationSettingBloc
    extends Bloc<PrayCalculationSettingEvent, PrayCalculationSettingState> {
  PrayCalculationSettingBloc() : super(const PrayCalculationSettingState()) {
    on<_UpdateFajirTime>(_updateFajirTime);
    on<_UpdateSunriseTime>(_updateSunriseTime);
    on<_UpdateDuherTime>(_updateDuherTime);
    on<_UpdateAsrTime>(_updateAsrTime);
    on<_UpdateMegribTime>(_updateMegribTime);
    on<_UpdateIshaTime>(_updateIshaTime);
    on<_UpdateMidleNighTime>(_updateMidleNighTime);
    on<_UpdateLast3thTime>(_updateLast3thTime);
    on<_UpdateMathhab>(_updateMathhab);
    on<_UpdateCalculationMethod>(_updateCalculationMethod);
    on<_UpdateTimeZone>(_updateTimeZone);
    on<_FactoryReset>(_factoryReset);
    on<_UpdateButtonsStatus>(_updateButtonsStatus);
    on<_UpdateApplicationAndDeviceTimeStatus>(
        _updateApplicationAndDeviceTimeStatus);
    on<_EditFajirTimeManual>(_editFajirTimeManual);
    on<_EditSunriseTimeManual>(_editSunriseTimeManual);
    on<_EditDuhirTimeManual>(_editDuhirTimeManual);
    on<_EditAsrTimeManual>(_editAsrTimeManual);
    on<_EditMagrebTimeManual>(_editMagrebTimeManual);
    on<_EditIshaTimeManual>(_editIshaTimeManual);
    on<_EditMidNightTimeManual>(_editMidNightTimeManual);
    on<_EditLast3thTimeTimeManual>(_editLast3thTimeTimeManual);
    on<_UpdateHightLatitudeCaluclation>(_updateHightLatitudeCaluclation);

    _prepareSalahTiming();
  }

  void _prepareSalahTiming({
    Madhab madhab = Madhab.hanafi,
    CalculationMethod calculationMethod = CalculationMethod.umm_al_qura,
    Duration utcOffset = const Duration(hours: 3),
    Duration fajirOffset = const Duration(minutes: 0),
    Duration sunriseOffset = const Duration(minutes: 0),
    Duration dhuhrOffset = const Duration(minutes: 0),
    Duration asrOffset = const Duration(minutes: 0),
    Duration maghribOffset = const Duration(minutes: 0),
    Duration ishaOffset = const Duration(minutes: 0),
    Duration middleOfTheNightOffset = const Duration(minutes: 0),
    Duration lastThirdOfTheNightOffset = const Duration(minutes: 0),
  }) {
    //TODO: handle PrayManager
    // save previos pass value
    final prayManager = PrayManager(
      coordinates: Coordinates(31.913932, 35.925581),
      utcOffset: utcOffset,
      calculationMethod: calculationMethod,
      madhab: madhab,
    );

    final currentTime = DateTime.now();

    String formattedDeviceTime =
        DateFormat('HH:mm').format(currentTime.toLocal());
    String formattedApplicationTime =
        DateFormat('HH:mm').format(currentTime.toUtc().add(utcOffset));

    final model = prayManager.getAllPrayTimeAsDateTime();

    add(PrayCalculationSettingEvent.updateFajirTime(
        fajirTime: DateFormat('hh:mm').format(model.fajir.add(fajirOffset))));
    add(PrayCalculationSettingEvent.updateSunriseTime(
        sunriseTime:
            DateFormat('hh:mm').format(model.sunrise.add(sunriseOffset))));
    add(PrayCalculationSettingEvent.updateDuherTime(
        duherTime: DateFormat('hh:mm').format(model.dhuhr.add(dhuhrOffset))));
    add(PrayCalculationSettingEvent.updateAsrTime(
        asrTime: DateFormat('hh:mm').format(model.asr.add(asrOffset))));
    add(PrayCalculationSettingEvent.updateMegribTime(
        megribTime:
            DateFormat('hh:mm').format(model.maghrib.add(maghribOffset))));
    add(PrayCalculationSettingEvent.updateIshaTime(
        ishaTime: DateFormat('hh:mm').format(model.isha.add(ishaOffset))));
    add(PrayCalculationSettingEvent.updateMidleNighTime(
        midleNighTime: DateFormat('hh:mm')
            .format(model.middleOfTheNight.add(middleOfTheNightOffset))));
    add(PrayCalculationSettingEvent.updateLast3thTime(
        last3thTime: DateFormat('hh:mm')
            .format(model.lastThirdOfTheNight.add(lastThirdOfTheNightOffset))));
    add(PrayCalculationSettingEvent.updateApplicationAndDeviceTimeStatus(
        deviceTime: formattedDeviceTime, appTime: formattedApplicationTime));
  }

  FutureOr<void> _updateFajirTime(
      _UpdateFajirTime event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(fajirTime: event.fajirTime));
  }

  FutureOr<void> _updateSunriseTime(
      _UpdateSunriseTime event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(sunriseTime: event.sunriseTime));
  }

  FutureOr<void> _updateDuherTime(
      _UpdateDuherTime event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(duherTime: event.duherTime));
  }

  FutureOr<void> _updateAsrTime(
      _UpdateAsrTime event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(asrTime: event.asrTime));
  }

  FutureOr<void> _updateMegribTime(
      _UpdateMegribTime event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(megribTime: event.megribTime));
  }

  FutureOr<void> _updateIshaTime(
      _UpdateIshaTime event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(ishaTime: event.ishaTime));
  }

  FutureOr<void> _updateMidleNighTime(
      _UpdateMidleNighTime event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(midleNighTime: event.midleNighTime));
  }

  FutureOr<void> _updateLast3thTime(
      _UpdateLast3thTime event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(last3thTime: event.last3thTime));
  }

  FutureOr<void> _updateMathhab(
      _UpdateMathhab event, Emitter<PrayCalculationSettingState> emit) {
    _prepareSalahTiming(
        madhab: event.mathhab == const MathhabState.hanafi()
            ? Madhab.hanafi
            : Madhab.shafi);
    emit(state.copyWith(mathhab: event.mathhab));
  }

  FutureOr<void> _updateCalculationMethod(_UpdateCalculationMethod event,
      Emitter<PrayCalculationSettingState> emit) {
    switch (event.method) {
      case CalculationMethodStateUmmAlQura _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.umm_al_qura);
      case CalculationMethodStateDubai _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.dubai);
      case CalculationMethodStateKarachi _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.karachi);
      case CalculationMethodStateMuslimWorldLeague _:
        _prepareSalahTiming(
            calculationMethod: CalculationMethod.muslim_world_league);
      case CalculationMethodStateEgypt _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.egyptian);
      case CalculationMethodStateKuwait _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.kuwait);
      case CalculationMethodStateQatar _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.qatar);
      case CalculationMethodStateTehran _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.tehran);
      case CalculationMethodStateTurkey _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.turkey);
      case CalculationMethodStateIslamicSocietyOfNorthAmerica _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.north_america);
      case CalculationMethodStateSingapore _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.singapore);
      case CalculationMethodStateCustom _:
        _prepareSalahTiming(calculationMethod: CalculationMethod.other);
      //TODO : handle other state
      default:
        break;
    }

    emit(state.copyWith(calculationMethod: event.method));
  }

  FutureOr<void> _updateTimeZone(
      _UpdateTimeZone event, Emitter<PrayCalculationSettingState> emit) {
    switch (event.value) {
      case "UTC -12:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -12));
      case "UTC -11:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -11));
      case "UTC -10:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -10));
      case "UTC -09:30":
        _prepareSalahTiming(utcOffset: const Duration(hours: -9, minutes: -30));
      case "UTC -09:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -9));
      case "UTC -08:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -8));
      case "UTC -07:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -7));
      case "UTC -06:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -6));
      case "UTC -05:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -5));
      case "UTC -04:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -4));
      case "UTC -03:30":
        _prepareSalahTiming(utcOffset: const Duration(hours: -3, minutes: -30));
      case "UTC -03:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -3));
      case "UTC -02:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -2));
      case "UTC -01:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: -1));
      case "UTC/GMT":
        _prepareSalahTiming(utcOffset: const Duration(hours: 0));
      case "UTC +01:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 1));
      case "UTC +02:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 2));
      case "UTC +03:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 3));
      case "UTC +03:30":
        _prepareSalahTiming(utcOffset: const Duration(hours: 3, minutes: 30));
      case "UTC +04:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 4));
      case "UTC +04:30":
        _prepareSalahTiming(utcOffset: const Duration(hours: 4, minutes: 30));
      case "UTC +05:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 5));
      case "UTC +05:30":
        _prepareSalahTiming(utcOffset: const Duration(hours: 5, minutes: 30));
      case "UTC +05:45":
        _prepareSalahTiming(utcOffset: const Duration(hours: 5, minutes: 45));
      case "UTC +06:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 6));
      case "UTC +06:30":
        _prepareSalahTiming(utcOffset: const Duration(hours: 6, minutes: 30));
      case "UTC +07:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 7));
      case "UTC +08:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 8));
      case "UTC +08:45":
        _prepareSalahTiming(utcOffset: const Duration(hours: 8, minutes: 45));
      case "UTC +09:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 9));
      case "UTC +09:30":
        _prepareSalahTiming(utcOffset: const Duration(hours: 9, minutes: 30));
      case "UTC +10:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 10));
      case "UTC +10:30":
        _prepareSalahTiming(utcOffset: const Duration(hours: 10, minutes: 30));
      case "UTC +11:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 11));
      case "UTC +12:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 12));
      case "UTC +12:45":
        _prepareSalahTiming(utcOffset: const Duration(hours: 12, minutes: 45));
      case "UTC +13:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 13));
      case "UTC +14:00":
        _prepareSalahTiming(utcOffset: const Duration(hours: 14));
      default:
        break;
    }
    emit(state.copyWith(timeZone: event.value));
  }

  FutureOr<void> _factoryReset(
      event, Emitter<PrayCalculationSettingState> emit) {
    //TODO
  }

  FutureOr<void> _updateButtonsStatus(
      _UpdateButtonsStatus event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(buttonsStatus: event.status));
  }

  FutureOr<void> _updateApplicationAndDeviceTimeStatus(
      _UpdateApplicationAndDeviceTimeStatus event,
      Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(
        applicationTime: event.appTime, deviceTime: event.deviceTime));
  }

  FutureOr<void> _editFajirTimeManual(
      _EditFajirTimeManual event, Emitter<PrayCalculationSettingState> emit) {
    _prepareSalahTiming(fajirOffset: Duration(minutes: event.value));
    emit(state.copyWith(editFajirTimeManual: event.value));
  }

  FutureOr<void> _editSunriseTimeManual(
      _EditSunriseTimeManual event, Emitter<PrayCalculationSettingState> emit) {
    _prepareSalahTiming(sunriseOffset: Duration(minutes: event.value));
    emit(state.copyWith(editSunriseTimeManual: event.value));
  }

  FutureOr<void> _editDuhirTimeManual(
      _EditDuhirTimeManual event, Emitter<PrayCalculationSettingState> emit) {
    _prepareSalahTiming(dhuhrOffset: Duration(minutes: event.value));
    emit(state.copyWith(editDuhirTimeManual: event.value));
  }

  FutureOr<void> _editAsrTimeManual(
      _EditAsrTimeManual event, Emitter<PrayCalculationSettingState> emit) {
    _prepareSalahTiming(asrOffset: Duration(minutes: event.value));
    emit(state.copyWith(editAsrTimeManual: event.value));
  }

  FutureOr<void> _editMagrebTimeManual(
      _EditMagrebTimeManual event, Emitter<PrayCalculationSettingState> emit) {
    _prepareSalahTiming(maghribOffset: Duration(minutes: event.value));
    emit(state.copyWith(editMagrebTimeManual: event.value));
  }

  FutureOr<void> _editIshaTimeManual(
      _EditIshaTimeManual event, Emitter<PrayCalculationSettingState> emit) {
    _prepareSalahTiming(ishaOffset: Duration(minutes: event.value));
    emit(state.copyWith(editIshaTimeManual: event.value));
  }

  FutureOr<void> _editMidNightTimeManual(_EditMidNightTimeManual event,
      Emitter<PrayCalculationSettingState> emit) {
    _prepareSalahTiming(middleOfTheNightOffset: Duration(minutes: event.value));
    emit(state.copyWith(editMidNightTimeManual: event.value));
  }

  FutureOr<void> _editLast3thTimeTimeManual(_EditLast3thTimeTimeManual event,
      Emitter<PrayCalculationSettingState> emit) {
    _prepareSalahTiming(
        lastThirdOfTheNightOffset: Duration(minutes: event.value));
    emit(state.copyWith(editLast3thTimeTimeManual: event.value));
  }

  FutureOr<void> _updateHightLatitudeCaluclation(
      _UpdateHightLatitudeCaluclation event,
      Emitter<PrayCalculationSettingState> emit) {
    //TODO
    // _prepareSalahTiming(lastThirdOfTheNightOffset: Duration(hours: event.value));
    emit(state.copyWith(hightLatitudeCaluclation: event.state));
  }
}
