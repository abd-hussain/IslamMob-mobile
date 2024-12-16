import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/core/constants/database_constant.dart';

class QuranReferancesUsecase {
  static final Box _box = Hive.box(DatabaseBoxConstant.userInfo);

  /// Retrieves a field from the database or returns an empty map by default.
  static Map<dynamic, dynamic> _getDatabaseField(String fieldName) {
    return _box.get(fieldName, defaultValue: <dynamic, dynamic>{});
  }

  /// Gets the Surah name for localization based on a given page number.
  String getSurahReferenceNameFromPageNumber(int pageNumber) {
    final surahToPageNumbers =
        _getDatabaseField(DatabaseFieldConstant.quranKaremSorahToPageNumbers);
    return _findNearestLowerOrEqualKey(surahToPageNumbers, pageNumber);
  }

  /// Gets the page number from a given Surah reference name.
  int getPageNumberFromSurahReferenceName(String surahName) {
    final surahToPageNumbers =
        _getDatabaseField(DatabaseFieldConstant.quranKaremSorahToPageNumbers);
    return surahToPageNumbers[surahName] ?? -1;
  }

  /// Gets the total number of pages for the selected Quran print.
  int getNumberOfPagesForSelectedPrint() {
    final surahToPageNumbers =
        _getDatabaseField(DatabaseFieldConstant.quranKaremSorahToPageNumbers);
    return surahToPageNumbers['quranSorahName114'] ?? -1;
  }

  /// Gets the Juz number based on a given page number.
  String getJuzNumberFromPageNumber(int pageNumber) {
    final juzToPageNumbers =
        _getDatabaseField(DatabaseFieldConstant.quranKaremJuz2ToPageNumbers);
    return _findNearestLowerOrEqualKey(juzToPageNumbers, pageNumber);
  }

  /// Gets the starting page number from a given Juz number.
  int getPageNumberFromJuzNumber(String juzNumber) {
    final juzToPageNumbers =
        _getDatabaseField(DatabaseFieldConstant.quranKaremJuz2ToPageNumbers);
    return juzToPageNumbers[juzNumber] ?? -1;
  }

  /// Finds the nearest lower or equal key in a map for a given page number.
  static String _findNearestLowerOrEqualKey(
      Map<dynamic, dynamic> map, int pageNumber) {
    if (map.isEmpty) return '';

    final sortedEntries = map.entries.toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    for (int i = sortedEntries.length - 1; i >= 0; i--) {
      if (sortedEntries[i].value <= pageNumber) {
        return sortedEntries[i].key.toString();
      }
    }

    return ''; // Default return if no matching key is found.
  }
}
