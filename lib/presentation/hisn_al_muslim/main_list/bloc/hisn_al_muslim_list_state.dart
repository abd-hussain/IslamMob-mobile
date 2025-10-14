part of 'hisn_al_muslim_list_bloc.dart';

/// State for the Hisn Al-Muslim List BLoC.
///
/// This immutable state class manages the state of the main list interface
/// for Islamic supplications from Hisn Al-Muslim (Fortress of the Muslim).
/// The state tracks:
/// - **Supplication list** with all Islamic prayers and remembrances
/// - **Tab selection** for navigating between all and favorite supplications
/// - **Language direction** for proper Arabic and RTL text display
///
/// The state enables Muslims to browse, search, and organize authentic
/// Islamic supplications for various life situations, supporting their
/// daily spiritual practices and access to beneficial Islamic knowledge.
@freezed
abstract class HisnAlMuslimListState with _$HisnAlMuslimListState {
  /// Creates a [HisnAlMuslimListState] with supplication list and navigation settings.
  ///
  /// Parameters:
  /// - [list]: List of Hisn Al-Muslim supplications with content and metadata.
  ///   Defaults to an empty list. Each item contains Arabic text, translations,
  ///   categories, and favorite status for comprehensive Islamic content access.
  /// - [selectedIndex]: Currently selected tab index for navigation.
  ///   Defaults to 0 (all supplications). Index 1 typically represents favorites.
  /// - [isRtlLanguage]: Boolean indicating if the current language requires
  ///   right-to-left text direction (Arabic, Farsi). Defaults to false.
  ///   When true, ensures proper display of Arabic supplication text.
  ///
  /// The state provides comprehensive information for displaying and organizing
  /// Islamic supplications with proper navigation and language support.
  ///
  /// Example:
  /// ```dart
  /// final state = HisnAlMuslimListState(
  ///   list: [
  ///     HisnAlMuslimModel(
  ///       title: MultiLanguageString(ar: 'أذكار الصباح', en: 'Morning Remembrance'),
  ///       category: 'Daily Dhikr',
  ///       isFavorite: true,
  ///     ),
  ///   ],
  ///   selectedIndex: 0,
  ///   isRtlLanguage: true,
  /// );
  /// ```
  const factory HisnAlMuslimListState({
    @Default([]) List<HisnAlMuslimModel> list,
    @Default(0) int selectedIndex,
    @Default(false) bool isRtlLanguage,
  }) = _HisnAlMuslimListState;
}
