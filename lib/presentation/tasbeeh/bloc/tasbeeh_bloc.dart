import 'dart:async';
import 'dart:convert';

// import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/tasbeeh.dart';
import 'package:islam_app/domain/usecase/tasbeeh_usecase.dart';

part 'tasbeeh_bloc.freezed.dart';
part 'tasbeeh_event.dart';
part 'tasbeeh_state.dart';

class TasbeehBloc extends Bloc<TasbeehEvent, TasbeehState> {
  TasbeehBloc() : super(const TasbeehState()) {
    on<_FillInitialValue>(_fillInitialValue);
    on<_SoundSetting>(_soundSetting);
    on<_VibrationSetting>(_vibrationSetting);
    on<_LeftZikerSelected>(_leftZikerSelected);
    on<_RightZikerEnabled>(_rightZikerEnabled);
    on<_ResetCounter>(_resetCounter);
    on<_IncrementCounter>(_incrementCounter);
  }

  FutureOr<void> _fillInitialValue(_FillInitialValue event, Emitter<TasbeehState> emit) async {
    emit(state.copyWith(list: await TasbeehUseCase.getTasbeehList()));
  }

  FutureOr<void> _soundSetting(_SoundSetting event, Emitter<TasbeehState> emit) {
    final bool allowedSound = state.allowSound;
    emit(state.copyWith(allowSound: !allowedSound));
  }

  FutureOr<void> _vibrationSetting(_VibrationSetting event, Emitter<TasbeehState> emit) {
    final bool allowedVibration = state.allowVibration;
    emit(state.copyWith(allowVibration: !allowedVibration));
  }

  FutureOr<void> _leftZikerSelected(_LeftZikerSelected event, Emitter<TasbeehState> emit) {
    if (state.selectedListIndex != 0) {
      int currentIndex = state.selectedListIndex;
      currentIndex = currentIndex - 1;
      emit(state.copyWith(selectedListIndex: currentIndex));
    }
  }

  FutureOr<void> _rightZikerEnabled(_RightZikerEnabled event, Emitter<TasbeehState> emit) {
    if (state.selectedListIndex != state.list.length - 1) {
      int currentIndex = state.selectedListIndex;
      currentIndex = currentIndex + 1;
      emit(state.copyWith(selectedListIndex: currentIndex));
    }
  }

  FutureOr<void> _resetCounter(_ResetCounter event, Emitter<TasbeehState> emit) async {
    final updatedItem = event.item.copyWith(currentCount: 0);
    final updatedList = state.list.map((item) {
      return item.id == event.item.id ? updatedItem : item;
    }).toList();

    emit(state.copyWith(list: updatedList));
    await _saveTasbeehCounter();
  }

  FutureOr<void> _incrementCounter(_IncrementCounter event, Emitter<TasbeehState> emit) async {
    final updatedItem = event.item.copyWith(currentCount: event.item.currentCount + 1);

    final updatedList = state.list.map((item) {
      return item.id == event.item.id ? updatedItem : item;
    }).toList();

    emit(state.copyWith(list: updatedList));
    _beepAndVibrate(allowSound: state.allowSound, allowVibrate: state.allowVibration);
    await _saveTasbeehCounter();
  }

  Future<void> _saveTasbeehCounter() async {
    await DataBaseManagerBase.saveInDatabase(
      key: DatabaseFieldTasbeehConstant.tasbeehLastSavedDate,
      value: DateTime.now().toString(),
    );

    await DataBaseManagerBase.saveInDatabase(
      key: DatabaseFieldTasbeehConstant.tasbeehSavedCountsJson,
      value: jsonEncode(state.list),
    );
  }

  void _beepAndVibrate({required bool allowSound, required bool allowVibrate}) {
    if (allowVibrate) {
      HapticFeedback.vibrate();
    }
    if (allowSound) {
      //TODO
      // AudioPlayer().play(
      //   AssetSource('audios/click.wav'),
      // );
    }
  }
}
