import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:azkar/azkar.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'azkar_after_salah_bloc.freezed.dart';
part 'azkar_after_salah_event.dart';
part 'azkar_after_salah_state.dart';

class AzkarAfterSalahBloc extends Bloc<AzkarAfterSalahEvent, AzkarAfterSalahState> {
  AzkarAfterSalahBloc() : super(const AzkarAfterSalahState()) {
    on<_FillInitialValue>(_fillInitialValue);
    on<_SoundSetting>(_soundSetting);
    on<_VibrationSetting>(_vibrationSetting);
    on<_LeftZikerSelected>(_leftZikerSelected);
    on<_RightZikerEnabled>(_rightZikerEnabled);
    on<_ResetCounter>(_resetCounter);
    on<_IncrementCounter>(_incrementCounter);
  }

  FutureOr<void> _fillInitialValue(_FillInitialValue event, Emitter<AzkarAfterSalahState> emit) {
    final azkarList = AzkarBase().azkarList(event.state);
    emit(state.copyWith(list: azkarList));
  }

  FutureOr<void> _soundSetting(_SoundSetting event, Emitter<AzkarAfterSalahState> emit) {
    final bool allowedSound = state.allowSound;
    emit(state.copyWith(allowSound: !allowedSound));
  }

  FutureOr<void> _vibrationSetting(_VibrationSetting event, Emitter<AzkarAfterSalahState> emit) {
    final bool allowedVibration = state.allowVibration;
    emit(state.copyWith(allowVibration: !allowedVibration));
  }

  FutureOr<void> _leftZikerSelected(_LeftZikerSelected event, Emitter<AzkarAfterSalahState> emit) {
    if (state.selectedListIndex != 0) {
      int currentIndex = state.selectedListIndex;
      currentIndex = currentIndex - 1;
      emit(state.copyWith(selectedListIndex: currentIndex));
    }
  }

  FutureOr<void> _rightZikerEnabled(_RightZikerEnabled event, Emitter<AzkarAfterSalahState> emit) {
    if (state.selectedListIndex != state.list.length - 1) {
      int currentIndex = state.selectedListIndex;
      currentIndex = currentIndex + 1;
      emit(state.copyWith(selectedListIndex: currentIndex));
    }
  }

  FutureOr<void> _resetCounter(_ResetCounter event, Emitter<AzkarAfterSalahState> emit) {
    final updatedItem = event.item.copyWith(currentCount: 0);
    final updatedList = state.list.map((item) {
      return item.id == event.item.id ? updatedItem : item;
    }).toList();

    emit(state.copyWith(list: updatedList));
  }

  FutureOr<void> _incrementCounter(_IncrementCounter event, Emitter<AzkarAfterSalahState> emit) {
    final updatedItem = event.item.copyWith(currentCount: event.item.currentCount + 1);

    final updatedList = state.list.map((item) {
      return item.id == event.item.id ? updatedItem : item;
    }).toList();

    emit(state.copyWith(list: updatedList));
    _beepAndVibrate(allowSound: state.allowSound, allowVibrate: state.allowVibration);
  }

  void _beepAndVibrate({required bool allowSound, required bool allowVibrate}) {
    if (allowVibrate) {
      HapticFeedback.vibrate();
    }
    if (allowSound) {
      AudioPlayer().play(
        AssetSource('audios/click.wav'),
      );
    }
  }
}
