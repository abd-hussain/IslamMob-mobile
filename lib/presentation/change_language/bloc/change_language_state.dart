part of 'change_language_bloc.dart';

/// State for the Change Language BLoC.
///
/// This immutable state class manages the state of the language selection
/// interface in the Islam Mob application. The state tracks:
/// - **Selected language** currently chosen by the user
///
/// The state enables the language selection interface to provide appropriate
/// visual feedback and manage the language change process for the global
/// Muslim community, ensuring Islamic content accessibility across different
/// languages while maintaining religious authenticity.
@freezed
class ChangeLanguageState with _$ChangeLanguageState {
  /// Creates a [ChangeLanguageState] with language selection information.
  ///
  /// Parameters:
  /// - [selectedLanguage]: The currently selected language model containing
  ///   language information, display name, and language code. Defaults to null
  ///   when no language is selected. When set, it indicates the user's choice
  ///   and enables the confirmation button for applying the language change.
  ///
  /// The state provides the necessary information for the language selection
  /// interface to display appropriate options and handle user interactions
  /// for changing the Islamic app's language settings.
  ///
  /// Example:
  /// ```dart
  /// final state = ChangeLanguageState(
  ///   selectedLanguage: LanguageModel(
  ///     languageCode: 'ar',
  ///     displayName: 'العربية',
  ///     selectButtonTitle: 'اختيار',
  ///   ),
  /// );
  /// ```
  const factory ChangeLanguageState({
    LanguageModel? selectedLanguage,
  }) = _ChangeLanguageState;
}
