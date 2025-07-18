import 'package:azkar/model/azkar.dart';
import 'package:azkar/model/azkar_salah_time.dart';

/// A base class that provides collections of Islamic supplications (Azkar).
///
/// This class contains predefined Azkar that are traditionally recited after
/// the five daily prayers (Salah). It provides different sets of supplications
/// based on the prayer time, with some Azkar being specific to certain prayers
/// like Fajr and Maghrib.
///
/// The class organizes Azkar into categories:
/// - Base Azkar: Common supplications recited after all prayers
/// - Time-based Azkar: Specific to Fajr/Maghrib vs other prayers
/// - Universal Azkar: Additional supplications with prayer-specific variations
/// - Prayer-specific Azkar: Unique to certain prayers (e.g., Fajr-only)
class AzkarBase {
  /// Bismillah - "In the name of Allah, the Most Gracious, the Most Merciful".
  ///
  /// This is the opening phrase used before reciting certain Quranic chapters
  /// and is commonly recited before various Islamic supplications.
  static String besemellah = "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم";

  /// A'udhu Billah - "I seek refuge in Allah from Satan, the accursed".
  ///
  /// This phrase is recited to seek protection from Satan before reading
  /// the Quran or performing religious acts.
  static String aothBellah = "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ";

  static final List<AzkarModel> _baseList = [
    AzkarModel(id: 1, title: '', desc: "أَسْـتَغْفِرُ الله", maxCount: 3),
    AzkarModel(
      id: 2,
      title: '',
      desc:
          "اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام",
      maxCount: 1,
    ),
    AzkarModel(
      id: 3,
      title: '',
      desc:
          "لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد",
      maxCount: 1,
    ),
    AzkarModel(
      id: 4,
      title: '',
      desc:
          "لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون",
      maxCount: 1,
    ),
    AzkarModel(
      id: 5,
      title: '',
      desc: "سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر",
      maxCount: 33,
    ),
    AzkarModel(
      id: 6,
      title: '',
      desc:
          "لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير",
      maxCount: 1,
    ),
  ];

  List<AzkarModel> _timeBasedAzkar(bool fajirOrMaghribSalah) {
    final int maxCount = fajirOrMaghribSalah ? 3 : 1;
    return [
      AzkarModel(
        id: 7,
        title: besemellah,
        desc:
            "قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ",
        maxCount: maxCount,
      ),
      AzkarModel(
        id: 8,
        title: besemellah,
        desc:
            "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ",
        maxCount: maxCount,
      ),
      AzkarModel(
        id: 9,
        title: besemellah,
        desc:
            "قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ",
        maxCount: maxCount,
      ),
    ];
  }

  List<AzkarModel> _universalAzkar(bool fajirOrMaghribSalah) {
    final List<AzkarModel> azkar = [
      AzkarModel(
        id: 10,
        title: aothBellah,
        desc:
            "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255]",
        maxCount: 1,
      ),
      AzkarModel(
        id: 14,
        title: '',
        desc:
            "اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ",
        maxCount: 1,
      ),
    ];

    if (fajirOrMaghribSalah) {
      azkar.add(
        AzkarModel(
          id: 11,
          title: '',
          desc:
              "لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير",
          maxCount: 10,
        ),
      );
      azkar.add(
        AzkarModel(
          id: 13,
          title: '',
          desc: "اللَّهُمَّ أَجِرْنِي مِنْ النَّار",
          maxCount: 7,
        ),
      );
    }
    return azkar;
  }

  AzkarModel _fajirSpecificAzkar() {
    return AzkarModel(
      id: 12,
      title: '',
      desc:
          "اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـباً ، وَعَمَـلاً مُتَقَـبَّلاً",
      maxCount: 1,
    );
  }

  /// Returns a complete list of Azkar (Islamic supplications) for a specific prayer time.
  ///
  /// This method compiles a comprehensive collection of supplications that should
  /// be recited after the specified prayer. The returned list includes:
  /// - Base Azkar: Common supplications recited after all prayers
  /// - Time-based Azkar: Specific variations for Fajr/Maghrib vs other prayers
  /// - Universal Azkar: Additional supplications with prayer-specific counts
  /// - Prayer-specific Azkar: Unique supplications for certain prayers (e.g., Fajr)
  ///
  /// The method automatically adjusts the repetition counts and includes
  /// appropriate Azkar based on the prayer time. For example, certain
  /// supplications are recited more times after Fajr and Maghrib prayers.
  ///
  /// [salahType] The specific prayer time state that determines which
  /// Azkar should be included and their repetition counts.
  ///
  /// Returns a [List<AzkarModel>] containing all the appropriate supplications
  /// for the specified prayer time, ordered according to Islamic tradition.
  List<AzkarModel> azkarList(AzkarSalahTimeState salahType) {
    final bool fajirOrMaghribSalah =
        salahType == const AzkarSalahTimeStateFajir() ||
        salahType == const AzkarSalahTimeStateSunrise() ||
        salahType == const AzkarSalahTimeStateMaghrib();

    final List<AzkarModel> list = [..._baseList];

    // Add time-based Azkar
    list.addAll(_timeBasedAzkar(fajirOrMaghribSalah));

    // Add universal Azkar
    list.addAll(_universalAzkar(fajirOrMaghribSalah));

    // Add Salah-specific Azkar
    if (salahType == const AzkarSalahTimeStateFajir() ||
        salahType == const AzkarSalahTimeStateSunrise()) {
      list.add(_fajirSpecificAzkar());
    }

    return list;
  }
}
