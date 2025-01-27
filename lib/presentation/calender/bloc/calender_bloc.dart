import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/domain/usecase/hijri_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';

part 'calender_bloc.freezed.dart';
part 'calender_event.dart';
part 'calender_state.dart';

class CalenderBloc extends Bloc<CalenderEvent, CalenderState> {
  final PrayUsecase prayUsecase = PrayUsecase();

  CalenderBloc() : super(const CalenderState()) {
    on<_PrepareSalahTiming>(_prepareSalahTiming);
    on<_FillMonthNameFirstTime>(_fillMonthNameFirstTime);
    on<_NextMonth>(_nextMonth);
    on<_PreviousMonth>(_previousMonth);
  }

  FutureOr<void> _prepareSalahTiming(_PrepareSalahTiming event, Emitter<CalenderState> emit) {
    final hijriDate = HijriUsecase.getHijriDateForThisDate(DateTime.now());
    final List<CalenderModel> calenderData = prayUsecase.getAllPrayTimeAsDateTimeForPassedMonth(hijriDate);

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

  FutureOr<void> _fillMonthNameFirstTime(_FillMonthNameFirstTime event, Emitter<CalenderState> emit) {
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

  FutureOr<void> _previousMonth(_PreviousMonth event, Emitter<CalenderState> emit) {
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
    final List<CalenderModel> calenderData = prayUsecase.getAllPrayTimeAsDateTimeForPassedMonth(hijriDate);

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
