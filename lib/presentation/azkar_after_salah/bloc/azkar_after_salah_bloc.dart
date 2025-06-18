import 'dart:async';

import 'package:azkar/azkar.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'azkar_after_salah_bloc.freezed.dart';
part 'azkar_after_salah_event.dart';
part 'azkar_after_salah_state.dart';

class AzkarAfterSalahBloc
    extends Bloc<AzkarAfterSalahEvent, AzkarAfterSalahState> {
  AzkarAfterSalahBloc() : super(const AzkarAfterSalahState()) {
    on<_FillInitialValue>(_fillInitialValue);
    on<_ResetCounter>(_resetCounter);
    on<_IncrementCounter>(_incrementCounter);
  }

  /// Checks if all counters are filled.
  bool isCounterFilled() =>
      state.azkarList.every((zeker) => zeker.currentCount >= zeker.maxCount);

  FutureOr<void> _resetCounter(
      _ResetCounter event, Emitter<AzkarAfterSalahState> emit) {
    final List<AzkarModel> resetList = state.azkarList
        .map((zeker) => zeker.copyWith(currentCount: 0))
        .toList();
    emit(state.copyWith(azkarList: resetList));
  }

  FutureOr<void> _incrementCounter(
      _IncrementCounter event, Emitter<AzkarAfterSalahState> emit) {
    final List<AzkarModel> updatedList = state.azkarList.map((zeker) {
      if (zeker.id == event.item.id) {
        return zeker.copyWith(currentCount: event.item.currentCount);
      }
      return zeker;
    }).toList();
    emit(state.copyWith(azkarList: updatedList));
  }

  FutureOr<void> _fillInitialValue(
      _FillInitialValue event, Emitter<AzkarAfterSalahState> emit) {
    final azkarList = AzkarBase().azkarList(event.state);
    emit(state.copyWith(azkarList: azkarList));
  }
}
