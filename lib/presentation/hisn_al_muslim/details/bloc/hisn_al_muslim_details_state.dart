part of 'hisn_al_muslim_details_bloc.dart';

/// State for the Hisn Al-Muslim Details BLoC.
///
/// This immutable state class manages the state of the detailed view for
/// Islamic supplications from Hisn Al-Muslim (Fortress of the Muslim).
/// The state tracks:
/// - **Current supplication** with Arabic text, translation, and metadata
/// - **Sharing content** prepared for social media and messaging platforms
/// - **Language direction** for proper Arabic and RTL text display
///
/// The state enables Muslims to view, interact with, and share authentic
/// Islamic supplications for various life situations, supporting their
/// daily spiritual practices and the sharing of beneficial Islamic knowledge.
@freezed
class HisnAlMuslimDetailsState with _$HisnAlMuslimDetailsState {
  /// Creates a [HisnAlMuslimDetailsState] with supplication details and settings.
  ///
  /// Parameters:
  /// - [item]: The current Hisn Al-Muslim supplication being displayed.
  ///   Contains Arabic text, translation, category, and favorite status.
  ///   Null when no supplication is selected.
  /// - [textToShare]: The formatted text prepared for sharing the supplication.
  ///   Defaults to an empty string. Updated when preparing content for
  ///   social media or messaging platforms.
  /// - [isRtlLanguage]: Boolean indicating if the current language requires
  ///   right-to-left text direction (Arabic, Farsi). Defaults to false.
  ///   When true, ensures proper display of Arabic supplication text.
  ///
  /// The state provides comprehensive information for displaying and
  /// interacting with Islamic supplications from the Hisn Al-Muslim collection.
  ///
  /// Example:
  /// ```dart
  /// final state = HisnAlMuslimDetailsState(
  ///   item: HisnAlMuslimModel(
  ///     arabicText: 'بسم الله الذي لا يضر...',
  ///     translation: 'In the name of Allah...',
  ///     category: 'Morning Remembrance',
  ///   ),
  ///   isRtlLanguage: true,
  /// );
  /// ```
  const factory HisnAlMuslimDetailsState({
    HisnAlMuslimModel? item,
    @Default("") textToShare,
    @Default(false) bool isRtlLanguage,
  }) = _HisnAlMuslimDetailsState;
}
