part of 'change_language_bloc.dart';

/// Events for the Change Language BLoC.
///
/// This sealed class defines all possible events for managing language
/// selection in the Islam Mob application. These events handle:
/// - **Language selection** from available language options
/// - **Language persistence** saving the chosen language to storage
///
/// The events support the global Muslim community by enabling language
/// changes that make Islamic content accessible in multiple languages
/// while maintaining religious authenticity and cultural appropriateness.
@freezed
class ChangeLanguageEvent with _$ChangeLanguageEvent {
  /// Event to change the selected language in the UI.
  ///
  /// This event updates the language selection state when a user chooses
  /// a different language from the available options. It provides immediate
  /// visual feedback in the language selection interface.
  ///
  /// Parameters:
  /// - [type]: The language model containing language information and metadata
  const factory ChangeLanguageEvent.changeSelectedCheckBoxLanguage({
    required LanguageModel type,
  }) = _ChangeSelectedCheckBoxLanguage;

  /// Event to persist the new language selection to storage.
  ///
  /// This event saves the selected language code to local storage and
  /// triggers the application-wide language change. It ensures the user's
  /// language preference is maintained across app sessions.
  ///
  /// Parameters:
  /// - [langCode]: The language code to save and apply (e.g., 'en', 'ar')
  const factory ChangeLanguageEvent.placeNewLanguage(
      {required String langCode}) = _PlaceNewLanguage;
}
