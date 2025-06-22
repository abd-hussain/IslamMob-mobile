import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/domain/usecase/hijri_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';

part 'calender_bloc.freezed.dart';
part 'calender_event.dart';
part 'calender_state.dart';

/// BLoC for managing Islamic calendar functionality and prayer time displays.
///
/// This BLoC handles the business logic for the Islamic calendar screen,
/// which displays prayer times organized by Hijri (Islamic) calendar months.
/// It manages:
/// - **Hijri calendar navigation** between Islamic months
/// - **Prayer time data** for each day of the selected month
/// - **Month name display** in Arabic Islamic calendar format
/// - **Calendar state management** including loading and error states
///
/// The calendar integrates both Hijri and Gregorian date systems, providing
/// Muslims with a comprehensive view of prayer times organized according
/// to the Islamic lunar calendar. This helps users plan their religious
/// observances and maintain awareness of Islamic dates and months.
class CalenderBloc extends Bloc<CalenderEvent, CalenderState> {
  /// Prayer use case instance for calculating prayer times for calendar display.
  final PrayUsecase prayUsecase = PrayUsecase();

  /// Creates a [CalenderBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty calendar state and sets up event handlers for:
  /// - Preparing prayer timing data for the current month
  /// - Filling initial month name display
  /// - Navigating to next and previous Islamic months
  CalenderBloc() : super(const CalenderState()) {
    on<_PrepareSalahTiming>(_prepareSalahTiming);
    on<_FillMonthNameFirstTime>(_fillMonthNameFirstTime);
    on<_NextMonth>(_nextMonth);
    on<_PreviousMonth>(_previousMonth);
  }

  FutureOr<void> _prepareSalahTiming(
    _PrepareSalahTiming event,
    Emitter<CalenderState> emit,
  ) {
    final hijriDate = HijriUsecase.getHijriDateForThisDate(DateTime.now());
    final List<CalenderModel> calenderData = prayUsecase
        .getAllPrayTimeAsDateTimeForPassedMonth(hijriDate);

    if (calenderData.isEmpty) {
      emit(state.copyWith(status: const CalenderProcessStateError()));
    } else {
      emit(
        state.copyWith(
          list: calenderData,
          status: const CalenderProcessStateSuccss(),
        ),
      );
    }
  }

  FutureOr<void> _fillMonthNameFirstTime(
    _FillMonthNameFirstTime event,
    Emitter<CalenderState> emit,
  ) {
    final String monthName = HijriUsecase.getThisMonthHijriDateName();
    emit(state.copyWith(monthName: monthName));
  }

  FutureOr<void> _nextMonth(_NextMonth event, Emitter<CalenderState> emit) {
    final List<String> monthNames = HijriUsecase.getMonthNames();
    final int currentIndex = monthNames.indexOf(event.currentMonthName);

    if (currentIndex >= 0 && currentIndex < monthNames.length - 1) {
      _updateMonthAndData(monthNames[currentIndex + 1], emit);
    }
  }

  FutureOr<void> _previousMonth(
    _PreviousMonth event,
    Emitter<CalenderState> emit,
  ) {
    final List<String> monthNames = HijriUsecase.getMonthNames();
    final int currentIndex = monthNames.indexOf(event.currentMonthName);
    if (currentIndex > 0) {
      _updateMonthAndData(monthNames[currentIndex - 1], emit);
    }
  }

  /// Updates the [month Name] in the state and fetches corresponding data.
  void _updateMonthAndData(String newMonthName, Emitter<CalenderState> emit) {
    // Set the new month name in the state
    emit(state.copyWith(monthName: newMonthName));

    // Fetch Hijri date based on the new month name
    final hijriDate = HijriUsecase.getHijriDateFromMonthName(newMonthName);

    // Retrieve prayer time data for the selected month
    final List<CalenderModel> calenderData = prayUsecase
        .getAllPrayTimeAsDateTimeForPassedMonth(hijriDate);

    // Emit success or error state based on the data availability
    if (calenderData.isEmpty) {
      emit(state.copyWith(status: const CalenderProcessStateError()));
    } else {
      emit(
        state.copyWith(
          list: calenderData,
          status: const CalenderProcessStateSuccss(),
        ),
      );
    }
  }
}
