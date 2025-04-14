part of 'azkar_after_salah_bloc.dart';

@freezed
class AzkarAfterSalahEvent with _$AzkarAfterSalahEvent {
  const factory AzkarAfterSalahEvent.fillInitialValue(AzkarSalahTimeState state) = _FillInitialValue;
  const factory AzkarAfterSalahEvent.soundSetting() = _SoundSetting;
  const factory AzkarAfterSalahEvent.vibrationSetting() = _VibrationSetting;
  const factory AzkarAfterSalahEvent.leftZikerSelected() = _LeftZikerSelected;
  const factory AzkarAfterSalahEvent.rightZikerEnabled() = _RightZikerEnabled;
  const factory AzkarAfterSalahEvent.resetCounter(AzkarModel item) = _ResetCounter;
  const factory AzkarAfterSalahEvent.incrementCounter(AzkarModel item) = _IncrementCounter;
}
