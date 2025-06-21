part of 'tasbeeh_bloc.dart';

/// Events for the Tasbeeh (Islamic Digital Counter) BLoC.
///
/// This sealed class defines all possible events for managing the Islamic
/// digital counter (Tasbeeh) functionality, which helps Muslims perform
/// dhikr (remembrance of Allah) with accurate counting. These events handle:
/// - **Initial setup** with saved preferences and counter states
/// - **Audio feedback** for sound notifications during dhikr counting
/// - **Haptic feedback** for vibration notifications during counting
/// - **Dhikr selection** for choosing different Islamic remembrances
/// - **Counter management** for incrementing and resetting dhikr counts
///
/// The events support Muslims in their spiritual practice by providing
/// digital assistance for traditional Islamic dhikr counting, helping
/// maintain focus on remembrance of Allah while tracking repetitions.
@freezed
class TasbeehEvent with _$TasbeehEvent {
  /// Event to initialize the Tasbeeh with saved settings and counter states.
  ///
  /// This event loads the user's preferences for sound, vibration, selected
  /// dhikr phrases, and current counter values from persistent storage,
  /// restoring the Islamic counter to its previous state.
  const factory TasbeehEvent.fillInitialValue() = _FillInitialValue;

  /// Event to toggle sound feedback settings for dhikr counting.
  ///
  /// This event enables or disables audio notifications that play when
  /// Muslims tap the counter during their dhikr practice, providing
  /// auditory confirmation of each count.
  const factory TasbeehEvent.soundSetting() = _SoundSetting;

  /// Event to toggle vibration feedback settings for dhikr counting.
  ///
  /// This event enables or disables haptic feedback that vibrates the
  /// device when Muslims tap the counter, providing tactile confirmation
  /// of each dhikr count without sound.
  const factory TasbeehEvent.vibrationSetting() = _VibrationSetting;

  /// Event to select the left dhikr phrase for counting.
  ///
  /// This event allows Muslims to choose which Islamic remembrance
  /// (dhikr) phrase to use for the left counter, such as "SubhanAllah",
  /// "Alhamdulillah", or other traditional Islamic phrases.
  const factory TasbeehEvent.leftZikerSelected() = _LeftZikerSelected;

  /// Event to enable the right dhikr counter for dual counting.
  ///
  /// This event activates the right counter, allowing Muslims to count
  /// two different dhikr phrases simultaneously or track different
  /// sets of Islamic remembrances.
  const factory TasbeehEvent.rightZikerEnabled() = _RightZikerEnabled;

  /// Event to reset a specific dhikr counter to zero.
  ///
  /// This event clears the count for a specific dhikr phrase, allowing
  /// Muslims to start fresh counting sessions for their Islamic
  /// remembrance practice.
  ///
  /// Parameters:
  /// - [item]: The Tasbeeh model containing the dhikr to reset
  const factory TasbeehEvent.resetCounter(TasbeehModel item) = _ResetCounter;

  /// Event to increment a specific dhikr counter by one.
  ///
  /// This event increases the count for a specific dhikr phrase when
  /// Muslims tap the counter during their Islamic remembrance practice,
  /// tracking their spiritual progress.
  ///
  /// Parameters:
  /// - [item]: The Tasbeeh model containing the dhikr to increment
  const factory TasbeehEvent.incrementCounter(TasbeehModel item) =
      _IncrementCounter;
}
