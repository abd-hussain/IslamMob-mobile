import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
// import 'package:islam_app/utils/sorah_type.dart';

class QuranReferances {
  static String getSorahReferanceNameForLocalizationFromPageNumber(
      int pageNumber) {
    final box = Hive.box(DatabaseBoxConstant.userInfo);
    //TODO: Some pages have more than one sorah
    // Retrieve the map from the Hive box
    final Map<dynamic, dynamic> quiryFromDB = box.get(
        DatabaseFieldConstant.quranKaremSorahToPageNumbers,
        defaultValue: {});

    // Convert the map entries to a list and sort them by the page number (value)
    List<MapEntry<dynamic, dynamic>> sortedEntries = quiryFromDB.entries
        .toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    // Find the nearest lower or equal page number entry
    for (int i = sortedEntries.length - 1; i >= 0; i--) {
      if (sortedEntries[i].value <= pageNumber) {
        return sortedEntries[i].key;
      }
    }

    // Return a default value or handle the case where no sorah matches
    return '';
  }

  static int getNumberOfPagesForTheSelectedPrint() {
    final box = Hive.box(DatabaseBoxConstant.userInfo);

    // Retrieve the map from the Hive box
    final Map<dynamic, dynamic> quiryFromDB = box.get(
        DatabaseFieldConstant.quranKaremSorahToPageNumbers,
        defaultValue: {});

    // Get the value for the key `quranSorahName114`
    var valueForSorahName114 = quiryFromDB['quranSorahName114'];
    return valueForSorahName114;
  }

  static String getJozo2NumberFromPageNumber(int pageNumber) {
    final box = Hive.box(DatabaseBoxConstant.userInfo);

    final Map<dynamic, dynamic> quiryFromDB = box.get(
        DatabaseFieldConstant.quranKaremJuz2ToPageNumbers,
        defaultValue: {});

    // Convert the map entries to a list and sort them by the page number (value)
    List<MapEntry<dynamic, dynamic>> sortedEntries = quiryFromDB.entries
        .toList()
      ..sort((a, b) => a.value.compareTo(b.value));

    // Find the nearest lower or equal page number entry
    for (int i = sortedEntries.length - 1; i >= 0; i--) {
      if (sortedEntries[i].value <= pageNumber) {
        return sortedEntries[i].key;
      }
    }
    // Return a default value or handle the case where no jozo2 matches
    return '';
  }
}
