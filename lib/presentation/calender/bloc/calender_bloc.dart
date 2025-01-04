import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/hijri_usecase.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';
import 'package:islam_app/models/calender.dart';

part 'calender_event.dart';
part 'calender_state.dart';
part 'calender_bloc.freezed.dart';

class CalenderBloc extends Bloc<CalenderEvent, CalenderState> {
  final PrayUsecase prayUsecase = PrayUsecase();

  CalenderBloc() : super(const CalenderState()) {
    on<_PrepareSalahTiming>(_prepareSalahTiming);
    on<_FillMonthName>(_fillMonthName);
  }

  FutureOr<void> _prepareSalahTiming(
      _PrepareSalahTiming event, Emitter<CalenderState> emit) {
    final List<CalenderModel> calenderData =
        prayUsecase.getAllPrayTimeAsDateTimeForThisMonth();

    if (calenderData.isEmpty) {
      emit(state.copyWith(status: const CalenderProcessStateError()));
    } else {
      emit(state.copyWith(
          list: calenderData, status: const CalenderProcessStateSuccss()));
    }
  }

  FutureOr<void> _fillMonthName(
      _FillMonthName event, Emitter<CalenderState> emit) {
    final String monthName = HijriUsecase.getThisMonthHijriDateName();
    emit(state.copyWith(monthName: monthName));
  }
}
