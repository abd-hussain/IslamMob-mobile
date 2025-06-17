part of 'choose_sound_bloc.dart';

@freezed
class ChooseSoundEvent with _$ChooseSoundEvent {
  const factory ChooseSoundEvent.initialNotificationSoundSettings({
    required NotificationTypeState type,
    required IslamMobLocalizations localization,
  }) = _InitialNotificationSoundSettings;

  const factory ChooseSoundEvent.changeNotificationSoundSettings(
      String soundFileName) = _ChangeNotificationSoundSettings;

  const factory ChooseSoundEvent.saveChanges(
      {required NotificationTypeState type}) = _SaveChanges;
}
