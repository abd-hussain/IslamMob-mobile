import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
// import 'package:islam_app/utils/sorah_type.dart';

class QuranReferances {
  static String getSorahReferanceNameForLocalizationFromPageNumber(
      int pageNumber) {
    final box = Hive.box(DatabaseBoxConstant.userInfo);

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

  // static Widget getSorahTypeIcon(
  //     {required BuildContext context,
  //     required int pageNumber,
  //     required String sorahName}) {
  //   if (pageNumber == 598) {
  //     return Row(
  //       children: [
  //         SizedBox(
  //           width: 35,
  //           child: Image.asset("assets/images/sorah_type/macca.png"),
  //         ),
  //         SizedBox(
  //           width: 35,
  //           child: Image.asset("assets/images/sorah_type/madenah.png"),
  //         ),
  //       ],
  //     );
  //   } else if (pageNumber == 599) {
  //     return Row(
  //       children: [
  //         SizedBox(
  //           width: 35,
  //           child: Image.asset("assets/images/sorah_type/madenah.png"),
  //         ),
  //         SizedBox(
  //           width: 35,
  //           child: Image.asset("assets/images/sorah_type/macca.png"),
  //         ),
  //       ],
  //     );
  //   } else if (pageNumber == 603) {
  //     return Row(
  //       children: [
  //         SizedBox(
  //           width: 35,
  //           child: Image.asset("assets/images/sorah_type/macca.png"),
  //         ),
  //         SizedBox(
  //           width: 35,
  //           child: Image.asset("assets/images/sorah_type/madenah.png"),
  //         ),
  //         SizedBox(
  //           width: 35,
  //           child: Image.asset("assets/images/sorah_type/macca.png"),
  //         ),
  //       ],
  //     );
  //   } else {
  //     return SizedBox(
  //       width: 35,
  //       child: Image.asset(SorahTypeHelper.getSorahType(
  //                   context: context, sorahName: sorahName) ==
  //               SorahType.maccah
  //           ? "assets/images/sorah_type/macca.png"
  //           : "assets/images/sorah_type/madenah.png"),
  //     );
  //   }
  // }
}
