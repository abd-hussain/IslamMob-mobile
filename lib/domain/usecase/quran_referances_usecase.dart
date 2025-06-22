import 'package:database_manager/database_manager.dart';

/// A use case class that handles Quran reference operations and page navigation.
///
/// This class provides functionality to:
/// - Map between page numbers and Surah references
/// - Map between page numbers and Juz (Para) references
/// - Retrieve total page count for selected Quran print
/// - Handle bidirectional navigation between different reference systems
/// - Work with database-stored page mapping configurations
class QuranReferancesUsecase {
  /// Retrieves a field from the database or returns an empty map by default.
  static Map<dynamic, dynamic> _getDatabaseField(String fieldName) {
    return DataBaseManagerBase.getFromDatabase(key: fieldName, defaultValue: {})
        as Map<dynamic, dynamic>;
  }

  /// Gets the Surah name for localization based on a given page number.
  static String getSurahReferenceNameFromPageNumber(int pageNumber) {
    final surahToPageNumbers = _getDatabaseField(
      DatabaseFieldQuranCopyConstant.quranKaremSorahToPageNumbers,
    );
    return _findNearestLowerOrEqualKey(surahToPageNumbers, pageNumber);
  }

  /// Gets the page number from a given Surah reference name.
  static int getPageNumberFromSurahReferenceName(String surahName) {
    final surahToPageNumbers = _getDatabaseField(
      DatabaseFieldQuranCopyConstant.quranKaremSorahToPageNumbers,
    );
    return (surahToPageNumbers[surahName] as int?) ?? -1;
  }

  /// Gets the total number of pages for the selected Quran print.
  static int getNumberOfPagesForSelectedPrint() {
    final surahToPageNumbers = _getDatabaseField(
      DatabaseFieldQuranCopyConstant.quranKaremSorahToPageNumbers,
    );
    return (surahToPageNumbers['quranSorahName114'] as int?) ?? -1;
  }

  /// Gets the Juz number based on a given page number.
  static String getJuzNumberFromPageNumber(int pageNumber) {
    final juzToPageNumbers = _getDatabaseField(
      DatabaseFieldQuranCopyConstant.quranKaremJuz2ToPageNumbers,
    );
    return _findNearestLowerOrEqualKey(juzToPageNumbers, pageNumber);
  }

  /// Gets the starting page number from a given Juz number.
  static int getPageNumberFromJuzNumber(String juzNumber) {
    final juzToPageNumbers = _getDatabaseField(
      DatabaseFieldQuranCopyConstant.quranKaremJuz2ToPageNumbers,
    );
    return (juzToPageNumbers[juzNumber] as int?) ?? -1;
  }

  /// Finds the nearest lower or equal key in a map for a given page number.
  static String _findNearestLowerOrEqualKey(
    Map<dynamic, dynamic> map,
    int pageNumber,
  ) {
    if (map.isEmpty) return '';

    final sortedEntries = map.entries.toList()
      ..sort((a, b) => (a.value as int).compareTo(b.value as int));

    for (int i = sortedEntries.length - 1; i >= 0; i--) {
      if ((sortedEntries[i].value as int) <= pageNumber) {
        return sortedEntries[i].key.toString();
      }
    }

    return ''; // Default return if no matching key is found.
  }
}
