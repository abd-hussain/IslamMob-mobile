import 'dart:async';

import 'package:azkar/core/azkar_salah_time.dart';
import 'package:azkar/domain/model.dart';
import 'package:azkar/domain/usecase/azkar_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'azkar_after_salah_event.dart';
part 'azkar_after_salah_state.dart';
part 'azkar_after_salah_bloc.freezed.dart';

class AzkarAfterSalahBloc
    extends Bloc<AzkarAfterSalahEvent, AzkarAfterSalahState> {
  AzkarUseCase azkarUseCase = AzkarUseCase();

  AzkarAfterSalahBloc() : super(const AzkarAfterSalahState()) {
    on<_InitializeAzkar>(_initializeAzkar);
    on<_ResetCounters>(_handleResetCounters);
    on<_IncrementCounter>(_handleIncrementCounter);
  }

  /// Checks if all counters are filled.
  bool isCounterFilled() =>
      state.azkarList.every((zeker) => zeker.currentCount >= zeker.maxCount);

  /// Resets all counters to 0 and updates the state.
  FutureOr<void> _handleResetCounters(
      _ResetCounters event, Emitter<AzkarAfterSalahState> emit) {
    final List<AzkarModel> resetList = state.azkarList
        .map((zeker) => zeker.copyWith(currentCount: 0))
        .toList();
    emit(state.copyWith(azkarList: resetList));
  }

  /// Increments the counter of a specific Azkar item.
  FutureOr<void> _handleIncrementCounter(
      _IncrementCounter event, Emitter<AzkarAfterSalahState> emit) {
    final List<AzkarModel> updatedList = state.azkarList.map((zeker) {
      if (zeker.id == event.zeker.id) {
        return zeker.copyWith(currentCount: event.zeker.currentCount);
      }
      return zeker;
    }).toList();
    emit(state.copyWith(azkarList: updatedList));
  }

  FutureOr<void> _initializeAzkar(
      _InitializeAzkar event, Emitter<AzkarAfterSalahState> emit) {
    final azkarList = azkarUseCase.azkarList(event.state);
    emit(state.copyWith(azkarList: azkarList));
  }
}
