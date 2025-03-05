import 'package:database_manager/database_manager.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

class HisnAlMuslimUseCase {
  static List<HisnAlMuslimModel> getHisnAlMuslimList() {
    final List<int> favoriteIds = _getFavoriteIds();

    return _hisnAlMuslimData.map((data) {
      return HisnAlMuslimModel(
        id: data['id'],
        title: data['title'],
        list: (data['list'] as List<dynamic>).map((innerData) {
          return HisnAlMuslimDetailsModel(
            descriptionTitle: innerData['descriptionTitle'],
            description: innerData['description'],
            referance: innerData['referance'],
            readCount: innerData['readCount'],
          );
        }).toList(),
        isFavorite: favoriteIds.contains(data['id']),
      );
    }).toList();
  }

  static List<int> _getFavoriteIds() {
    final data = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
      defaultValue: [],
    );

    return (data as List).map((e) => e as int).toList(); // Ensures List<int>
  }

  //TODO :add and localize these
  static const List<Map<String, dynamic>> _hisnAlMuslimData = [
    {
      'id': 1,
      'title': 'اذكار الصباح',
      'list': [
        {
          'descriptionTitle': 'أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ',
          'description':
              "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255].",
          'referance': "من قالها حين يصبح أجير من الجن حتى يمسى ومن قالها حين يمسى أجير من الجن حتى يصبح",
          'readCount': 1,
        },
        {
          'descriptionTitle': 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
          'description':
              "قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.",
          'referance': "من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين)",
          'readCount': 3,
        },
        {
          'descriptionTitle': 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
          'description':
              "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ",
          'referance': "من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين)",
          'readCount': 3,
        },
        {
          'descriptionTitle': 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
          'description':
              "قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ",
          'referance': "من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين)",
          'readCount': 3,
        },
        {
          'descriptionTitle': '',
          'description':
              "أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر",
          'referance': "",
          'readCount': 1,
        },
      ]
    },
    {'id': 2, 'title': 'اذكار المساء', 'list': []},
    {'id': 3, 'title': 'اذكار النوم', 'list': []},
    {'id': 4, 'title': 'اذكار الاستيقاظ من النوم', 'list': []},
    {'id': 5, 'title': 'اذكار بعد الصلاة', 'list': []},
    {'id': 6, 'title': 'اذكار الفزع من النوم', 'list': []},
    {'id': 7, 'title': 'اذكار الخروج من المنزل', 'list': []},
    {'id': 8, 'title': 'اذكار الخلاء و قضاء الحاجه', 'list': []},
    {'id': 9, 'title': 'اذكار الوضوء و الغسل', 'list': []},
    {'id': 10, 'title': 'اذكار الدخول الى المسجد', 'list': []},
    {'id': 11, 'title': 'اذكار الخروج من المسجد', 'list': []},
    {'id': 12, 'title': 'اذكار الكرب', 'list': []},
    {'id': 13, 'title': 'دعاء الغم والهم والحزن', 'list': []},
  ];

  static void addRemoveNewItemToFavoriteList(int id) {
    final data = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
      defaultValue: [],
    );

    final List<int> favoriteIds = (data as List).map((e) => e as int).toList();

    if (favoriteIds.contains(id)) {
      favoriteIds.remove(id);
    } else {
      favoriteIds.add(id);
    }

    DataBaseManagerBase.saveInDatabase(key: DatabaseFieldInHisnAlMuslimConstant.favoriteList, value: favoriteIds);
  }
}
