import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/pray_timing.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';
import 'package:islam_mob_adhan/adhan.dart';

part 'salah_timing_event.dart';
part 'salah_timing_state.dart';
part 'salah_timing_bloc.freezed.dart';

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
        _generateWeeklyPrayerTimings();

    // Identify today's next prayer type.
    _updateTodaySalahType();

    // Update the prayer timings for the week.
    add(SalahTimingEvent.updateSalahTimingForTheWeek(weeklyPrayerTimings));
  }

  /// Generates prayer timings for the current week (-3 to +4 days).
  List<PrayTimingDateTimeModel> _generateWeeklyPrayerTimings() {
    final List<PrayTimingDateTimeModel> prayerTimings = [];

    for (int offset = -3; offset <= 4; offset++) {
      final DateTime date = DateTime.now().add(Duration(days: offset));
      prayUsecase = PrayUsecase(
          specificDate: DateComponents(date.year, date.month, date.day));
      final PrayTimingDateTimeModel timings =
          prayUsecase.getAllPrayTimeAsDateTimeForToday();

      prayerTimings.add(timings);
    }

    return prayerTimings;
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