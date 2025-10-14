part of 'estekara_bloc.dart';

/// State for the Istikhara (Estekara) BLoC.
///
/// This immutable state class manages the state of the Islamic Istikhara
/// (guidance prayer) interface. The state tracks:
/// - **Istikhara content list** with prayers, instructions, and guidance
/// - **Language direction** for proper Arabic and RTL text display
///
/// The state enables Muslims to access authentic Istikhara content with
/// proper formatting and language support, helping them perform this
/// important Islamic practice of seeking Allah's guidance when making
/// significant life decisions according to Sunnah teachings.
@freezed
abstract class EstekaraState with _$EstekaraState {
  /// Creates an [EstekaraState] with Istikhara content and language settings.
  ///
  /// Parameters:
  /// - [listOfItems]: List of Istikhara data including prayers, instructions,
  ///   and guidance content. Defaults to an empty list. Each item contains
  ///   the necessary information for performing Istikhara correctly.
  /// - [isRtlLanguage]: Boolean indicating if the current language requires
  ///   right-to-left text direction (Arabic, Farsi). Defaults to false.
  ///   When true, ensures proper display of Arabic Istikhara prayers.
  ///
  /// The state provides comprehensive information for displaying Istikhara
  /// content with proper Islamic authenticity and language support.
  ///
  /// Example:
  /// ```dart
  /// final state = EstekaraState(
  ///   listOfItems: [
  ///     EstekaraData(prayer: 'اللهم إني أستخيرك...', instruction: '...'),
  ///   ],
  ///   isRtlLanguage: true,
  /// );
  /// ```
  const factory EstekaraState({
    @Default([]) List<EstekaraData> listOfItems,
    @Default(false) bool isRtlLanguage,
  }) = _EstekaraState;
}
