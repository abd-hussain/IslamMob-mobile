part of 'tasbeeh_bloc.dart';

@freezed
class TasbeehEvent with _$TasbeehEvent {
  const factory TasbeehEvent.fillInitialValue() = _FillInitialValue;
  const factory TasbeehEvent.soundSetting() = _SoundSetting;
  const factory TasbeehEvent.vibrationSetting() = _VibrationSetting;
  const factory TasbeehEvent.leftZikerSelected() = _LeftZikerSelected;
  const factory TasbeehEvent.rightZikerEnabled() = _RightZikerEnabled;
  const factory TasbeehEvent.resetCounter() = _ResetCounter;
  const factory TasbeehEvent.incrementCounter() = _IncrementCounter;
}
