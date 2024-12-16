import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/azkar.dart';
import 'package:islam_app/domain/usecase/azkar_usecase.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';

part 'azkar_event.dart';
part 'azkar_state.dart';
part 'azkar_bloc.freezed.dart';

class AzkarBloc extends Bloc<AzkarEvent, AzkarState> {
  AzkarUseCase azkarUseCase = AzkarUseCase();

  AzkarBloc() : super(const AzkarState()) {
    on<_InitializeAzkar>(_initializeAzkar);
    on<_ResetCounters>(_handleResetCounters);
    on<_IncrementCounter>(_handleIncrementCounter);
  }

  /// Checks if all counters are filled.
  bool isCounterFilled() =>
      state.azkarList.every((zeker) => zeker.currentCount >= zeker.maxCount);

  /// Resets all counters to 0 and updates the state.
  FutureOr<void> _handleResetCounters(
      _ResetCounters event, Emitter<AzkarState> emit) {
    final List<AzkarModel> resetList = state.azkarList
        .map((zeker) => zeker.copyWith(currentCount: 0))
        .toList();
    emit(state.copyWith(azkarList: resetList));
  }

  /// Increments the counter of a specific Azkar item.
  FutureOr<void> _handleIncrementCounter(
      _IncrementCounter event, Emitter<AzkarState> emit) {
    final List<AzkarModel> updatedList = state.azkarList.map((zeker) {
      if (zeker.id == event.zeker.id) {
        return zeker.copyWith(currentCount: event.zeker.currentCount);
      }
      return zeker;
    }).toList();
    emit(state.copyWith(azkarList: updatedList));
  }

  FutureOr<void> _initializeAzkar(
      _InitializeAzkar event, Emitter<AzkarState> emit) {
    final azkarList = azkarUseCase.azkarList(event.state);
    emit(state.copyWith(azkarList: azkarList));
  }
}
