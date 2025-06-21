part of 'language_bloc.dart';

/// State for the Language Selection BLoC.
///
/// This immutable state class manages the state of language selection
/// during the Islamic app onboarding process. The state tracks:
/// - **Selected language** with language code and display information
/// - **Language preferences** for Islamic content localization
/// - **Interface configuration** for proper text direction and formatting
///
/// The state enables Muslims from different linguistic backgrounds to
/// access Islamic content, prayer times, and spiritual guidance in their
/// preferred language, supporting the global Muslim community's diverse
/// language needs.
@freezed
class LanguageState with _$LanguageState {
  /// Creates a [LanguageState] with language selection information.
  ///
  /// Parameters:
  /// - [selectedLanguage]: The currently selected language model.
  ///   Defaults to null (no language selected). Contains language code,
  ///   display name, and text direction information for proper Islamic
  ///   content presentation in the user's preferred language.
  ///
  /// The state provides essential information for language configuration
  /// and Islamic content localization throughout the app.
  ///
  /// Example:
  /// ```dart
  /// final state = LanguageState(
  ///   selectedLanguage: LanguageModel(
  ///     languageCode: 'ar',
  ///     displayName: 'العربية',
  ///     isRTL: true,
  ///   ),
  /// );
  /// ```
  const factory LanguageState({
    LanguageModel? selectedLanguage,
  }) = _LanguageState;
}
