import 'package:flutter/material.dart';
import 'package:islam_app/domain/sealed/sorah_type_state.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

/// Use case for managing Quran page indexing and navigation systems.
///
/// This class provides comprehensive functionality for Quran navigation and
/// organization, supporting the traditional Islamic systems of Quran division:
/// - **Juz (Para) system**: 30 sections for monthly reading schedules
/// - **Surah (Chapter) system**: 114 chapters of varying lengths
/// - **Makki/Madani classification**: Historical context of revelation
///
/// The use case enables:
/// - Complete Juz and Surah name lists in multiple languages
/// - Proper Islamic classification of Quranic content
/// - Navigation support for different Quran reading methods
/// - Educational information about Quranic organization
///
/// This supports various Islamic practices:
/// - Khatm al-Quran (completing the Quran) in 30 days using Juz
/// - Surah-based study and memorization
/// - Understanding the historical context of revelation
/// - Proper Quranic education and learning
class QuranPagesIndexUseCase {
  /// Returns a list of all Juz names in the current locale.
  static List<String> getAllJuzNames({required BuildContext context}) {
    final localize = IslamMobLocalizations.of(context);

    return [
      localize.jusone,
      localize.justwo,
      localize.justhree,
      localize.jusfour,
      localize.jusfive,
      localize.jussix,
      localize.jusseven,
      localize.juseight,
      localize.jusnine,
      localize.justen,
      localize.juseleven,
      localize.justwelve,
      localize.justhirteen,
      localize.jusfourteen,
      localize.jusfifteen,
      localize.jussixteen,
      localize.jusseventeen,
      localize.juseightteen,
      localize.jusnineteen,
      localize.justtwenty,
      localize.justwentyone,
      localize.justwentytwo,
      localize.justwentythree,
      localize.justwentyfour,
      localize.justwentyfive,
      localize.justwentysix,
      localize.justwentyseven,
      localize.justwentyeight,
      localize.justwentynine,
      localize.justhirty,
    ];
  }

  /// Returns a list of all Surah names in the current locale.
  static List<String> getAllSurahNames({required BuildContext context}) {
    final localize = IslamMobLocalizations.of(context);
    return [
      localize.quranSorahName1,
      localize.quranSorahName2,
      localize.quranSorahName3,
      localize.quranSorahName4,
      localize.quranSorahName5,
      localize.quranSorahName6,
      localize.quranSorahName7,
      localize.quranSorahName8,
      localize.quranSorahName9,
      localize.quranSorahName10,
      localize.quranSorahName11,
      localize.quranSorahName12,
      localize.quranSorahName13,
      localize.quranSorahName14,
      localize.quranSorahName15,
      localize.quranSorahName16,
      localize.quranSorahName17,
      localize.quranSorahName18,
      localize.quranSorahName19,
      localize.quranSorahName20,
      localize.quranSorahName21,
      localize.quranSorahName22,
      localize.quranSorahName23,
      localize.quranSorahName24,
      localize.quranSorahName25,
      localize.quranSorahName26,
      localize.quranSorahName27,
      localize.quranSorahName28,
      localize.quranSorahName29,
      localize.quranSorahName30,
      localize.quranSorahName31,
      localize.quranSorahName32,
      localize.quranSorahName33,
      localize.quranSorahName34,
      localize.quranSorahName35,
      localize.quranSorahName36,
      localize.quranSorahName37,
      localize.quranSorahName38,
      localize.quranSorahName39,
      localize.quranSorahName40,
      localize.quranSorahName41,
      localize.quranSorahName42,
      localize.quranSorahName43,
      localize.quranSorahName44,
      localize.quranSorahName45,
      localize.quranSorahName46,
      localize.quranSorahName47,
      localize.quranSorahName48,
      localize.quranSorahName49,
      localize.quranSorahName50,
      localize.quranSorahName51,
      localize.quranSorahName52,
      localize.quranSorahName53,
      localize.quranSorahName54,
      localize.quranSorahName55,
      localize.quranSorahName56,
      localize.quranSorahName57,
      localize.quranSorahName58,
      localize.quranSorahName59,
      localize.quranSorahName60,
      localize.quranSorahName61,
      localize.quranSorahName62,
      localize.quranSorahName63,
      localize.quranSorahName64,
      localize.quranSorahName65,
      localize.quranSorahName66,
      localize.quranSorahName67,
      localize.quranSorahName68,
      localize.quranSorahName69,
      localize.quranSorahName70,
      localize.quranSorahName71,
      localize.quranSorahName72,
      localize.quranSorahName73,
      localize.quranSorahName74,
      localize.quranSorahName75,
      localize.quranSorahName76,
      localize.quranSorahName77,
      localize.quranSorahName78,
      localize.quranSorahName79,
      localize.quranSorahName80,
      localize.quranSorahName81,
      localize.quranSorahName82,
      localize.quranSorahName83,
      localize.quranSorahName84,
      localize.quranSorahName85,
      localize.quranSorahName86,
      localize.quranSorahName87,
      localize.quranSorahName88,
      localize.quranSorahName89,
      localize.quranSorahName90,
      localize.quranSorahName91,
      localize.quranSorahName92,
      localize.quranSorahName93,
      localize.quranSorahName94,
      localize.quranSorahName95,
      localize.quranSorahName96,
      localize.quranSorahName97,
      localize.quranSorahName98,
      localize.quranSorahName99,
      localize.quranSorahName100,
      localize.quranSorahName101,
      localize.quranSorahName102,
      localize.quranSorahName103,
      localize.quranSorahName104,
      localize.quranSorahName105,
      localize.quranSorahName106,
      localize.quranSorahName107,
      localize.quranSorahName108,
      localize.quranSorahName109,
      localize.quranSorahName110,
      localize.quranSorahName111,
      localize.quranSorahName112,
      localize.quranSorahName113,
      localize.quranSorahName114,
    ];
  }

  /// Returns `SowrahType.makyeh` or `SowrahType.madanyeh`.
  static SowrahTypeState getSurahType(
      {required BuildContext context, required String surahName}) {
    final localize = IslamMobLocalizations.of(context);
    final madaniyahSurahs = [
      localize.quranSorahName2,
      localize.quranSorahName3,
      localize.quranSorahName4,
      localize.quranSorahName5,
      localize.quranSorahName8,
      localize.quranSorahName9,
      localize.quranSorahName13,
      localize.quranSorahName15,
      localize.quranSorahName24,
      localize.quranSorahName33,
      localize.quranSorahName47,
      localize.quranSorahName48,
      localize.quranSorahName49,
      localize.quranSorahName55,
      localize.quranSorahName57,
      localize.quranSorahName58,
      localize.quranSorahName59,
      localize.quranSorahName60,
      localize.quranSorahName61,
      localize.quranSorahName62,
      localize.quranSorahName63,
      localize.quranSorahName64,
      localize.quranSorahName65,
      localize.quranSorahName66,
      localize.quranSorahName76,
      localize.quranSorahName98,
      localize.quranSorahName99,
      localize.quranSorahName110,
    ];

    return madaniyahSurahs.contains(surahName)
        ? const SowrahTypeState.madanyeh()
        : const SowrahTypeState.makyeh();
  }
}
