part of 'language_bloc.dart';

/// Events for the Language Selection BLoC.
///
/// This sealed class defines all possible events for managing language
/// selection and configuration during the Islamic app onboarding process.
/// These events handle:
/// - **Language selection** from available supported languages
/// - **Language application** with immediate interface updates
/// - **App rebuilding** to apply language changes throughout the Islamic app
///
/// The events support the global Muslim community by enabling language
/// customization, ensuring Islamic content, prayer times, and spiritual
/// guidance are accessible in users' preferred languages.
@freezed
class LanguageEvent with _$LanguageEvent {
  /// Event to change the selected language during onboarding.
  ///
  /// This event updates the selected language in the state, allowing
  /// Muslims to choose their preferred language for accessing Islamic
  /// content and app interface elements.
  ///
  /// Parameters:
  /// - [type]: The language model containing language code and display information
  const factory LanguageEvent.changeSelectedLanguage({
    required LanguageModel type,
  }) = _ChangeSelectedLanguage;

  /// Event to apply the selected language to the Islamic app.
  ///
  /// This event saves the language preference and rebuilds the app
  /// interface to display Islamic content in the selected language,
  /// ensuring immediate application of language changes.
  ///
  /// Parameters:
  /// - [context]: Build context required for app rebuilding
  const factory LanguageEvent.setupLanguage({required BuildContext context}) =
      _SetupLanguage;
}
