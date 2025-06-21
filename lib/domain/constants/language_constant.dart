import 'package:islam_app/domain/model/language.dart';

/// A class containing language configuration constants for the Islam Mob app.
///
/// This class provides centralized access to supported languages and their
/// configurations. It defines the available languages for the app's
/// internationalization system, including:
/// - Language display names in their native scripts
/// - Country flag codes for visual representation
/// - Localized button text for language selection
/// - ISO language codes for system integration
///
/// The app currently supports Arabic and English, with Arabic being
/// particularly important for Islamic content and prayers.
class LanguageConstant {
  /// List of supported languages in the Islam Mob application.
  ///
  /// This list contains [LanguageModel] objects for each supported language:
  ///
  /// **Arabic (العربية)**:
  /// - Native name: العربية (Arabic script)
  /// - Flag: Saudi Arabia (SA) - representing the Arabic language
  /// - Select button: اختيار (Arabic for "Select")
  /// - Language code: 'ar' (ISO 639-1 standard)
  ///
  /// **English**:
  /// - Native name: English
  /// - Flag: Great Britain (GB) - representing the English language
  /// - Select button: Select
  /// - Language code: 'en' (ISO 639-1 standard)
  ///
  /// Arabic is included as the primary language for Islamic content,
  /// prayers, and religious texts, while English serves as the
  /// international language for broader accessibility.
  ///
  /// This list is used throughout the app for:
  /// - Language selection screens
  /// - Localization system configuration
  /// - UI language switching functionality
  /// - Flag display in language selection interfaces
  static List<LanguageModel> languages = [
    LanguageModel(
        name: 'العربية',
        flagCode: 'SA',
        selectButtonTitle: 'اختيار',
        languageCode: 'ar'),
    LanguageModel(
        name: 'English',
        flagCode: 'GB',
        selectButtonTitle: 'Select',
        languageCode: 'en'),
  ];
}
