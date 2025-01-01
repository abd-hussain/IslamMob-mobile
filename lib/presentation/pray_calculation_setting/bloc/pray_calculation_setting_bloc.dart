import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:islam_app/domain/usecase/get_user_setting_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_setting_usecase.dart';
import 'package:islam_app/domain/model/high_latitude_method.dart';
import 'package:islam_app/domain/model/madhab.dart';
import 'package:islam_app/domain/model/pray_calculation_method.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pray_calculation_setting_event.dart';
part 'pray_calculation_setting_state.dart';
part 'pray_calculation_setting_bloc.freezed.dart';

class PrayCalculationSettingBloc
    extends Bloc<PrayCalculationSettingEvent, PrayCalculationSettingState> {
  final GetUserSettingUseCase _getUserSettingUseCase = GetUserSettingUseCase();

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

    late PraySettingUsecase praySettingUsecase = PraySettingUsecase(
        madhab: state.madhab.toString(),
        calculationMethod: state.calculationMethod.toString(),
        utcOffset: state.timeZone,
        highLatitudeRule: state.hightLatitudeCaluclation.toString());

    // Get Salah timings from PrayManager
    final timings = praySettingUsecase.getAllPrayTimeAsDateTimeForToday();

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
      editFajirTimeManual: minutesEdited[AzanTypeForEditMin.fajir] ?? 0,
      editSunriseTimeManual: minutesEdited[AzanTypeForEditMin.sunrise] ?? 0,
      editDuhirTimeManual: minutesEdited[AzanTypeForEditMin.zhur] ?? 0,
      editAsrTimeManual: minutesEdited[AzanTypeForEditMin.asr] ?? 0,
      editMagrebTimeManual: minutesEdited[AzanTypeForEditMin.maghrib] ?? 0,
      editIshaTimeManual: minutesEdited[AzanTypeForEditMin.isha] ?? 0,
      editMidNightTimeManual: minutesEdited[AzanTypeForEditMin.midnight] ?? 0,
      editLast3thTimeTimeManual: minutesEdited[AzanTypeForEditMin.last3th] ?? 0,
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

  FutureOr<void> _updateTimeOfPreview(
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
    for (final entry in saveMapping.entries) {
      await DataBaseManagerBase.saveInDatabase(
          key: entry.key, value: entry.value);
    }
  }
}
