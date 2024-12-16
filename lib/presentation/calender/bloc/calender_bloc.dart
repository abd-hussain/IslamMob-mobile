import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/domain/usecase/pray_manager/pray_usecase.dart';

part 'calender_event.dart';
part 'calender_state.dart';
part 'calender_bloc.freezed.dart';

class CalenderBloc extends Bloc<CalenderEvent, CalenderState> {
  CalenderBloc() : super(const CalenderState()) {
    on<_PrepareSalahTiming>(_prepareSalahTiming);
  }
  final PrayUsecase prayUsecase = PrayUsecase();

  FutureOr<void> _prepareSalahTiming(
      _PrepareSalahTiming event, Emitter<CalenderState> emit) {
    final List<CalenderModel> calenderData =
        prayUsecase.getAllPrayTimeAsDateTimeForMonth(
            fromDate: DateTime.now().subtract(const Duration(days: 15)),
            toDate: DateTime.now().add(const Duration(days: 15)));

    if (calenderData.isEmpty) {
      emit(state.copyWith(status: const CalenderProcessStateError()));
    } else {
      emit(state.copyWith(
          list: calenderData, status: const CalenderProcessStateSuccss()));
    }
  }
}
