/// Constants for database keys related to Quran copy settings and data.
///
/// This class provides string constants used as database keys for storing
/// Quran-related user preferences and data, including print settings,
/// reading progress, bookmarks, and navigation mappings.
class DatabaseFieldQuranCopyConstant {
  /// Database key for the selected Quran print name to use.
  ///
  /// Stores the name of the Quran print/copy that the user has selected
  /// for reading. This determines which visual style or layout is used.
  static const String quranKaremPrintNameToUse = "quranKaremPrintNameToUse";

  /// Database key for the last page number the user was reading.
  ///
  /// Stores the page number where the user last stopped reading,
  /// allowing the app to resume from the same position.
  static const String quranKaremLastPageNumber = "quranKaremLastPageNumber";

  /// Database key for the list of bookmarked pages.
  ///
  /// Stores a list of page numbers that the user has bookmarked
  /// for quick access and reference.
  static const String quranKaremBookMarkList = "quranKaremBookMarkList";

  /// Database key for Juz (Para) to page number mappings.
  ///
  /// Stores the mapping between Juz numbers and their corresponding
  /// page numbers in the Quran for navigation purposes.
  static const String quranKaremJuz2ToPageNumbers =
      "quranKaremJuz2ToPageNumbers";

  /// Database key for Surah (Chapter) to page number mappings.
  ///
  /// Stores the mapping between Surah numbers and their corresponding
  /// page numbers in the Quran for navigation purposes.
  static const String quranKaremSorahToPageNumbers =
      "quranKaremSorahToPageNumbers";
}
