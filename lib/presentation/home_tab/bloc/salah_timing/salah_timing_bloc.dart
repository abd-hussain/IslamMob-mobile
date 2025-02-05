import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_week_usecase.dart';
import 'package:islam_mob_adhan/adhan.dart';

part 'salah_timing_bloc.freezed.dart';
part 'salah_timing_event.dart';
part 'salah_timing_state.dart';

class SalahTimingBloc extends Bloc<SalahTimingEvent, SalahTimingState> {
  SalahTimingBloc() : super(const SalahTimingState()) {
    on<_UpdateSalahTimingForTheWeek>(_onUpdateSalahTimingForTheWeek);
    on<_UpdateCurrentSalahType>(_onUpdateCurrentSalahType);
    _initializePrayerTimings();
  }

  PrayUsecase prayUsecase = PrayUsecase();

  /// Initializes prayer timings for the week and updates the current Salah type.
  void _initializePrayerTimings() {
    final List<PrayTimingDateTimeModel> weeklyPrayerTimings =
        PrayWeekUsecase.generateWeeklyPrayerTimings(prayUsecase);

    // Identify today's next prayer type.
    _updateTodaySalahType();

    // Update the prayer timings for the week.
    add(SalahTimingEvent.updateSalahTimingForTheWeek(weeklyPrayerTimings));
  }

  /// Updates the current Salah type for today.
  void _updateTodaySalahType() {
    final DateTime today = DateTime.now();
    final specificDate = DateComponents(today.year, today.month, today.day);
    final PrayUsecase prayUsecase = PrayUsecase(specificDate: specificDate);

    final SalahTimeState nextSalahType = prayUsecase.getNextPrayType();

    add(SalahTimingEvent.updateCurrentSalahType(status: nextSalahType));
  }

  /// Event handler for updating the current Salah type.
  FutureOr<void> _onUpdateCurrentSalahType(
      _UpdateCurrentSalahType event, Emitter<SalahTimingState> emit) {
    emit(state.copyWith(currentSalahType: event.status));
  }

  /// Event handler for updating the prayer timings for the week.
  FutureOr<void> _onUpdateSalahTimingForTheWeek(
      _UpdateSalahTimingForTheWeek event, Emitter<SalahTimingState> emit) {
    emit(state.copyWith(prayTimeForWeek: event.prayTimeForWeek));
  }
}
