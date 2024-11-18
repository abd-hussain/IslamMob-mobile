import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'azkar_event.dart';
part 'azkar_state.dart';
part 'azkar_bloc.freezed.dart';

class AzkarBloc extends Bloc<AzkarEvent, AzkarState> {
  AzkarBloc() : super(const AzkarState()) {
    on<_UpdateShowingAzkarStatus>(_updateShowingAzkarStatus);
    on<_UpdateListOfAzkar>(_updateListOfAzkar);
  }

  FutureOr<void> _updateShowingAzkarStatus(
      _UpdateShowingAzkarStatus event, Emitter<AzkarState> emit) {
    emit(state.copyWith(showAzkarView: event.status));
  }

  FutureOr<void> _updateListOfAzkar(
      _UpdateListOfAzkar event, Emitter<AzkarState> emit) {
    emit(state.copyWith(listOfAzkar: event.list));
  }
}
