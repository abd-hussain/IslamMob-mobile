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

/// BLoC for managing Islamic prayer timing calculations and weekly schedules.
///
/// This BLoC handles the business logic for calculating and displaying
/// Islamic prayer times (Salah) for the current week and managing the
/// current prayer status. It manages:
/// - **Weekly prayer schedules** with accurate timing calculations
/// - **Current prayer type** identification for today's next prayer
/// - **Prayer time generation** using Islamic calculation methods
/// - **Location-based calculations** for accurate prayer times
///
/// The prayer timing system is fundamental to Islamic practice, providing
/// Muslims with accurate prayer times based on their geographical location
/// and Islamic calculation methods. This BLoC ensures proper prayer time
/// management for the entire week with current prayer status tracking.
class SalahTimingBloc extends Bloc<SalahTimingEvent, SalahTimingState> {
  /// Creates a [SalahTimingBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty prayer timing state and sets up
  /// event handlers for weekly prayer time updates and current prayer
  /// type management. Automatically initializes prayer timings for the week.
  SalahTimingBloc() : super(const SalahTimingState()) {
    on<_UpdateSalahTimingForTheWeek>(_onUpdateSalahTimingForTheWeek);
    on<_UpdateCurrentSalahType>(_onUpdateCurrentSalahType);
    _initializePrayerTimings();
  }

  /// Prayer use case instance for Islamic prayer time calculations and management.
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
    _UpdateCurrentSalahType event,
    Emitter<SalahTimingState> emit,
  ) {
    emit(state.copyWith(currentSalahType: event.status));
  }

  /// Event handler for updating the prayer timings for the week.
  FutureOr<void> _onUpdateSalahTimingForTheWeek(
    _UpdateSalahTimingForTheWeek event,
    Emitter<SalahTimingState> emit,
  ) {
    emit(state.copyWith(prayTimeForWeek: event.prayTimeForWeek));
  }
}
