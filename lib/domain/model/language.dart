import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';

/// A model representing a language option in the Islam Mob application.
///
/// This immutable data class encapsulates all the information needed to
/// display and manage language selection in the app's internationalization
/// system. It includes:
/// - Display information for the language selection UI
/// - Technical identifiers for system integration
/// - Localized button text for user interaction
/// - Visual representation through country flags
///
/// The model is primarily used in language selection screens where users
/// can choose their preferred language for the app interface. It supports
/// the app's multi-language functionality, which is particularly important
/// for Islamic content that needs to be accessible in both Arabic (the
/// original language of Islamic texts) and other languages for broader
/// accessibility.
@freezed
class LanguageModel with _$LanguageModel {
  /// Creates a [LanguageModel] instance representing a selectable language option.
  ///
  /// Parameters:
  /// - [name]: The display name of the language in its native script
  /// - [flagCode]: The country code used for displaying the flag icon
  /// - [languageCode]: The ISO 639-1 language code for system integration
  /// - [selectButtonTitle]: The localized text for the selection button
  ///
  /// The [name] should be in the language's native script to help users
  /// easily identify their preferred language. The [flagCode] is used to
  /// display country flags that represent the language visually.
  ///
  /// The [languageCode] follows ISO 639-1 standards and is used by the
  /// app's localization system to load the appropriate translations.
  ///
  /// The [selectButtonTitle] provides localized button text, allowing
  /// users to understand the action in their preferred language.
  ///
  /// Example:
  /// ```dart
  /// final arabic = LanguageModel(
  ///   name: 'العربية',
  ///   flagCode: 'SA',
  ///   languageCode: 'ar',
  ///   selectButtonTitle: 'اختيار',
  /// );
  ///
  /// final english = LanguageModel(
  ///   name: 'English',
  ///   flagCode: 'GB',
  ///   languageCode: 'en',
  ///   selectButtonTitle: 'Select',
  /// );
  /// ```
  factory LanguageModel({
    required String name,
    required String flagCode,
    required String languageCode,
    required String selectButtonTitle,
  }) = _LanguageModel;
}
