import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/high_latitude_method.dart';
import 'package:islam_app/domain/sealed/madhab.dart';
import 'package:islam_app/domain/sealed/pray_calculation_method.dart';
import 'package:islam_app/domain/usecase/get_user_setting_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_setting_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_sealed.dart';

part 'pray_calculation_setting_bloc.freezed.dart';
part 'pray_calculation_setting_event.dart';
part 'pray_calculation_setting_state.dart';

class PrayCalculationSettingBloc
    extends Bloc<PrayCalculationSettingEvent, PrayCalculationSettingState> {
  final GetUserSettingUseCase _getUserSettingUseCase =
      locator<GetUserSettingUseCase>();

  PrayCalculationSettingBloc() : super(const PrayCalculationSettingState()) {
    on<_Setup>(_setup);
    on<_UpdateCalculationMethod>(_updateCalculationMethod);
    on<_UpdateMadhabMethod>(_updateMadhabMethod);
    on<_UpdateHightLatitudeCalculation>(_handleUpdateHighLatitudeCalculation);
    on<_UpdateTimeZone>(_handleUpdateTimeZone);
    on<_UpdateAzanTypeInMin>(_handleUpdateAzanTypeInMin);
    on<_UpdateTimeOfPreview>(_updateTimeOfPreview);
    on<_SaveChanges>(_handleSaveChanges);
  }

  void _prepareSalahTiming() {
    final currentTime = DateTime.now();

    // Prepare device and application time
    final deviceTime = currentTime.toLocal();
    final applicationTime = currentTime.toUtc().add(state.timeZone);

    final PraySettingUsecase praySettingUsecase = PraySettingUsecase(
        madhab: state.madhab.toString(),
        calculationMethod: state.calculationMethod.toString(),
        utcOffset: state.timeZone,
        highLatitudeRule: state.hightLatitudeCaluclation.toString());

    // Get Salah timings from PrayManager
    final timings = praySettingUsecase.getAllPrayTimeAsDateTimeForToday();

    // Map Salah timings and their adjustments
    final azanTimings = {
      const PreviewBoxesState.fajir():
          timings.fajir.add(Duration(minutes: state.editFajirTimeManual)),
      const PreviewBoxesState.sunrise():
          timings.sunrise.add(Duration(minutes: state.editSunriseTimeManual)),
      const PreviewBoxesState.zhur():
          timings.dhuhr.add(Duration(minutes: state.editDuhirTimeManual)),
      const PreviewBoxesState.asr():
          timings.asr.add(Duration(minutes: state.editAsrTimeManual)),
      const PreviewBoxesState.magrieb():
          timings.maghrib.add(Duration(minutes: state.editMagrebTimeManual)),
      const PreviewBoxesState.isha():
          timings.isha.add(Duration(minutes: state.editIshaTimeManual)),
      const PreviewBoxesState.midnight(): timings.middleOfTheNight
          .add(Duration(minutes: state.editMidNightTimeManual)),
      const PreviewBoxesState.last3th(): timings.lastThirdOfTheNight
          .add(Duration(minutes: state.editLast3thTimeTimeManual)),
      const PreviewBoxesState.deviceTime(): deviceTime,
      const PreviewBoxesState.applicationTime(): applicationTime,
    };

    // Dispatch updated timings
    azanTimings.forEach((azanType, time) {
      add(PrayCalculationSettingEvent.updateTimeOfPreview(
          azanType: azanType, time: time));
    });
  }

  FutureOr<void> _setup(
      _Setup event, Emitter<PrayCalculationSettingState> emit) {
    final PrayCalculationMethodState calculationMethod =
        _getUserSettingUseCase.savedCalculationMethod();
    final PrayHightLatitudeCaluclationState highLatitudeRule =
        _getUserSettingUseCase.savedHighLatitudeRule();
    final MadhabState madhab = _getUserSettingUseCase.savedMadhab();
    final Duration duration = _getUserSettingUseCase.savedUtcOffset();
    final minutesEdited = _getUserSettingUseCase.savedMinutesEdited();

    emit(state.copyWith(
      calculationMethod: calculationMethod,
      hightLatitudeCaluclation: highLatitudeRule,
      madhab: madhab,
      timeZone: duration,
      editFajirTimeManual:
          minutesEdited[const AzanTypeForEditMinState.fajir()] ?? 0,
      editSunriseTimeManual:
          minutesEdited[const AzanTypeForEditMinState.sunrise()] ?? 0,
      editDuhirTimeManual:
          minutesEdited[const AzanTypeForEditMinState.zhur()] ?? 0,
      editAsrTimeManual:
          minutesEdited[const AzanTypeForEditMinState.asr()] ?? 0,
      editMagrebTimeManual:
          minutesEdited[const AzanTypeForEditMinState.magrieb()] ?? 0,
      editIshaTimeManual:
          minutesEdited[const AzanTypeForEditMinState.isha()] ?? 0,
      editMidNightTimeManual:
          minutesEdited[const AzanTypeForEditMinState.midnight()] ?? 0,
      editLast3thTimeTimeManual:
          minutesEdited[const AzanTypeForEditMinState.last3th()] ?? 0,
    ));

    _prepareSalahTiming();
  }

  FutureOr<void> _updateCalculationMethod(_UpdateCalculationMethod event,
      Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(calculationMethod: event.method, buttonsStatus: true));
    _prepareSalahTiming();
  }

  FutureOr<void> _updateMadhabMethod(
      event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(madhab: event.madhab, buttonsStatus: true));
    _prepareSalahTiming();
  }

  FutureOr<void> _handleUpdateHighLatitudeCalculation(
      _UpdateHightLatitudeCalculation event,
      Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(
        hightLatitudeCaluclation: event.state, buttonsStatus: true));
    _prepareSalahTiming();
  }

  FutureOr<void> _handleUpdateTimeZone(
      _UpdateTimeZone event, Emitter<PrayCalculationSettingState> emit) {
    emit(state.copyWith(timeZone: event.value, buttonsStatus: true));
    _prepareSalahTiming();
  }

  FutureOr<void> _handleUpdateAzanTypeInMin(
      _UpdateAzanTypeInMin event, Emitter<PrayCalculationSettingState> emit) {
    final updateMapping = {
      const AzanTypeForEditMinState.fajir(): (int minutes) =>
          state.copyWith(editFajirTimeManual: minutes, buttonsStatus: true),
      const AzanTypeForEditMinState.sunrise(): (int minutes) =>
          state.copyWith(editSunriseTimeManual: minutes, buttonsStatus: true),
      const AzanTypeForEditMinState.zhur(): (int minutes) =>
          state.copyWith(editDuhirTimeManual: minutes, buttonsStatus: true),
      const AzanTypeForEditMinState.asr(): (int minutes) =>
          state.copyWith(editAsrTimeManual: minutes, buttonsStatus: true),
      const AzanTypeForEditMinState.magrieb(): (int minutes) =>
          state.copyWith(editMagrebTimeManual: minutes, buttonsStatus: true),
      const AzanTypeForEditMinState.isha(): (int minutes) =>
          state.copyWith(editIshaTimeManual: minutes, buttonsStatus: true),
      const AzanTypeForEditMinState.midnight(): (int minutes) =>
          state.copyWith(editMidNightTimeManual: minutes, buttonsStatus: true),
      const AzanTypeForEditMinState.last3th(): (int minutes) => state.copyWith(
          editLast3thTimeTimeManual: minutes, buttonsStatus: true),
    };

    final updatedState = updateMapping[event.azanType]?.call(event.minutes);

    if (updatedState != null) {
      emit(updatedState);
      _prepareSalahTiming();
    }
  }

  FutureOr<void> _updateTimeOfPreview(
      _UpdateTimeOfPreview event, Emitter<PrayCalculationSettingState> emit) {
    final updateMapping = {
      const PreviewBoxesState.fajir(): (DateTime time) =>
          state.copyWith(fajirTime: time),
      const PreviewBoxesState.sunrise(): (DateTime time) =>
          state.copyWith(sunriseTime: time),
      const PreviewBoxesState.zhur(): (DateTime time) =>
          state.copyWith(duherTime: time),
      const PreviewBoxesState.asr(): (DateTime time) =>
          state.copyWith(asrTime: time),
      const PreviewBoxesState.magrieb(): (DateTime time) =>
          state.copyWith(megribTime: time),
      const PreviewBoxesState.isha(): (DateTime time) =>
          state.copyWith(ishaTime: time),
      const PreviewBoxesState.midnight(): (DateTime time) =>
          state.copyWith(midleNighTime: time),
      const PreviewBoxesState.last3th(): (DateTime time) =>
          state.copyWith(last3thTime: time),
      const PreviewBoxesState.deviceTime(): (DateTime time) =>
          state.copyWith(deviceTime: time),
      const PreviewBoxesState.applicationTime(): (DateTime time) =>
          state.copyWith(applicationTime: time),
    };

    final updatedState = updateMapping[event.azanType]?.call(event.time);

    if (updatedState != null) {
      emit(updatedState);
    }
  }

  FutureOr<void> _handleSaveChanges(
      _SaveChanges event, Emitter<PrayCalculationSettingState> emit) async {
    final saveMapping = {
      DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour:
          state.timeZone.inHours.toString(),
      DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin:
          state.timeZone.inMinutes.remainder(60).toString(),
      DatabaseFieldPrayCalculationConstant.selectedTimeFajirMin:
          state.editFajirTimeManual.toString(),
      DatabaseFieldPrayCalculationConstant.selectedTimeSunriseMin:
          state.editSunriseTimeManual.toString(),
      DatabaseFieldPrayCalculationConstant.selectedTimeZhurMin:
          state.editDuhirTimeManual.toString(),
      DatabaseFieldPrayCalculationConstant.selectedTimeAsrMin:
          state.editAsrTimeManual.toString(),
      DatabaseFieldPrayCalculationConstant.selectedTimeMaghribMin:
          state.editMagrebTimeManual.toString(),
      DatabaseFieldPrayCalculationConstant.selectedTimeIshaMin:
          state.editIshaTimeManual.toString(),
      DatabaseFieldPrayCalculationConstant.selectedTimeMidnightMin:
          state.editMidNightTimeManual.toString(),
      DatabaseFieldPrayCalculationConstant.selectedTimeLast3thOfNightMin:
          state.editLast3thTimeTimeManual.toString(),
      DatabaseFieldPrayCalculationConstant.selectedCalculationMethod:
          state.calculationMethod.toString(),
      DatabaseFieldPrayCalculationConstant.selectedMadhab:
          state.madhab.toString(),
      DatabaseFieldPrayCalculationConstant.selectedHighLatitude:
          state.hightLatitudeCaluclation.toString(),
    };

    await FirebaseAnalyticsRepository.logEvent(
        name: "PraySettingsSaved", parameters: saveMapping);

    for (final entry in saveMapping.entries) {
      await DataBaseManagerBase.saveInDatabase(
          key: entry.key, value: entry.value);
    }
  }
}
