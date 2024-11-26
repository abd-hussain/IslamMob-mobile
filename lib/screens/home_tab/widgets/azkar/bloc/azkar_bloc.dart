import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'azkar_event.dart';
part 'azkar_state.dart';
part 'azkar_bloc.freezed.dart';

class AzkarBloc extends Bloc<AzkarEvent, AzkarState> {
  AzkarBloc() : super(const AzkarState()) {
    on<_UpdateShowingAzkarStatus>(_updateShowingAzkarStatus);
    on<_UpdateCounter1Status>(_updateCounter1Status);
    on<_UpdateCounter2Status>(_updateCounter2Status);
    on<_UpdateCounter3Status>(_updateCounter3Status);
    on<_UpdateCounter4Status>(_updateCounter4Status);
    on<_UpdateCounter5Status>(_updateCounter5Status);
    on<_UpdateCounter6Status>(_updateCounter6Status);
    on<_UpdateCounter7Status>(_updateCounter7Status);
    on<_UpdateCounter8Status>(_updateCounter8Status);
    on<_UpdateCounter9Status>(_updateCounter9Status);
    on<_UpdateCounter10Status>(_updateCounter10Status);
    on<_UpdateCounter11Status>(_updateCounter11Status);
  }

  FutureOr<void> _updateShowingAzkarStatus(
      _UpdateShowingAzkarStatus event, Emitter<AzkarState> emit) {
    emit(state.copyWith(showAzkarView: event.status));
  }

  FutureOr<void> _updateCounter1Status(
      _UpdateCounter1Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter1: event.value));
  }

  FutureOr<void> _updateCounter2Status(
      _UpdateCounter2Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter2: event.value));
  }

  FutureOr<void> _updateCounter3Status(
      _UpdateCounter3Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter3: event.value));
  }

  FutureOr<void> _updateCounter4Status(
      _UpdateCounter4Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter4: event.value));
  }

  FutureOr<void> _updateCounter5Status(
      _UpdateCounter5Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter5: event.value));
  }

  FutureOr<void> _updateCounter6Status(
      _UpdateCounter6Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter6: event.value));
  }

  FutureOr<void> _updateCounter7Status(
      _UpdateCounter7Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter7: event.value));
  }

  FutureOr<void> _updateCounter8Status(
      _UpdateCounter8Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter8: event.value));
  }

  FutureOr<void> _updateCounter9Status(
      _UpdateCounter9Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter9: event.value));
  }

  FutureOr<void> _updateCounter10Status(
      _UpdateCounter10Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter10: event.value));
  }

  FutureOr<void> _updateCounter11Status(
      _UpdateCounter11Status event, Emitter<AzkarState> emit) {
    emit(state.copyWith(counter11: event.value));
  }
}
