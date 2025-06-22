import 'dart:async';

import 'package:azkar/azkar.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'azkar_after_salah_bloc.freezed.dart';
part 'azkar_after_salah_event.dart';
part 'azkar_after_salah_state.dart';

/// BLoC for managing Azkar (Islamic remembrances) after Salah (prayer).
///
/// This BLoC handles the business logic for post-prayer Islamic remembrances
/// and supplications that are recommended to be recited after completing
/// each of the five daily prayers. It manages:
/// - **Azkar list initialization** with proper counts for each remembrance
/// - **Counter management** for tracking recitation progress
/// - **Completion tracking** to know when all azkar are finished
/// - **Reset functionality** for starting new prayer azkar sessions
///
/// The azkar after salah are an important Sunnah practice in Islam, including
/// remembrances like Tasbih (SubhanAllah), Tahmid (Alhamdulillah), and
/// Takbir (Allahu Akbar), typically recited 33 times each after prayers.
/// This BLoC ensures proper tracking and completion of these spiritual practices.
class AzkarAfterSalahBloc
    extends Bloc<AzkarAfterSalahEvent, AzkarAfterSalahState> {
  /// Creates an [AzkarAfterSalahBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty azkar list and sets up event handlers for:
  /// - Loading initial azkar based on prayer type
  /// - Incrementing individual azkar counters
  /// - Resetting all counters for new sessions
  AzkarAfterSalahBloc() : super(const AzkarAfterSalahState()) {
    on<_FillInitialValue>(_fillInitialValue);
    on<_ResetCounter>(_resetCounter);
    on<_IncrementCounter>(_incrementCounter);
  }

  /// Checks if all counters are filled.
  bool isCounterFilled() =>
      state.azkarList.every((zeker) => zeker.currentCount >= zeker.maxCount);

  FutureOr<void> _resetCounter(
    _ResetCounter event,
    Emitter<AzkarAfterSalahState> emit,
  ) {
    final List<AzkarModel> resetList = state.azkarList
        .map((zeker) => zeker.copyWith(currentCount: 0))
        .toList();
    emit(state.copyWith(azkarList: resetList));
  }

  FutureOr<void> _incrementCounter(
    _IncrementCounter event,
    Emitter<AzkarAfterSalahState> emit,
  ) {
    final List<AzkarModel> updatedList = state.azkarList.map((zeker) {
      if (zeker.id == event.item.id) {
        return zeker.copyWith(currentCount: event.item.currentCount);
      }
      return zeker;
    }).toList();
    emit(state.copyWith(azkarList: updatedList));
  }

  FutureOr<void> _fillInitialValue(
    _FillInitialValue event,
    Emitter<AzkarAfterSalahState> emit,
  ) {
    final azkarList = AzkarBase().azkarList(event.state);
    emit(state.copyWith(azkarList: azkarList));
  }
}
