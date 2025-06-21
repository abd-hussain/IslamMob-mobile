part of 'azkar_after_salah_bloc.dart';

/// State for the Azkar after Salah BLoC.
///
/// This immutable state class manages the state of post-prayer Islamic
/// remembrances (azkar) that are recommended to be recited after completing
/// each of the five daily prayers. The state tracks:
/// - **Azkar list** with individual remembrances and their counts
/// - **UI visibility** for showing or hiding the azkar interface
///
/// The azkar after salah are an important Sunnah practice in Islam, typically
/// including remembrances like:
/// - Tasbih (SubhanAllah) - 33 times
/// - Tahmid (Alhamdulillah) - 33 times
/// - Takbir (Allahu Akbar) - 34 times
/// - Other recommended supplications and dhikr
///
/// This state enables proper tracking and completion of these spiritual
/// practices after each prayer, helping Muslims maintain consistent
/// post-prayer remembrance routines.
@freezed
class AzkarAfterSalahState with _$AzkarAfterSalahState {
  /// Creates an [AzkarAfterSalahState] with azkar list and visibility settings.
  ///
  /// Parameters:
  /// - [azkarList]: List of azkar (remembrances) with their counts and content.
  ///   Defaults to an empty list. Each AzkarModel contains the Arabic text,
  ///   translation, target count, and current progress for individual dhikr.
  /// - [showAzkarView]: Boolean indicating whether the azkar interface should
  ///   be visible to the user. Defaults to false. When true, displays the
  ///   post-prayer remembrance interface for user interaction.
  ///
  /// The azkar list is populated based on the prayer that was just completed,
  /// ensuring users receive the appropriate remembrances for their spiritual
  /// practice. The visibility flag controls when the azkar interface appears,
  /// typically after prayer completion notifications.
  ///
  /// Example:
  /// ```dart
  /// final state = AzkarAfterSalahState(
  ///   azkarList: [
  ///     AzkarModel(title: 'SubhanAllah', maxCount: 33, currentCount: 0),
  ///     AzkarModel(title: 'Alhamdulillah', maxCount: 33, currentCount: 0),
  ///   ],
  ///   showAzkarView: true,
  /// );
  /// ```
  const factory AzkarAfterSalahState({
    @Default([]) List<AzkarModel> azkarList,
    @Default(false) bool showAzkarView,
  }) = _AzkarAfterSalahState;
}
