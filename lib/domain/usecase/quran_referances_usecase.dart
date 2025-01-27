import 'package:database_manager/database_manager.dart';

class QuranReferancesUsecase {
  /// Retrieves a field from the database or returns an empty map by default.
  static Map<String, dynamic> _getDatabaseField(String fieldName) {
    return DataBaseManagerBase.getFromDatabase(key: fieldName, defaultValue: {});
  }

  /// Gets the Surah name for localization based on a given page number.
  String getSurahReferenceNameFromPageNumber(int pageNumber) {
    final surahToPageNumbers = _getDatabaseField(DatabaseFieldQuranCopyConstant.quranKaremSorahToPageNumbers);
    return _findNearestLowerOrEqualKey(surahToPageNumbers, pageNumber);
  }

  /// Gets the page number from a given Surah reference name.
  int getPageNumberFromSurahReferenceName(String surahName) {
    final surahToPageNumbers = _getDatabaseField(DatabaseFieldQuranCopyConstant.quranKaremSorahToPageNumbers);
    return surahToPageNumbers[surahName] ?? -1;
  }

  /// Gets the total number of pages for the selected Quran print.
  int getNumberOfPagesForSelectedPrint() {
    final surahToPageNumbers = _getDatabaseField(DatabaseFieldQuranCopyConstant.quranKaremSorahToPageNumbers);
    return surahToPageNumbers['quranSorahName114'] ?? -1;
  }

  /// Gets the Juz number based on a given page number.
  String getJuzNumberFromPageNumber(int pageNumber) {
    final juzToPageNumbers = _getDatabaseField(DatabaseFieldQuranCopyConstant.quranKaremJuz2ToPageNumbers);
    return _findNearestLowerOrEqualKey(juzToPageNumbers, pageNumber);
  }

  /// Gets the starting page number from a given Juz number.
  int getPageNumberFromJuzNumber(String juzNumber) {
    final juzToPageNumbers = _getDatabaseField(DatabaseFieldQuranCopyConstant.quranKaremJuz2ToPageNumbers);
    return juzToPageNumbers[juzNumber] ?? -1;
  }

  /// Finds the nearest lower or equal key in a map for a given page number.
  static String _findNearestLowerOrEqualKey(Map<dynamic, dynamic> map, int pageNumber) {
    if (map.isEmpty) return '';

    final sortedEntries = map.entries.toList()..sort((a, b) => a.value.compareTo(b.value));

    for (int i = sortedEntries.length - 1; i >= 0; i--) {
      if (sortedEntries[i].value <= pageNumber) {
        return sortedEntries[i].key.toString();
      }
    }

    return ''; // Default return if no matching key is found.
  }
}
