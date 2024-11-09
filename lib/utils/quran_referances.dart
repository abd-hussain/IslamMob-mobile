import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

class QuranReferances {
  static final _box = Hive.box(DatabaseBoxConstant.userInfo);

  static Map<dynamic, dynamic> _getDatabaseField(String fieldName) {
    return _box.get(fieldName, defaultValue: {});
  }

  static String getSorahReferenceNameForLocalizationFromPageNumber(
      int pageNumber) {
    final sorahToPageNumbers =
        _getDatabaseField(DatabaseFieldConstant.quranKaremSorahToPageNumbers);
    return _getNearestLowerOrEqualKey(sorahToPageNumbers, pageNumber);
  }

  static int getPageNumberFromSorahReferenceName(String sorahName) {
    final sorahToPageNumbers =
        _getDatabaseField(DatabaseFieldConstant.quranKaremSorahToPageNumbers);
    return sorahToPageNumbers[sorahName] ?? -1;
  }

  static int getNumberOfPagesForTheSelectedPrint() {
    final sorahToPageNumbers =
        _getDatabaseField(DatabaseFieldConstant.quranKaremSorahToPageNumbers);
    return sorahToPageNumbers['quranSorahName114'] ?? -1;
  }

  static String getJuzNumberFromPageNumber(int pageNumber) {
    final juzToPageNumbers =
        _getDatabaseField(DatabaseFieldConstant.quranKaremJuz2ToPageNumbers);
    return _getNearestLowerOrEqualKey(juzToPageNumbers, pageNumber);
  }

  static int getPageNumberFromJuzNumber(String juzNumber) {
    final juzToPageNumbers =
        _getDatabaseField(DatabaseFieldConstant.quranKaremJuz2ToPageNumbers);
    return juzToPageNumbers[juzNumber] ?? -1;
  }

  static String _getNearestLowerOrEqualKey(
      Map<dynamic, dynamic> map, int pageNumber) {
    if (map.isEmpty) return '';

    final sortedEntries = map.entries.toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    for (int i = sortedEntries.length - 1; i >= 0; i--) {
      if (sortedEntries[i].value <= pageNumber) {
        return sortedEntries[i].key;
      }
    }
    return ''; // Default if no matching key is found
  }
}
