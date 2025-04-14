import 'dart:async';

import 'package:azkar/azkar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'azkar_after_salah_view_bloc.freezed.dart';
part 'azkar_after_salah_view_event.dart';
part 'azkar_after_salah_view_state.dart';

class AzkarAfterSalahViewBloc extends Bloc<AzkarAfterSalahViewEvent, AzkarAfterSalahViewState> {
  AzkarAfterSalahViewBloc() : super(const AzkarAfterSalahViewState()) {
    on<_InitializeAzkar>(_initializeAzkar);
    on<_ResetCounters>(_handleResetCounters);
    on<_IncrementCounter>(_handleIncrementCounter);
  }

  /// Checks if all counters are filled.
  bool isCounterFilled() => state.azkarList.every((zeker) => zeker.currentCount >= zeker.maxCount);

  /// Resets all counters to 0 and updates the state.
  FutureOr<void> _handleResetCounters(_ResetCounters event, Emitter<AzkarAfterSalahViewState> emit) {
    final List<AzkarModel> resetList = state.azkarList.map((zeker) => zeker.copyWith(currentCount: 0)).toList();
    emit(state.copyWith(azkarList: resetList));
  }

  /// Increments the counter of a specific Azkar item.
  FutureOr<void> _handleIncrementCounter(_IncrementCounter event, Emitter<AzkarAfterSalahViewState> emit) {
    final List<AzkarModel> updatedList = state.azkarList.map((zeker) {
      if (zeker.id == event.zeker.id) {
        return zeker.copyWith(currentCount: event.zeker.currentCount);
      }
      return zeker;
    }).toList();
    emit(state.copyWith(azkarList: updatedList));
  }

  FutureOr<void> _initializeAzkar(_InitializeAzkar event, Emitter<AzkarAfterSalahViewState> emit) {
    final azkarList = AzkarBase().azkarList(event.state);
    emit(state.copyWith(azkarList: azkarList));
  }
}
