part of 'choose_sound_bloc.dart';

/// Events for the Choose Sound BLoC.
///
/// This class defines all possible events that can be dispatched to the
/// [ChooseSoundBloc] to manage notification sound selection and configuration.
@freezed
class ChooseSoundEvent with _$ChooseSoundEvent {
  /// Initializes the notification sound settings for a specific notification type.
  ///
  /// This event loads the current sound configuration and available sound options
  /// for the specified notification type.
  ///
  /// [type] - the notification type to configure sounds for
  /// [localization] - localization object for displaying translated sound names
  const factory ChooseSoundEvent.initialNotificationSoundSettings({
    required NotificationTypeState type,
    required IslamMobLocalizations localization,
  }) = _InitialNotificationSoundSettings;

  /// Changes the selected notification sound.
  ///
  /// This event updates the currently selected sound file for the notification.
  /// The change is temporary until [//saveChanges] is called.
  ///
  /// [soundFileName] - the filename of the new sound to select
  const factory ChooseSoundEvent.changeNotificationSoundSettings(
      String soundFileName) = _ChangeNotificationSoundSettings;

  /// Saves the current sound selection changes to persistent storage.
  ///
  /// This event commits the selected sound configuration for the specified
  /// notification type to the database or user preferences.
  ///
  /// [type] - the notification type to save the sound settings for
  const factory ChooseSoundEvent.saveChanges(
      {required NotificationTypeState type}) = _SaveChanges;
}
