import 'package:freezed_annotation/freezed_annotation.dart';

part 'hisn_al_muslim.freezed.dart';

/// A model representing an item from Hisn Al-Muslim (Fortress of the Muslim).
///
/// This immutable data class encapsulates Islamic supplications and remembrances
/// from the famous collection "Hisn Al-Muslim" by Sa'id bin Ali bin Wahf Al-Qahtani.
/// The book contains authentic supplications from the Quran and Sunnah for various
/// daily situations and occasions.
///
/// Each item can contain either simple text-based supplications or counter-based
/// supplications that need to be recited a specific number of times. The model
/// supports multi-language content (Arabic and English) and includes favorite
/// functionality for user personalization.
@freezed
class HisnAlMuslimModel with _$HisnAlMuslimModel {
  /// Creates a [HisnAlMuslimModel] instance representing a supplication item.
  ///
  /// Parameters:
  /// - [id]: Unique identifier for this supplication item
  /// - [title]: Multi-language title of the supplication category or item
  /// - [details]: The content state (either text-based or counter-based)
  /// - [isFavorite]: Whether this item is marked as favorite by the user
  ///
  /// Example:
  /// ```dart
  /// final supplication = HisnAlMuslimModel(
  ///   id: 1,
  ///   title: MultiLanguageString(ar: 'أذكار الصباح', en: 'Morning Remembrances'),
  ///   details: HisnAlMuslimModelState.text(list: [...], referance: [...]),
  ///   isFavorite: false,
  /// );
  /// ```
  factory HisnAlMuslimModel({
    required int id,
    required MultiLanguageString title,
    required HisnAlMuslimModelState details,
    @Default(false) bool isFavorite,
  }) = _HisnAlMuslimModel;
}

/// A sealed class representing different types of Hisn Al-Muslim content states.
///
/// This sealed class defines the possible content types for Hisn Al-Muslim items:
/// - **Text**: Simple text-based supplications with references
/// - **Counter**: Supplications that need to be recited a specific number of times
///
/// The sealed nature ensures type safety and exhaustive pattern matching
/// when handling different content types in the UI.
@freezed
sealed class HisnAlMuslimModelState with _$HisnAlMuslimModelState {
  const factory HisnAlMuslimModelState.text({
    required List<MultiLanguageString> list,
    required List<MultiLanguageString> referance,
  }) = HisnAlMuslimModelStateText;
  const factory HisnAlMuslimModelState.counter(
    List<HisnAlMuslimCounterDetailsModel> list,
  ) = HisnAlMuslimModelStateCounter;
}

/// A model representing counter-based supplication details from Hisn Al-Muslim.
///
/// This class encapsulates information for supplications that need to be
/// recited a specific number of times, such as "SubhanAllah" 33 times,
/// "Alhamdulillah" 33 times, etc. It includes tracking functionality
/// to monitor progress through the required repetitions.
///
/// The model supports multi-language content and includes references
/// to authentic Islamic sources (Quran and Hadith) for each supplication.
class HisnAlMuslimCounterDetailsModel {
  /// The multi-language title of the supplication or remembrance.
  ///
  /// This typically contains the name or category of the dhikr
  /// (e.g., "Tasbih", "Tahmid", "Takbir") in both Arabic and English.
  final MultiLanguageString descriptionTitle;

  /// The multi-language content of the supplication.
  ///
  /// Contains the actual Arabic text of the supplication along with
  /// its English translation or transliteration. This is the text
  /// that the user will recite the specified number of times.
  final MultiLanguageString description;

  /// List of multi-language references to Islamic sources.
  ///
  /// Contains citations to Quran verses, Hadith collections, or other
  /// authentic Islamic sources that validate this supplication.
  /// Each reference is provided in both Arabic and English.
  final List<MultiLanguageString> references;

  /// The total number of times this supplication should be recited.
  ///
  /// This represents the authentic count from Islamic sources
  /// (e.g., 33 times, 100 times, etc.) that the supplication
  /// should be repeated for maximum spiritual benefit.
  final int readCount;

  /// The current count of how many times the user has recited this supplication.
  ///
  /// This is a mutable field that tracks the user's progress through
  /// the required repetitions. It starts at 0 and increments up to [readCount].
  int currentCount;

  /// Creates a [HisnAlMuslimCounterDetailsModel] instance.
  ///
  /// Parameters:
  /// - [descriptionTitle]: The title of the supplication
  /// - [description]: The actual supplication text
  /// - [references]: List of Islamic source references
  /// - [readCount]: Total number of required repetitions
  /// - [currentCount]: Current progress (defaults to 0)
  ///
  /// Example:
  /// ```dart
  /// final dhikr = HisnAlMuslimCounterDetailsModel(
  ///   descriptionTitle: MultiLanguageString(ar: 'التسبيح', en: 'Tasbih'),
  ///   description: MultiLanguageString(ar: 'سبحان الله', en: 'SubhanAllah'),
  ///   references: [MultiLanguageString(ar: 'صحيح البخاري', en: 'Sahih Bukhari')],
  ///   readCount: 33,
  ///   currentCount: 0,
  /// );
  /// ```
  HisnAlMuslimCounterDetailsModel({
    required this.descriptionTitle,
    required this.description,
    required this.references,
    required this.readCount,
    this.currentCount = 0,
  });

  /// Ensuring multi-language strings are properly defined
  void assertValid() {
    descriptionTitle.assertValid();
    description.assertValid();
    for (final ref in references) {
      ref.assertValid();
    }
  }
}

/// Helper class to handle multi-language strings for Arabic and English content.
///
/// This class provides a standardized way to store and access text content
/// in both Arabic and English languages throughout the Islam Mob app.
/// It's particularly important for Islamic content where Arabic is the
/// original language and English provides accessibility for non-Arabic speakers.
///
/// The class ensures that both language versions are always provided,
/// maintaining consistency across the app's internationalization system.
class MultiLanguageString {
  /// The Arabic text content.
  ///
  /// Contains the text in Arabic script, which is essential for Islamic
  /// content as it preserves the original language of the Quran and Hadith.
  /// This field should never be empty for authentic Islamic content.
  final String ar;

  /// The English text content.
  ///
  /// Contains the English translation or transliteration of the Arabic content.
  /// This provides accessibility for non-Arabic speaking Muslims and helps
  /// in understanding the meaning of Islamic texts and supplications.
  final String en;

  /// Creates a [MultiLanguageString] instance with Arabic and English content.
  ///
  /// Both [ar] and [en] parameters are required to ensure complete
  /// internationalization support. The class validates that both
  /// strings are non-empty through the [assertValid] method.
  ///
  /// Parameters:
  /// - [ar]: The Arabic text content
  /// - [en]: The English text content
  ///
  /// Example:
  /// ```dart
  /// final greeting = MultiLanguageString(
  ///   ar: 'السلام عليكم',
  ///   en: 'Peace be upon you',
  /// );
  /// ```
  MultiLanguageString({required this.ar, required this.en});

  /// Method to get the text based on language preference
  String getText({required bool isArabic}) => isArabic ? ar : en;

  /// Assertion to ensure both languages are provided
  void assertValid() {
    assert(ar.isNotEmpty, "Arabic string must not be empty");
    assert(en.isNotEmpty, "English string must not be empty");
  }
}
