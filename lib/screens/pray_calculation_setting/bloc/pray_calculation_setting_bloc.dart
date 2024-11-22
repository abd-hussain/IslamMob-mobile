import 'dart:async';

import 'package:adhan/adhan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

    _prepareSalahTiming();
  }

  void _prepareSalahTiming({
    Madhab madhab = Madhab.hanafi,
    CalculationMethod calculationMethod = CalculationMethod.umm_al_qura,
    Duration utcOffset = const Duration(hours: 3),
  }) {
    //TODO: handle PrayManager
    // save previos pass value
    final prayManager = PrayManager(
      coordinates: Coordinates(31.913932, 35.925581),
      utcOffset: utcOffset,
      calculationMethod: calculationMethod,
      madhab: madhab,
    );

    final model = prayManager.getAllPrayTime();

    add(PrayCalculationSettingEvent.updateFajirTime(fajirTime: model.fajir));
    add(PrayCalculationSettingEvent.updateSunriseTime(
        sunriseTime: model.sunrise));
    add(PrayCalculationSettingEvent.updateDuherTime(duherTime: model.dhuhr));
    add(PrayCalculationSettingEvent.updateAsrTime(asrTime: model.asr));
    add(PrayCalculationSettingEvent.updateMegribTime(
        megribTime: model.maghrib));
    add(PrayCalculationSettingEvent.updateIshaTime(ishaTime: model.isha));
    add(PrayCalculationSettingEvent.updateMidleNighTime(
        midleNighTime: model.middleOfTheNight));
    add(PrayCalculationSettingEvent.updateLast3thTime(
        last3thTime: model.lastThirdOfTheNight));
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
}
