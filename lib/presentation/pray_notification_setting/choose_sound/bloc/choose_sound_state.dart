part of 'choose_sound_bloc.dart';

/// State class for the choose sound BLoC.
///
/// This class represents the current state of the sound selection screen,
/// including the currently selected sound and the list of available
/// notification sounds for prayer notifications.
@freezed
class ChooseSoundState with _$ChooseSoundState {
  /// Creates a [ChooseSoundState] with the given parameters.
  ///
  /// The [selectedSound] represents the currently selected sound file name,
  /// defaulting to an empty string if no sound is selected.
  ///
  /// The [notificationSounds] contains the list of available notification
  /// sounds that users can choose from, defaulting to an empty list.
  const factory ChooseSoundState({
    @Default("") String selectedSound,
    @Default([]) List<NotificationSound> notificationSounds,
  }) = _ChooseSoundState;
}
