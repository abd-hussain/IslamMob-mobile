part of 'choose_sound_bloc.dart';

@freezed
class ChooseSoundState with _$ChooseSoundState {
  const factory ChooseSoundState({
    @Default("") String selectedSound,
    @Default([]) List<NotificationSound> notificationSounds,
  }) = _ChooseSoundState;
}
