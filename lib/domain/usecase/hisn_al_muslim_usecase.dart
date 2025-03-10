import 'package:database_manager/database_manager.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

class HisnAlMuslimUseCase {
  static List<HisnAlMuslimModel> getHisnAlMuslimList() {
    final List<int> favoriteIds = _getFavoriteIds();
    // //TODO :add and localize these
    final List<HisnAlMuslimModel> hisnAlMuslimData = [
      HisnAlMuslimModel(
        id: 1,
        title: "المقدمة",
        isFavorite: favoriteIds.contains(1),
        details: const HisnAlMuslimModelState.text(
          [
            "بسم الله الرحمن الرحيم",
            "إن الحمد لله ، نحمده ونستعينهُ ، ونستغفرهُ ونعوذُ باللهِ من شرورِ أنفسنا ، وسيئاتِ أعمالنا ، من يهده الله فلا مضل لهُ، ومن يضلل فلا هادي له ، وأشهد أن لا إله إلا الله وحده لا شريك لهُ،وأشهدُ أن محمداً عبدهُ ورسولهُ صلى الله عليه وعلى أله وأصحابه ومن تبعهم بإحسان إلى يوم الدين وسلم تسليما كثيراً ،أما بعد .",
            "فهذا مختصر اختصرته من كتابي (( الذكرُ والدعاءُ والعلاج بالرقي من الكتاب والسنة )) اختصرت فيه قسم الأذكار ؛ ليكون خفيف الحمل في الأسفار .",
            "وقد اقتصرت على متن الذكر ، واكتفيت في تخريجه بذكر مصدر أو مصدرين مما وجد في الأصل ،ومن أراد معرفة الصحابي أو زيادة في التخريج فعليه بالرجوع إلى الأصل.",
            "وأسأل الله عز وجل بأسمائه الحسنى ، وصفاته العُلى أن يجعله خالصا لوجهه الكريم ، وأن ينفعني به في حياتي وبعد مماتي وأن ينفع به من قرأه ، أو طبعه ، أو كان سبباً في نشره إنه سبحانه ولي ذلك  والقادر عليه. وصلى الله على نبينا محمد وعلى آله وأصحابه ومن تبعهم بإحسان إلى يوم الدين.",
          ],
          [
            "المؤلف حرر في شهر صفر 1409هـ",
            "من أذكار الكتاب والسنة",
            "الفقير إلى الله تعالى سعيد بن علي بن وهف القحطاني",
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 2,
        title: "فضل الذكر",
        isFavorite: favoriteIds.contains(2),
        details: const HisnAlMuslimModelState.text(
          [
            "قال الله تعالى:",
            "{ فَاذْكُرُونِي أَذْكُرْكُمْ وَاشْكُرُواْ لِي وَلاَ تَكْفُرُونِ }[1]",
            "{ يَا أَيُّهَا الَّذِينَ آمَنُوا اذْكُرُوا اللَّهَ ذِكْراً كَثِيراً}[2]",
            "{ وَالذَّاكِرِينَ اللَّهَ كَثِيراً وَالذَّاكِرَاتِ أَعَدَّ اللَّهُ لَهُم مَّغْفِرَةً وَأَجْراً عَظِيماً}[3]",
            "{ وَاذْكُر رَّبَّكَ فِي نَفْسِكَ تَضَرُّعاً وَخِيفَةً وَدُونَ الْجَهْرِ مِنَ الْقَوْلِ بِالْغُدُوِّ وَالآصَالِ وَلاَ تَكُن مِّنَ الْغَافِلِينَ }[4]",
            "وقال صلى الله عليه وسلم :' مثل الذي يذكر ربه والذي لا يذكر ربه مثل الحي والميت '[5]",
            "وقال صلى الله عليه وسلم :' ألا أنبئكم بخير أعمالكم ،وأزكاها عند مليككم، وأرفعها في درجاتكم ، وخير لكم من إنفاق الذهب والورق ، وخير لكم من أن تلقوا عدوكم فتضربوا أعناقهم ويضربوا أعناقكم ؟' قالوا بلى .قال : 'ذكر الله تعالى '[6]",
            "وقال صلى الله عليه وسلم :' يقول الله تعالى : أنا عند ظن عبدي بي ، وأنا معه إذا ذكرني ، فإن ذكرني في نفسه ذكرتهُ في نفسي ، وإن ذكرني في ملأ ذكرته في ملأ خير منهم ،وإن تقرب إلي شبراً تقربت إليه ذراعاً ،وإن تقرب إلي ذراعاً تقربت إليه باعاً ، وإن أتاني يمشي أتيتهُ هرولة '[7]",
            "وعن عبد الله بن بسرٍ رضي الله عنهُ أن رجلاً قال : يا رسول الله إن شرائع الإسلام قد كثرت علي فأخبرني بشيءٍ أتشبث به. قال صلى الله عليه وسلم :' لا يزال لسانك رطباً من ذكر الله '[8]",
            "وقال صلى الله عليه وسلم:' من قرأ حرفاً من كتاب الله فله به حسنة ،والحسنة بعشر أمثالها ، لا أقول : {الم } حرف؛ ولكن : ألف حرف ،ولام حرف ،وميم حرف '[9].",
            "وعن عقبة بن عامر رضي الله عنه قال : خرج رسول الله صلى الله عليه وسلم ونحن في الصفة فقال :' أيكم يحب أن يغدو كل يوم إلى بطحان أو إلى العقيق فيأتي منه بناقتين كوماوين في غير إثم ولا قطيعة رحم ؟' فقلنا : يا رسول الله نحب ذلك . قال :' أفلا يغدو أحدكم إلى المسجد فيعلم ، أو يقرأ آيتين من كتاب الله عز وجل خير له من ناقتين ، وثلاث خير لهُ من ثلاث ٍ، وأربع خير لهُ من أربع ، ومن أعدادهن من الإبل'[10]",
            "وقال صلى الله عليه وسلم:' من قعد مقعداً لم يذكر الله فيه كانت عليه من الله ترة ومن اضطجع مضجعاً لم يذكر الله فيه كانت عليه من الله ترة'[11] .",
            "وقال صلى الله عليه وسلم : ' ما جلس قوم مجلساً لم يذكروا الله فيه ، ولم يصلوا على نبيهم إلا كان عليهم ترة ، فإن شاء عذبهم وإن شاء غفر لهم '[12] .",
            "وقال صلى الله عليه وسلم :' ما من قوم يقومون من مجلس لا يذكرون الله فيه إلا قاموا عن مثل جيفة حمار وكان لهم حسرة '[13].",
          ],
          [
            "[1] - سورة البقرة آية :152",
            "[2] - سورة الأحزاب آية : 41",
            "[3] - سورة الأحزاب آية :35",
            "[4] - سورة الأعراف ،آية :205",
            "[5] - البخاري مع الفتح 11/208 ومسلم بلفظ 'مثل البيت الذي يذكر الله فيه والبيت الذي لا يذكر الله فيه مثل الحي والميت ' 1/539",
            "[6] - الترمذي 5/459 وابن ماجه 2/1245 وانظر صحيح ابن ماجه 2/316 وصحيح الترمذي 3/139 .",
            "[7] - البخاري 8\171 ومسلم 4\ 2061 واللفظ للبخاري .",
            "[8] - الترمذي 5/458 وابن ماجه 2\1246 وانظر صحيح الترمذي 3\ 139 وصحيح ابن ماجه 2\ 317",
            "[9] - الترمذي 5/175 وانظر صحيح الترمذي 3\9 وصحيح الجامع الصغير 5\340 .",
            "[10] - مسلم 1/553.",
            "[11] - أبو داود 4\264 وغيره وانظر صحيح الجامع 5\342.",
            "[12] - الترمذي وانظر صحيح الترمذي 3/140",
            "[13] - أبو داود 4\264 وانظر صحيح الجامع 5\176.",
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 3,
        title: "أذكار الاستيقاظ من النوم",
        isFavorite: favoriteIds.contains(3),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "الحَمْدُ لله الذِي أحْيَانا بَعْدَ مَا أمَاتَنَا وإلَيْهِ النَشُور",
              referance: [
                "أي الموت المجازي وهو النوم، يقال النوم الموت الخفيف",
                "الإحياء بعد الإماتة (البعثة)",
                "البخاري مع الفتح 11/ 113 ومسلم 4/ 2083",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "الحَمْدُ لله الذِي عَافَانِي في جَسَدِي ورَدَّ عَلَيَّ رُوحِي، وأَذِنَ لي بِذِكْرهِ",
              referance: [
                "الترمذي 5/ 473 وانظر صحيح الترمذي3/144",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "لا إلَهَ إلاَّ الله وحْدَهُ لا شَرِيكَ لَهُ، لَهُ المُلْكُ ولَهُ الحَمْدُ وهُوَ على كلِّ شيءٍ قَدير،سُبْحانَ الله والحَمْدُ لله  ولا إله إلا الله والله أكبر ولا حَولَ ولا قُوةَ إلا بالله العلي العظيم , اللَّهُمَّ اغْفِرْ لي",
              referance: [
                "قال رسول الله صلى الله عليه وسلم ' مَنْ تَعَارَ مِنَ اللَّيْل  فقالها حين يستيقظ ، غُفِرَ له",
                "قال الوليد: أو قال دعا استُجيبَ لهُ، فإن قام فتوضأَ ثم صَلّى قُبِلَتْ صَلاتُهُ",
                "التعار السهر والتقلب على الفراش ليلاً مع الكلام",
                "رواه البخاري مع الفتح 3/ 144 وغيرها واللفظ لابن ماجه انظر صحيح ابن ماجه 2/ 335",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "أعوذ بالله من الشيطان الرجيم",
              description:
                  "{إِنَّ فِي خَلْقِ السَّمَاوَاتِ وَالأَرْضِ وَاخْتِلاَفِ اللَّيْلِ وَالنَّهَارِ لآيَاتٍ لِّأُوْلِي الألْبَابِ *الَّذِينَ يَذْكُرُونَ اللّهَ قِيَاماً وَقُعُوداً وَعَلَىَ جُنُوبِهِمْ وَيَتَفَكَّرُونَ فِي خَلْقِ السَّمَاوَاتِ وَالأَرْضِ رَبَّنَا مَا خَلَقْتَ هَذا بَاطِلاً سُبْحَانَكَ فَقِنَا عَذَابَ النَّارِ*رَبَّنَا إِنَّكَ مَن تُدْخِلِ النَّارَ فَقَدْ أَخْزَيْتَهُ وَمَا لِلظَّالِمِينَ مِنْ أَنصَارٍ *رَّبَّنَا إِنَّنَا سَمِعْنَا مُنَادِياً يُنَادِي لِلإِيمَانِ أَنْ آمِنُواْ بِرَبِّكُمْ فَآمَنَّا رَبَّنَا فَاغْفِرْ لَنَا ذُنُوبَنَا وَكَفِّرْ عَنَّا سَيِّئَاتِنَا وَتَوَفَّنَا مَعَ الأبْرَارِ * رَبَّنَا وَآتِنَا مَا وَعَدتَّنَا عَلَى رُسُلِكَ وَلاَ تُخْزِنَا يَوْمَ الْقِيَامَةِ إِنَّكَ لاَ تُخْلِفُ الْمِيعَادَ *فَاسْتَجَابَ لَهُمْ رَبُّهُمْ أَنِّي لاَ أُضِيعُ عَمَلَ عَامِلٍ مِّنكُم مِّن ذَكَرٍ أَوْ أُنثَى بَعْضُكُم مِّن بَعْضٍ فَالَّذِينَ هَاجَرُواْ وَأُخْرِجُواْ مِن دِيَارِهِمْ وَأُوذُواْ فِي سَبِيلِي وَقَاتَلُواْ وَقُتِلُواْ لأُكَفِّرَنَّ عَنْهُمْ سَيِّئَاتِهِمْ وَلأُدْخِلَنَّهُمْ جَنَّاتٍ تَجْرِي مِن تَحْتِهَا الأَنْهَارُ ثَوَاباً مِّن عِندِ اللّهِ وَاللّهُ عِندَهُ حُسْنُ الثَّوَابِ *لاَ يَغُرَّنَّكَ تَقَلُّبُ الَّذِينَ كَفَرُواْ فِي الْبِلاَدِ *مَتَاعٌ قَلِيلٌ ثُمَّ مَأْوَاهُمْ جَهَنَّمُ وَبِئْسَ الْمِهَادُ *لَكِنِ الَّذِينَ اتَّقَوْاْ رَبَّهُمْ لَهُمْ جَنَّاتٌ تَجْرِي مِن تَحْتِهَا الأَنْهَارُ خَالِدِينَ فِيهَا نُزُلاً مِّنْ عِندِ اللّهِ وَمَا عِندَ اللّهِ خَيْرٌ لِّلأَبْرَارِ * وَإِنَّ مِنْ أَهْلِ الْكِتَابِ لَمَن يُؤْمِنُ بِاللّهِ وَمَا أُنزِلَ إِلَيْكُمْ وَمَا أُنزِلَ إِلَيْهِمْ خَاشِعِينَ لِلّهِ لاَ يَشْتَرُونَ بِآيَاتِ اللّهِ ثَمَناً قَلِيلاً أُوْلَـئِكَ لَهُمْ أَجْرُهُمْ عِندَ رَبِّهِمْ إِنَّ اللّهَ سَرِيعُ الْحِسَابِ *يَا أَيُّهَا الَّذِينَ آمَنُواْ اصْبِرُواْ وَصَابِرُواْ وَرَابِطُواْ وَاتَّقُواْ اللّهَ لَعَلَّكُمْ تُفْلِحُونَ }",
              referance: [
                "الآيات من سورة آل عمران ،190 ï¿½ 200 ، البخاري مع الفتح 8/ 238 ومسلم 1/ 530",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 4,
        title: "دعاء لبس الثوب",
        isFavorite: favoriteIds.contains(4),
        details: HisnAlMuslimModelState.counter([
          HisnAlMuslimDetailsModel(
            descriptionTitle: "",
            description:
                "الحَمْدُ لله الذِي كَساني هذا( الثوب ) ورَزَقَنِيه مِنْ غَيْرِ حَوْلٍ مِنّي ولا قُوةٍ",
            referance: [
              " أخرجه أهل السنن إلا النسائي انظر إرواء الغليل 7/ 47",
            ],
            readCount: 1,
          ),
        ]),
      ),
      HisnAlMuslimModel(
        id: 5,
        title: "دعاء لبس الثوب الجديد",
        isFavorite: favoriteIds.contains(5),
        details: HisnAlMuslimModelState.counter([
          HisnAlMuslimDetailsModel(
            descriptionTitle: "",
            description:
                "اللَّهُمَّ لَكَ الحَمْدُ أَنْتَ كَسَوتَنِيه،أسْألك مِنْ خَيرِهِ وخَيْرَ ما صُنع لَهُ،وأعُوذُ بِكَ مِنْ شرِّه وشَرَّ ما صُنِعَ لَهُ",
            referance: [
              " أبو داود والترمذي والبغوي وانظر مختصر شمائل الترمذي للألباني ص 47",
            ],
            readCount: 1,
          ),
        ]),
      ),
      HisnAlMuslimModel(
        id: 6,
        title: "الدعاء لمن لبس ثوباً جديداً",
        isFavorite: favoriteIds.contains(6),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "إلبِسْ جَدِيداً وعِشْ حميداً ومُتْ شهيداً",
              referance: [
                "ابن ماجه 2/ 1178 والبغوي 12/ 41 وانظر صحيح ابن ماجة2/ 275",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "تُبْلي ويَخْلِفُ الله تعالى",
              referance: [
                "أخرجه أبو داود 4/ 41 ، وانظر صحيح أبي داود2/ 760",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 7,
        title: "ما يقول إذا وضع الثوب",
        isFavorite: favoriteIds.contains(7),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "بِسم الله",
              referance: [
                "سِتْرُ ما بَيْنَ أعْيُن الجِنِّ وَعَوْرَاتِ بَني آدَمَ",
                "الترمذي 2/505 وغيره وانظر الإرواء برقم 49 صحيح الجامع3/  203",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 8,
        title: "دعاء دخول الخلاء",
        isFavorite: favoriteIds.contains(8),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "{بسم الله}، اللهُمَّ إنّي أعُوذُ بِكَ مِنَ الخُبْثِ والخبائِثِ",
              referance: [
                "أخرجه البخاري 1/ 45ومسلم1/283وزيادة بسم الله في أوله متفق عليه، أخرجها سعيد بن منصور أنظر فتح الباري 1/244",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 9,
        title: "دعاء الخروج من الخلاء",
        isFavorite: favoriteIds.contains(9),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "غُفْرانَكَ",
              referance: [
                "أخرجه أصحاب السنن إلا النسائي أخرجه في عمل اليوم والليلة انظر تخريج زاد المعاد 2/ 387",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 10,
        title: "الذكر قبل الوضوء",
        isFavorite: favoriteIds.contains(10),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "بسم الله",
              referance: [
                "أبو داود وابن ماجه وأحمد وانظر إرواء الغليل 1/ 122",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 11,
        title: "الذكر بعد الفراغ من الوضوء",
        isFavorite: favoriteIds.contains(11),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "أشهد أن لا إله إلا الله وحده لا شريك له ، وأشهد أن محمداً عبده ورسوله",
              referance: [
                "رواه مسلم1/ 209",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "اللهم اجعلني من التوابين واجعلني من المتطهرين",
              referance: [
                "الترمذي 1/ 78 وانظر صحيح الترمذي1/ 18",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "سبحانك اللهم وبحمدك أشهد أن لا إله إلا أنت أستغفرك وأتوب إليك",
              referance: [
                "النسائي في عمل اليوم والليلة ص173 وانظر  إرواء الغليل 1/ 135 و2/  94",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 12,
        title: "الذكر عند الخروج من المنزل",
        isFavorite: favoriteIds.contains(11),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "بسم الله ، توكَّلْتُ على الله ، ولا حَوْلَ ولا قُوةَ إلا بالله",
              referance: [
                " أبو داود 4/ 325 والترمذي 5/ 490 وانظر صحيح الترمذي3/ 151",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهُمَ إني أعُوذُ بِكَ أن أَضِلَّ أوْ أُضَلَّ أَوْ أزِلَّ، أو أُزَلَّ، أوْ أظلِم أوْ أُظْلَم، أوْ أَجْهَلَ أوْ يُجْهَلَ عَلَيَّ",
              referance: [
                " أهل السنن وانظر صحيح الترمذي 3/ 152 وصحيح ابن ماجه 2/ 336",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 13,
        title: "الذكر عند الدخول المنزل",
        isFavorite: favoriteIds.contains(13),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "بسم الله ولجنا ،وبسم الله خرجنا ، وعلى ربنا توكلنا ، ثم ليسلم على أهله",
              referance: [
                "أخرجه أبو داود 4/ 325 ، وحسن إسناده العلامة ابن باز في تحفة الأخيار ص28 ، وفي الصحيح ' إذا دخل الرجل بيته فذكر بيته فذكر الله عند دخوله وعند طعامه قال الشيطان لا مبيت لكم ولا عشاء ' مسلم برقم 2018",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 14,
        title: "دعاء الذهاب إلى المسجد",
        isFavorite: favoriteIds.contains(14),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم اجعل في قلبي نوراً ، وفي لساني نوراً ، وفي سمعي نوراً ، وفي بصري نوراً ، ومن فوقي نوراً ، ومن تحتي نوراً ، وعن يميني نوراً ، وعن شمالي نوراً ، ومن أمامي نوراً ، ومن خلفي نوراً  ، و اجعل في نفسي نوراً ، وأعظم لي نوراً ، وعظم لي نوراً ، واجعل لي نوراً ، واجعلني نوراً ، اللهم أعطني نوراً ، واجعل في عصبي نوراً ، وفي لحمي نوراً ، وفي دمي نوراً ، وفي شعري نوراً ، وفي بشري نوراً",
              referance: [
                "جميع هذه الخصال في البخاري 11/ 116 برقم 6316 ومسلم 1/ 526، 529 ، 530 برقم 763",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "اللهم اجعل لي نوراً في قبري .. ونوراً في عظامي",
              referance: [
                "الترمذي برقم 3419، 5/483",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "وزدني نوراً ، وزدني نوراً ، وزدني نوراً",
              referance: [
                "أخرجه البخاري في الأدب المفرد برقم 695 ، ص 258 وصحح إسناده الألباني في صحيح الأدب المفرد برقم 536",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "وهب لي نوراً على نوراً",
              referance: [
                "ذكره ابن حجر في فتح الباري وعزاه إلى ابن أبي عاصم في كتاب الدعاء،انظر الفتح11/118وقال:فاجتمع من اختلاف الروايات خمس وعشرون خصلة",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 15,
        title: "دعاء دخول المسجد",
        isFavorite: favoriteIds.contains(15),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "أعوذ بالله العظيم ،وبوجهه الكريم ،وسلطانه القديم ،من الشيطان الرجيم ",
              referance: [
                " أبو داود وانظر صحيح الجامع برقم 4591",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "بسم الله، والصلاة والسلام على رسول الله، اللهم افتح لي أبواب رحمتك",
              referance: [
                "رواه ابن السني برقم 88 وحسنه الألباني ",
                "أبو داود 1/ 126 وانظر صحيح الجامع 1/ 528",
                "رواه مسلم1/ 494. وفي سنن ابن ماجه من حديث فاطمة رضي الله عنها ' اللهم اغفر لي ذنوبي وافتح لي أبواب رحمتك ' وصححه الألباني لشواهده انظر صحيح ابن ماجه 1/ 128 ï¿½ 129",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 16,
        title: "دعاء الخروج من المسجد",
        isFavorite: favoriteIds.contains(16),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "بسم الله والصلاة والسلام على رسول الله ،اللهم إني أسألك من فضلك، اللهم اعصمني من الشيطان الرجيم",
              referance: [
                "انظر تخريج روايات الحديث السابق رقم 20 وزيادة (( اللهم اعصمني من الشيطان الرجيم )) لابن ماجه . انظر صحيح ابن ماجه 1/ 288 ",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 17,
        title: "أذكار الأذان",
        isFavorite: favoriteIds.contains(17),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "يقول مثل ما يقول المؤذن إلا في ' حي على الصلاة ، وحي على الفلاح' فيقول 'لا حول ولا قوة إلا بالله'",
              referance: [
                "البخاري 1/ 152 ومسلم 1/ 288",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  " يقول ' وأنا أشهد أن لا إله إلا الله ، وحده لا شريك له ، وأن محمد عبده ورسوله ، رضيت بالله رباً ، وبمحمداً رسولاً وبالإسلام ديناً'[2] (( يقول ذلك عقب تشهد المؤذن))",
              referance: [
                "مسلم 1/290",
                "ابن خزيمة 1/ 220",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "يصلي على النبي صلى الله عليه وسلم بعد فراغه من إجابة المؤذن",
              referance: [
                "مسلم 1/ 288",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم رب هذه الدعوة التامة ،والصلاة القائمة، آت محمداً الوسيلة والفضيلة، وأبعثه مقاماً محموداً الذي وعدته، [ إنك لا تخلف الميعاد ]",
              referance: [
                "البخاري 1/ 152 وما بين المعكوفين للبيهقي 1/ 410 وحسن إسناده العلامة عبد العزيز بن باز في تحفة الأخيار ص 38",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "يدعو لنفسه بين الأذان والإقامة فإن الدعاء حينئذٍ لا يرد",
              referance: [
                "الترمذي وأبو داود وأحمد وانظر إرواء الغليل 1/ 262",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 18,
        title: "دعاء الاستفتاح",
        isFavorite: favoriteIds.contains(18),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم باعد بيني وبين خطاياي كما باعدت بين المشرق والمغرب ، اللهم نقني من خطاياي كما ينقى الثوب الأبيض من الدنس اللهم اغسلني من خطاياي بالماء والثلج والبرد",
              referance: [
                "البخاري 1/ 181 ومسلم 1/ 419",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "سبحانك اللهم وبحمدك وتبارك اسمك وتعالى جدك، ولا إله غيرك",
              referance: [
                "أخرجه أصحاب السنن الأربعة وانظر صحيح الترمذي 1/77 وصحيح ابن ماجه 1/ 135",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "وجهت وجهي للذي فطر السموات والأرض حنيفاً وما أنا من المشركين ،إن صلاتي ونُسُكي ومحياي ومماتي لله رب العالمين ، لا شريك له وبذلك أمرت وأنا من المسلمين اللهم أنت الملك لا إله إلا أنت ، أنت ربي وأنا عبدك ، ظلمت نفسي ، واعترفت بذنبي ، فاغفر لي ذنوبي جميعاً ، إنه لا يغفر الذنوب إلا أنت ، واهدني لأحسن الأخلاق، لا يهدي لأحسنها إلا أنت ، واصرف عني سيئها لا يصرف عني سيئها إلا أنت لبيك وسعديك والخير كله بيديك ، والشر ليس إليك ، أنا بك وإليك ، تباركت وتعاليت أستغفرك وأتوب إليك",
              referance: [
                "رواه مسلم1/ 534",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم رب جبرائيل وميكائيل وإسرافيل ، فاطر السموات والأرض ، عالم الغيب والشهادة ، أنت تحكم بين عبادك فيما كانوا فيه يختلفون اهدني لما اختلف فيه من الحق بإذنك إنك تهدي من تشاء إلى صراط مستقيم",
              referance: [
                "رواه مسلم1/ 534",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "الله اكبر كبيرا، الله اكبر كبيرا، الله اكبر كبيرا، والحمد لله كثيرا، والحمد لله كثيرا، والحمد لله كثيرا، وسبحان الله بكرةً وأصيلا ـ ثلاثا ـ ' أعوذ بالله من الشيطان الرجيم : من نفخه، ونفثه ،و همزه",
              referance: [
                "أخرجه أبو داود 1/ 203 وابن ماجه 1/ 265 وأحمد 4/85 وأخرجه مسلم عن ابن عمر رضي الله عنهماا بنحوه وفيه قصة 1/ 420",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم لك الحمد أنت نور السموات والأرض ومن فيهن ، ولك الحمد أنت قيمُ السموات والأرض ومن فيهن [ ولك الحمد أنت رب السموات والأرض ومن فيهن ]، [ ولك الحمد لك ملك السموات والأرض ومن فيهن ] [ ولك الحمد أنت ملك السموات والأرض] [ ولك الحمد] أنت الحق ، ووعدك الحق ، وقولك الحق ،ولقاؤك الحق ، والجنة حق ، والنار حق ، والنبيّون حق ومحمد صلى الله عليه وسلم حق والساعة حق ] [اللهم لك أسلمت ،  وعليك توكلت ، وبك آمنت ، وإليك أنبت ، وبك خاصمت ، وإليك حاكمت ، فاغفر لي ما قدمت وما أخرت ، وأسررت، وما أعلنت ][ أنت المقدم ،وأنت المؤخر لا إله إلا أنت ][أنت إلهي لا إله إلا أنت]",
              referance: [
                "البخاري مع الفتح 3/3 و11/116 و 13/ 371 423، 465 ومسلم مختصراً بنحوه 1/ 532",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 19,
        title: "دعاء الركوع",
        isFavorite: favoriteIds.contains(19),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبحان ربي العظيم",
              referance: [
                " أخرجه أهل السنن وأحمد وانظر صحيح الترمذي 1/83",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبحانك اللهم ربنا وبحمدك ، اللهم اغفر لي",
              referance: [
                "البخاري 1/199ومسلم 1/ 350",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبوح قدوس رب الملائكة والروح",
              referance: [
                "مسلم1/ 353 وأبو داود 1/230",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم لك ركعت وبك آمنت ،ولك أسلمت خشع لك سمعي وبصري ودمي ولحمي وعظمي وعصبي،وما استقل به قدمي",
              referance: [
                "مسلم 1/534والأربعة إلا ابن ماجه",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبحان ذي الجبروت والملكوت والكبرياء والعظمة",
              referance: [
                "أبو داود 1/ 230 والنسائي وأحمد وإسناده حسن",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 20,
        title: "دعاء  الرفع من الركوع",
        isFavorite: favoriteIds.contains(20),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سمع الله لمن حمده",
              referance: [
                "البخاري مع الفتح 2/ 282",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "ربنا ولك الحمد ، حمداً كثيراً طيباً مباركاً فيه",
              referance: [
                "البخاري مع الفتح 2/ 282",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "ملء السموات وملء الأرض وما بينهما ، وملء ما شئت من شئ بعد .أهل الثناء والمجد،أحق ما قال العبد، وكلنا لك عبد ، اللهم لا مانع لما أعطيت ولا معطي لما منعت ولا ينفع ذا الجد منك الجد",
              referance: [
                "مسلم 1/ 346",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 21,
        title: "دعاء السجود",
        isFavorite: favoriteIds.contains(21),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبحان ربي الأعلى",
              referance: [
                "أخرجه أهل السنن وأحمد وانظر صحيح الترمذي 1/83",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبحانك اللهم ربنا وبحمدك ، اللهم اغفر لي",
              referance: [
                "البخاري ومسلم وتقدم تخريجه برقم 34",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبوح قدوس رب الملائكة والروح",
              referance: [
                "مسلم 1/ 533وتقدم برقم 35",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم لك سجدت وبك آمنت ولك أسلمت،سجد وجهي للذي خلقه وصوره وشق سمعه وبصره تبارك الله أحسن الخالقين",
              referance: [
                "مسلم1/ 534 وغيره",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبحان ذي الجبروت والملكوت ، والكبرياء والعظمة",
              referance: [
                "أبو داود 1/ 230 والنسائي وأحمد وإسناده وصححه الألباني في صحيح أبي داود 166",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم اغفر لي ذنبي كله ، دقه وجله ،وأوله وآخره ، وعلانيته وسره",
              referance: [
                "مسلم1/ 350",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أعوذ برضاك من سخطك وبمعافاتك من عقوبتك،وأعوذ بك منك لا أحصي ثناء عليك أنت كما أثنيت على نفسك",
              referance: [
                "مسلم1/ 352",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 22,
        title: "دعاء الجلسة بين السجدتين",
        isFavorite: favoriteIds.contains(22),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "رب اغفر لي ، رب اغفر لي",
              referance: [
                "أبو داود 1/ 231وانظر  صحيح ابن ماجة1/ 148",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم اغفر لي ، وارحمني ،واهدني ، واجبرني،  وعافني،وارزقني ، وارفعني",
              referance: [
                "أخرجه أصحاب السنن إلا النسائي وانظر صحيح الترمذي 1/90 وصحيح ابن ماجه 1/ 148",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 23,
        title: "دعاء سجود التلاوة",
        isFavorite: favoriteIds.contains(23),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "سجد وجهي للذي خلقه ، وشق سمعه وبصره بحوله وقوته { فتبارك الله أحسن الخالقين }",
              referance: [
                " الترمذي 2/474 وأحمد 6/30 والحاكم وصححه ووافقه الذهبي 1/ 220 والزيادة له",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم أكتب لي بها عندك أجراً ، وضع عني بها وزراً ، واجعلها لي عندك ذخراً ، وتقبلها مني كما تقبلتها من عبدك داود",
              referance: [
                "الترمذي 2/473 والحاكم وصححه ووافقه الذهبي 1/ 219",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 24,
        title: "التشهد",
        isFavorite: favoriteIds.contains(24),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "التحيات لله ، والصلوات ، والطيبات ، السلام عليك أيها النبي ورحمة الله وبركاته ، السلام علينا وعلى عباد الله الصالحين ،أشهد أن لا إله إلا الله ، وأشهد أن محمداً عبده ورسوله",
              referance: [
                "البخاري مع الفتح 1/13 ومسلم 1/ 301",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 25,
        title: "الصلاة على النبي صلى الله عليه وسلم بعد التشهد",
        isFavorite: favoriteIds.contains(25),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم صل على محمد وعلى آل محمد ، كما صليت على  إبراهيم ، وعلى آل إبراهيم ، إنك حميد مجيد ، اللهم بارك على محمد وعلى آل محمد كما باركت على إبراهيم ، وعلى آل إبراهيم إنك حميد مجيد",
              referance: [
                "البخاري مع الفتح 6/ 408",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم صل على محمد وعلى أزواجه وذريته،كما صليت على آل إبراهيم، وبارك على محمد وعلى أزواجه وذريته كما باركت على آل إبراهيم إنك حميد مجيد",
              referance: [
                "البخاري مع الفتح 6/ 407ومسلم 1/ 306 واللفظ له",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 26,
        title: "الدعاء بعد التشهد الأخير وقبل السلام",
        isFavorite: favoriteIds.contains(26),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أعوذ بك من عذاب القبر،ومن عذاب جهنم،ومن فتنة المحيا والممات ،ومن شر فتنة المسيح الدجال",
              referance: [
                "البخاري 2/ 102 ومسلم 1/ 412 واللفظ لمسلم",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أعوذ بك من عذاب القبر،وأعوذ بك من فتنة المسيح الدجال،وأعوذ بك من فتنة المحيا والممات، اللهم إني أعوذ بك من المأثم والمغرم",
              referance: [
                "البخاري 1/ 202 ومسلم 1/ 412",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني ظلمت نفسي ظلماً كثيراً ، ولا يغفر الذنوب إلا أنت ، فاغفر لي مغفرة من عندك وارحمني إنك أنت الغفور الرحيم",
              referance: [
                "البخاري 8/168 ومسلم 4/ 2078",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم اغفر لي ما قدمت وما أخرت وما أسررت وما أعلنت وما أسرفت وما أنت أعلم به مني أنت المقدم وأنت المؤخر لا إله إلا أنت",
              referance: [
                "مسلم 1/ 534",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "اللهم أعني على ذكرك ، وشكرك وحسن عبادتك",
              referance: [
                "أبو داود 2/ 86والنسائي 3/ 53 وصححه الألباني في صحيح أبو داود 1/ 284",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أعوذ بك من البخل وأعوذ بك من الجبن ، وأعوذ بك من أن أرد إلى أرذل العمر ، وأعوذ بك من فتنة الدنيا وأعوذ بك من عذاب القبر",
              referance: [
                "البخاري 6/35",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "اللهم إني أسألك الجنة وأعوذ بك من النار",
              referance: [
                "أبو داود وانظر صحيح ابن ماجه 2/ 328",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم بعلمك الغيب وقدرتك على الخلق أحيني ما علمت الحياة خيراً لي وتوفني إذا علمت الوفاة خيراً لي ، اللهم إني أسألك خشيتك في الغيب والشهادة ، وأسألك كلمة الحق في الرضا والغضب ، وأسألك القصد في الغنى والفقر ، وأسألك نعيماً لا ينفد ، وأسألك قرة عين لا تنقطع ، وأسألك الرضا بعد القضاء ، وأسألك برد العيش بعد الموت ، وأسألك لذة النظر إلى وجهك والشوق إلى لقائك من غير ضرَّاء مضرة ولا فتنة مضلة ، اللهم زينا بزينة الإيمان ، واجعلنا هداة مهتدين",
              referance: [
                "النسائي 4/54،55وأحمد 4/364 وصححه الألباني في صحيح النسائي 1/ 281",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أسألك يا الله بأنك الواحد الأحد الصمد الذي لم يلد ولم يولد ولم يكن له كفواً أحد أن تغفر لي ذنوبي إنك أنت الغفور الرحيم",
              referance: [
                "أخرجه النسائي بلفظه 3/52وأحمد 4/338 وصححه الألباني في صحيح النسائي 1/ 280",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أسألك بأن لك الحمد ، لا إله إلا أنت وحدك لا شريك لك ، المنان ، يا بديع السموات والأرض يا ذا الجلال والإكرام يا حي يا قيوم إني أسألك الجنة وأعوذ بك من النار",
              referance: [
                "رواه أهل السنن وانظر صحيح ابن ماجه 2/ 329",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أسألك بأني أشهد أنك أنت الله لا إله إلا أنت،الأحد الصمد الذي لم يلد ولم يولد ولم يكن له كفواً أحد",
              referance: [
                "أبو داود2/62والترمذي 5/ 515 وابن ماجه 2/ 1267 وأحمد 5/360 وانظر صحيح ابن ماجه 2/ 329 وصحيح الترمذي 3/ 163",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 27,
        title: "الأذكار بعد السلام من الصلاة",
        isFavorite: favoriteIds.contains(27),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  " أستغفر الله, أستغفر الله, أستغفر الله , اللهم أنت السلام ، ومنك السلام ، تباركت يا ذا الجلال والإكرام",
              referance: [
                "مسلم1/ 414",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ اللَّهُمَّ لَا مَانِعَ لِمَا أَعْطَيْتَ وَلَا مُعْطِيَ لِمَا مَنَعْتَ وَلَا يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ",
              referance: [
                "البخاري 1 /255 ومسلم 1 / 414",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "لا إله إلا الله وحده لا شريك له،له الملك وله الحمد وهو على كل شئ قدير،لا حول ولا قوة إلا بالله،لا إله إلا الله،ولا نعبد إلا إياه ، له النعمة وله الفضل ،وله الثناء الحسن،لا إله إلا الله مخلصين له الدين ولو كره الكافرون",
              referance: [
                "مسلم 1/ 415",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "سبحان الله ، والحمد لله ، والله أكبر ( ثلاثاً وثلاثين ) لا إله إلا الله وحده لا شريك له ، له الملك وله الحمد وهو على كل شيء قدير",
              referance: [
                "مسلم 1/ 418من قال ذلك دبر كل صلاة غفرت خطاياه وإن كانت مثل زبد البحر مسلم 1/ 418",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "بسم الله الرحمن الرحيم",
              description:
                  "{ قُلْ هُوَ اللَّهُ أَحَدٌ*اللَّهُ الصَّمَدُ*لَمْ يَلِدْ وَلَمْ يُولَدْ * وَلَمْ يَكُن لَّهُ كُفُواً أَحَدٌ} {قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ * مِن شَرِّ مَا خَلَقَ *وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ * وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ * وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ } { قُلْ أَعُوذُ بِرَبِّ النَّاسِ * مَلِكِ النَّاسِ * إِلَهِ النَّاسِ *مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ * الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ * مِنَ الْجِنَّةِ وَالنَّاسِ } بعد كل صلاة مرة واحدة , وبعد صلاة المغرب والفجر ثلاث مرات",
              referance: [
                "أبو داود2 /86 والنسائي 3/ 68 وانظر صحيح الترمذي 2/8 والسور الثلاث يقال لها المعوذات وانظر فتح الباري 9 / 62",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "{ اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ } عقب كل صلاة",
              referance: [
                "من قرأها دبر كل صلاة لم يمنعه من دخول الجنة إلا أن يموت . والنسائي في عمل اليوم والليلة برقم 100 ، وابن السني برقم 121 وصححه الجامع 5/339 وسلسلة الأحاديث الصحيحة 2/697 برقم 972",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "لا إله إلا الله وحده لا شريك له ، له الملك وله الحمد ، يحيي ويميت وهو على كل شئ قدير ' عشر مرات بعد صلاة المغرب والصبح ",
              referance: [
                "رواه الترمذي 5/515 وأحمد 4/ 227 وانظر تخريجه في زاد المعاد 1/300",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أسألك علماً نافعاً ، ورزقاً طيباً ، وعملاً متقبلاً 'بعد السلام من صلاة الفجر",
              referance: [
                "ابن ماجه وغيره وانظر صحيح ابن ماجة1/ 152 ومجمع الزوائد 10/111",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 28,
        title: "دعاء صلاة الاستخارة",
        isFavorite: favoriteIds.contains(28),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "قال جابر بن عبد الله رضي الله عنهما : كان رسول الله صلى الله عليه وسلم ، يُعلمنا الاستخارة في الأمور كلها كما يعلمُنا السورة من القرآن ، يقول : إذا هم أحدكم بالأمر فليركع ركعتين من غير الفريضة ، ثم ليقل : اللهم إني أستخيرك بعلمك ، وأستقدرك بقدرتك ، وأسألك من فضلك العظيم فإنك تقدِرُ ولا أقدِرُ ، وتعلم ولا أعلم ، وأنت علام الغيوب ، اللهم إن كنت تعلم أن هذا الأمر -يسمي حاجته - خير لي في ديني ومعاشي وعاقبة أمري - أو قال : عاجلة وآجله - فاقدره لي ويسره لي ، ثم بارك لي فيه ، وإن كنت تعلم أن هذا الأمر شر لي في ديني ومعاشي وعاقبة أمري - أو قال : عاجله وآجله - فاصرفه عني واصرفني عنه ، واقدر لي الخير حيث كان ، ثم ارضني به",
              referance: [
                "البخاري7/ 162",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "وما ندم من استخار الخالق ، وشاور المخلوقين المؤمنين وتثبت في أمره ، فقد قال سبحانه { وَشَاوِرْهُمْ فِي الأَمْرِ فَإِذَا عَزَمْتَ فَتَوَكَّلْ عَلَى اللّهِ}",
              referance: [
                "سورة آل عمران ، آية : 159",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 29,
        title: "أذكار الصباح",
        isFavorite: favoriteIds.contains(29),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "الحمد لله وحده ، والصلاة والسلام على من لا نبي بعده",
              referance: [
                "عن أنس يرفعه ' لأن أقعد مع قوم يذكرون الله تعالى من صلاة الغداة حتى تطلع الشمس أحب إلي من أن أعتق أربعة من ولد إسماعيل ، ولأن أقعد مع قوم يذكرون الله من صلاة العصر إلى أن تغرب الشمس أحب إلي من أن أعتق أربعة ' أبو داود برقم 3667، وحسنه الألباني ، صحيح أبو داود 2/ 698",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "أعوذ بالله من الشيطان الرجيم",
              description:
                  "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ",
              referance: [
                "سورة البقرة ، آية 255 من قالها حين يمسي أجير منهم حتى يصبح أخرجه الحاكم 1/ 562وصححه الألباني في صحيح الترغيب والترهيب 1/ 273 وعزاه إلى النسائي والطبراني وقال : وإسناد الطبراني جيد",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "بسم الله الرحمن الرحيم",
              description:
                  "{ قُلْ هُوَ اللَّهُ أَحَدٌ * اللَّهُ الصَّمَدُ * لَمْ يَلِدْ وَلَمْ يُولَدْ * وَلَمْ يَكُن لَّهُ كُفُواً أَحَدٌ} {قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ * مِن شَرِّ مَا خَلَقَ *وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ * وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ * وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ } { قُلْ أَعُوذُ بِرَبِّ النَّاسِ * مَلِكِ النَّاسِ * إِلَهِ النَّاسِ *مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ * الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ * مِنَ الْجِنَّةِ وَالنَّاسِ }",
              referance: [
                "من قالها ثلاث مرات حين يصبح وحين يمسي كفته من كل شيء . أبو داود 4/ 322 والترمذي 5/ 567وانظر صحيح الترمذي 3/ 182",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "أصبحنا وأصبح الملك لله ، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، ربِّ أسألك خير ما في هذا اليوم وخير ما بعده وأعوذ بك من شر ما في هذا اليوم وشر ما بعده ربِّ أعوذ بك من الكسل وسوء الكبر، ربَّ أعوذ بك من عذابٍ في النار وعذاب في القبر",
              referance: [
                "مسلم 4/ 2088",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم بك أصبحنا وبك أمسينا وبك نحيا وبك نموت وإليك النشور",
              referance: [
                "الترمذي 5/ 466 وانظر صحيح الترمذي 3/ 142",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم أنت ربي لا إله إلا أنت خَلَقتني وأنا عَبْدُك وأنا على عهدك ووعدك ما استطعت أعوذ بك من شر ما صنعت أبوء لك بنعمتك علي وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت",
              referance: [
                "من قالها موقناً بها حين يمسي فمات من ليلته دخل الجنة ، وكذلك إذا أصبح أخرجه البخاري 7/150",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أصبحت أشهدك وأشهد حملة عرشك ، وملائكتك وجميع خلقك ، أنك أنت الله لا إله إلا أنت وحدك لا شريك لك ، وأن محمداً عبدك ورسولك",
              referance: [
                "من قالها حين يصبح وحين يمسي أربع مرات أعتقه الله من النار . أخرجه أبو داود 4/ 317 والبخاري في الأدب المفرد برقم 1201 والنسائي في عمل اليوم والليلة برقم 9، وابن السني برقم 70 وحسن سماحة الشيخ ابن باز إسناد النسائي وأبي داود في تحفة الأخيار ص 23",
              ],
              readCount: 4,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم ما أصبح بي من نعمة أو بأحد من خلقك فمنك وحدك لا شريك لك ، فلك الحمد ولك الشكر",
              referance: [
                "من قالها حين يصبح فقد أدي شكر يومه ، ومن قالها حين يمسى فقد أدى شكر ليلته . أخرجه أبو داود 4/318 ، والنسائي في عمل اليوم والليلة برقم 7وابن السني برقم 41 وابن حبان (( موارد)) رقم 2361وحسن ابن باز إسناده في تحفة الأخيار ص24",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم عافني في بَدَني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت .اللهم إني أعوذ بك من الكفر، والفقر، اللهم إني أعوذ بك من عذاب القبر لا إله إلا أنت",
              referance: [
                "أبو داود 4/ 324، وأحمد 5/ 42 والنسائي في عمل اليوم والليلة برقم 22وابن السني برقم 69والبخاري في الأدب المفرد وحسن العلامة ابن باز في تحفة الأخيار ص26",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم",
              referance: [
                "من قالها حين يصبح ويمسي سبع مرات كفاه الله ما أهمه من أمر الدنيا والآخرة .أخرجه ابن السني برقم 71مرفوعاً وأبو موقوف 4/321،وصحح إسناده شعيب وعبد القادر الأرناؤوط . انظر زاد المعاد 2/ 376",
              ],
              readCount: 7,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أسألك العفو والعافية في الدنيا والآخرة، اللهم إني أسألك العفو والعافية في ديني ودنياي وأهلي ومالي،اللهم استر عوراتي وآمن روعاتي، اللهم احفظني من بين يديَّ ومن خلفي وعن يميني وعن شمالي ومن فوقي وأعوذ بعظمتك أن أغتال من تحتي",
              referance: [
                "أبو داود وابن ماجه وانظر صحيح ابن ماجه 2/332",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم عَالِمَ الغيب والشَّهادة، فاطر السموات والأرض، رب كل شيء ومليكه، أشهد أن لا إله إلا أنت أعوذ بك من شر نفسي ومن شر الشيطان وشركه وأن اقترف على نفسي سوءًا أو أجُره إلى مسلم",
              referance: [
                "الترمذي وأبو داود .انظر :صحيح الترمذي3/ 142",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "بسم الله الذي لا يضرُّ مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم",
              referance: [
                "من قالها ثلاثاً إذا أصبح وثلاثاً إذا أمسى لم يضره شيء أخرجه أبو داود 4/ 323 والترمذي 5/ 465 وابن ماجه وأحمد . انظر : صحيح ابن ماجه 2/332 وحسن إسناده العلامة ابن باز في تحفة الأخيار ص39",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "رضيت بالله رباً ، وبالإسلام ديناً وبمحمد صلى الله عليه وسلم نبياً",
              referance: [
                "من قالها ثلاثاً حين يصبح وحين يمسي كان حقاً على الله أن يرضيه يوم القيامة . أحمد 4/ 337 والنسائي في عمل اليوم والليلة برقم 4 وابن السني برقم 68 وأبو داود 4/418 والترمذي 5/465 وحسنه ابن باز في تحفة الأخيار ص 39 ",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كُله ولا تَكِلْني إلى نفسي طرفة عين",
              referance: [
                "الحاكم وصححه ووافقه الذهبي 1/ 545 وانظر صحيح الترغيب والترهيب 1/273",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "أصبحنا وأصبح الملك لله رب العالمين، اللهم إني أسألك خير هذا اليوم : فتحه، ونصره ،ونوره ،وبركته، وهداه، وأعوذ بك من شر ما فيه وشر ما بعده",
              referance: [
                "أبو داود 4/ 322 وحسن إسناده شعيب وعبد القادر الأرناؤوط في تحقيق زاد المعاد 2/ 273",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "أصبحنا على فطرة الإسلام وعلى كلمة الإخلاص، وعلى دين نبيَّنا محمد صلى الله عليه وسلم وعلى ملَّة أبينا إبراهيم حنيفاً مسلماً وما كان من المشركين",
              referance: [
                "أحمد 3/ 406و 407 وابن السني في عمل اليوم والليلة برقم 34 وانظر : صحيح الجامع 4/ 209",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبحان الله وبحمده",
              referance: [
                "من قالها مائة مرة حين يصبح وحين يمسي لم يأت أحد يوم القيامة بأفضل مما جاء به إلا أحد قال مثل ما قال أو زاد رواه مسلم4 / 2071",
              ],
              readCount: 100,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "لا إله إلا الله وحده لا شريك له ،له الملك وله الحمد وهو على كل شيء قدير",
              referance: [
                "عشر مرات أو مرة واحدة عند الكسل",
                "النسائي في عمل اليوم والليلة برقم 24 وانظر :صحيح الترغيب والترهيب 1/272 ،وتحفة الأخيار لابن باز ص44وانظر فضلها في ص146 ،حديث رقم 255",
                " أبو داود 4/319 وابن ماجه وأحمد 4/60 وانظر :صحيح الترغيب والترهيب 1/270 ،صحيح أبو داود 3/957 ، وصحيح ابن ماجه 2/331 وزاد المعاد 2/ 377",
              ],
              readCount: 10,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "لا إله إلا الله وحده لا شريك له ،له الملك وله الحمد وهو على كل شيء قدير",
              referance: [
                "من قالها مائة مرة في يوم كانت له عدل عشر رقاب، وكتب له مائة حسنة ،ومحيت عنه مائة سيئة ، وكانت حرزاً من الشيطان يومه ذلك حتى يمسي ،ولم يأت أحد بأفضل مما جاء به إلا أحد عمل أكثر من ذلك . البخاري 4/95،ومسلم 4/2071",
              ],
              readCount: 100,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "سبحان الله وبحمده عدد خلقهِ ورِضَا نفسِهِ وزِنُة عَرشِهِ ومِداد كلماته",
              referance: [
                "مسلم 4/2090",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أسألك علماً نافعاً ، ورزقاً طيباً ، وعملاً متقبلاً",
              referance: [
                "أخرجه ابن السني في عمل اليوم والليلة برقم 54وابن ماجه برقم 925وحسن إسناده عبد القادر وشعيب الأرناؤوط في تحقيق زاد المعاد 2/375",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "أستغفر الله وأتوب إليه",
              referance: [
                "البخاري مع الفتح 11/ 101 ، ومسلم 4/ 2075",
              ],
              readCount: 100,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "اللهم صل وسلم على نبينا محمد",
              referance: [
                "من صلى علي حين يُصبح عشراً ، وحين يُمسي عشراً أدركتهُ شفاعتي يوم القيامة ، رواه الطبراني بإسنادين أحدهما جيد ، انظر الزائد 10/ 120 وصحيح الترغيب والترهيب 1/273",
              ],
              readCount: 10,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 30,
        title: "أذكار المساء",
        isFavorite: favoriteIds.contains(30),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "الحمد لله وحده ، والصلاة والسلام على من لا نبي بعده",
              referance: [
                "عن أنس يرفعه ' لأن أقعد مع قوم يذكرون الله تعالى من صلاة الغداة حتى تطلع الشمس أحب إلي من أن أعتق أربعة من ولد إسماعيل ، ولأن أقعد مع قوم يذكرون الله من صلاة العصر إلى أن تغرب الشمس أحب إلي من أن أعتق أربعة ' أبو داود برقم 3667، وحسنه الألباني ، صحيح أبو داود 2/ 698",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "أعوذ بالله من الشيطان الرجيم",
              description:
                  "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ",
              referance: [
                "سورة البقرة ، آية 255 من قالها حين يمسي أجير منهم حتى يصبح أخرجه الحاكم 1/ 562وصححه الألباني في صحيح الترغيب والترهيب 1/ 273 وعزاه إلى النسائي والطبراني وقال : وإسناد الطبراني جيد",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "بسم الله الرحمن الرحيم",
              description:
                  "{ قُلْ هُوَ اللَّهُ أَحَدٌ * اللَّهُ الصَّمَدُ * لَمْ يَلِدْ وَلَمْ يُولَدْ * وَلَمْ يَكُن لَّهُ كُفُواً أَحَدٌ} {قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ * مِن شَرِّ مَا خَلَقَ *وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ * وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ * وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ } { قُلْ أَعُوذُ بِرَبِّ النَّاسِ * مَلِكِ النَّاسِ * إِلَهِ النَّاسِ *مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ * الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ * مِنَ الْجِنَّةِ وَالنَّاسِ }",
              referance: [
                "من قالها ثلاث مرات حين يصبح وحين يمسي كفته من كل شيء . أبو داود 4/ 322 والترمذي 5/ 567وانظر صحيح الترمذي 3/ 182",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "أمسينا وأمسي الملك لله ، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، ربِّ أسألك خير ما في هذا اليوم وخير ما بعده وأعوذ بك من شر ما في هذا اليوم وشر ما بعده ربِّ أعوذ بك من الكسل وسوء الكبر، ربَّ أعوذ بك من عذابٍ في النار وعذاب في القبر",
              referance: [
                "مسلم 4/ 2088",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم بك أصبحنا وبك أمسينا وبك نحيا وبك نموت وإليك النشور",
              referance: [
                "الترمذي 5/ 466 وانظر صحيح الترمذي 3/ 142",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم أنت ربي لا إله إلا أنت خَلَقتني وأنا عَبْدُك وأنا على عهدك ووعدك ما استطعت أعوذ بك من شر ما صنعت أبوء لك بنعمتك علي وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت",
              referance: [
                "من قالها موقناً بها حين يمسي فمات من ليلته دخل الجنة ، وكذلك إذا أصبح أخرجه البخاري 7/150",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أمسيت أشهدك وأشهد حملة عرشك ، وملائكتك وجميع خلقك ، أنك أنت الله لا إله إلا أنت وحدك لا شريك لك ، وأن محمداً عبدك ورسولك",
              referance: [
                "من قالها حين يصبح وحين يمسي أربع مرات أعتقه الله من النار . أخرجه أبو داود 4/ 317 والبخاري في الأدب المفرد برقم 1201 والنسائي في عمل اليوم والليلة برقم 9، وابن السني برقم 70 وحسن سماحة الشيخ ابن باز إسناد النسائي وأبي داود في تحفة الأخيار ص 23",
              ],
              readCount: 4,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم ما أمسى بي من نعمة أو بأحد من خلقك فمنك وحدك لا شريك لك ، فلك الحمد ولك الشكر",
              referance: [
                "من قالها حين يصبح فقد أدي شكر يومه ، ومن قالها حين يمسى فقد أدى شكر ليلته . أخرجه أبو داود 4/318 ، والنسائي في عمل اليوم والليلة برقم 7وابن السني برقم 41 وابن حبان (( موارد)) رقم 2361وحسن ابن باز إسناده في تحفة الأخيار ص24",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم عافني في بَدَني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت .اللهم إني أعوذ بك من الكفر، والفقر، اللهم إني أعوذ بك من عذاب القبر لا إله إلا أنت",
              referance: [
                "أبو داود 4/ 324، وأحمد 5/ 42 والنسائي في عمل اليوم والليلة برقم 22وابن السني برقم 69والبخاري في الأدب المفرد وحسن العلامة ابن باز في تحفة الأخيار ص26",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم",
              referance: [
                "من قالها حين يصبح ويمسي سبع مرات كفاه الله ما أهمه من أمر الدنيا والآخرة .أخرجه ابن السني برقم 71مرفوعاً وأبو موقوف 4/321،وصحح إسناده شعيب وعبد القادر الأرناؤوط . انظر زاد المعاد 2/ 376",
              ],
              readCount: 7,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أسألك العفو والعافية في الدنيا والآخرة، اللهم إني أسألك العفو والعافية في ديني ودنياي وأهلي ومالي،اللهم استر عوراتي وآمن روعاتي، اللهم احفظني من بين يديَّ ومن خلفي وعن يميني وعن شمالي ومن فوقي وأعوذ بعظمتك أن أغتال من تحتي",
              referance: [
                "أبو داود وابن ماجه وانظر صحيح ابن ماجه 2/332",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم عَالِمَ الغيب والشَّهادة، فاطر السموات والأرض، رب كل شيء ومليكه، أشهد أن لا إله إلا أنت أعوذ بك من شر نفسي ومن شر الشيطان وشركه وأن اقترف على نفسي سوءًا أو أجُره إلى مسلم",
              referance: [
                "الترمذي وأبو داود .انظر :صحيح الترمذي3/ 142",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "بسم الله الذي لا يضرُّ مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم",
              referance: [
                "من قالها ثلاثاً إذا أصبح وثلاثاً إذا أمسى لم يضره شيء أخرجه أبو داود 4/ 323 والترمذي 5/ 465 وابن ماجه وأحمد . انظر : صحيح ابن ماجه 2/332 وحسن إسناده العلامة ابن باز في تحفة الأخيار ص39",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "رضيت بالله رباً ، وبالإسلام ديناً وبمحمد صلى الله عليه وسلم نبياً",
              referance: [
                "من قالها ثلاثاً حين يصبح وحين يمسي كان حقاً على الله أن يرضيه يوم القيامة . أحمد 4/ 337 والنسائي في عمل اليوم والليلة برقم 4 وابن السني برقم 68 وأبو داود 4/418 والترمذي 5/465 وحسنه ابن باز في تحفة الأخيار ص 39 ",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كُله ولا تَكِلْني إلى نفسي طرفة عين",
              referance: [
                "الحاكم وصححه ووافقه الذهبي 1/ 545 وانظر صحيح الترغيب والترهيب 1/273",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "أمسينا وأمسى الملك لله رب العالمين، اللهم إني أسألك خير هذه الليله : فتحها، ونصرها ،ونورها ،وبركتها، وهداها، وأعوذ بك من شر ما فيها وشر ما بعدها",
              referance: [
                "أبو داود 4/ 322 وحسن إسناده شعيب وعبد القادر الأرناؤوط في تحقيق زاد المعاد 2/ 273",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "أمسينا على فطرة الإسلام وعلى كلمة الإخلاص، وعلى دين نبيَّنا محمد صلى الله عليه وسلم وعلى ملَّة أبينا إبراهيم حنيفاً مسلماً وما كان من المشركين",
              referance: [
                "أحمد 3/ 406و 407 وابن السني في عمل اليوم والليلة برقم 34 وانظر : صحيح الجامع 4/ 209",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبحان الله وبحمده",
              referance: [
                "من قالها مائة مرة حين يصبح وحين يمسي لم يأت أحد يوم القيامة بأفضل مما جاء به إلا أحد قال مثل ما قال أو زاد رواه مسلم4 / 2071",
              ],
              readCount: 100,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "لا إله إلا الله وحده لا شريك له ،له الملك وله الحمد وهو على كل شيء قدير",
              referance: [
                "عشر مرات أو مرة واحدة عند الكسل",
                "النسائي في عمل اليوم والليلة برقم 24 وانظر :صحيح الترغيب والترهيب 1/272 ،وتحفة الأخيار لابن باز ص44وانظر فضلها في ص146 ،حديث رقم 255",
                " أبو داود 4/319 وابن ماجه وأحمد 4/60 وانظر :صحيح الترغيب والترهيب 1/270 ،صحيح أبو داود 3/957 ، وصحيح ابن ماجه 2/331 وزاد المعاد 2/ 377",
              ],
              readCount: 10,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "أستغفر الله وأتوب إليه",
              referance: [
                "البخاري مع الفتح 11/ 101 ، ومسلم 4/ 2075",
              ],
              readCount: 100,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "أعوذ بكلمات الله التامات من شر ما خلق",
              referance: [
                "من قالها حين يمسي ثلاث مرات لم تضره حمة تلك الليلة أخرجه أحمد 2/290 والنسائي في عمل اليوم والليلة برقم 590 وابن السني برقم 68وانظر : صحيح الترمذي 3/187، وصحيح ابن ماجه 2/266 وتحفة الأخيار ص45",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "اللهم صل وسلم على نبينا محمد",
              referance: [
                "من صلى علي حين يُصبح عشراً ، وحين يُمسي عشراً أدركتهُ شفاعتي يوم القيامة ، رواه الطبراني بإسنادين أحدهما جيد ، انظر الزائد 10/ 120 وصحيح الترغيب والترهيب 1/273",
              ],
              readCount: 10,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 31,
        title: "أذكار النوم",
        isFavorite: favoriteIds.contains(31),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "يجمع كفيه ثم ينفث فيهما فيقرأ : بسم الله الرحمن الرحيم { قُلْ هُوَ اللَّهُ أَحَدٌ*اللَّهُ الصَّمَدُ * لَمْ يَلِدْ وَلَمْ يُولَدْ*وَلَمْ يَكُن لَّهُ كُفُواً أَحَدٌ } بسم الله الرحمن الرحيم { قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ*مِن شَرِّ مَا خَلَقَ * وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ * وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ * وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ } بسم الله الرحمن الرحيم { قُلْ أَعُوذُ بِرَبِّ النَّاسِ * مَلِكِ النَّاسِ * إِلَهِ النَّاسِ *مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ * الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ * مِنَ الْجِنَّةِ وَالنَّاسِ } ثم يمسح بهما ما استطاع من جسده يبدأبهما على رأسه ووجهه وما أقبل من جسده",
              referance: [
                "البخاري مع الفتح 9/62ومسلم 4/1723",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ",
              referance: [
                "من قرأها إذا أوى إلى فراشه فإنه لن يزال عليه من الله حافظ ولا يقربه شيطان حتى يصبح البخاري مع الفتح 4/487",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "أعوذ بالله من الشيطان الرجيم",
              description:
                  "آمَنَ الرَّسُولُ بِمَا أُنزِلَ إِلَيْهِ مِن رَّبِّهِ وَالْمُؤْمِنُونَ كُلٌّ آمَنَ بِاللّهِ وَمَلآئِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لاَ نُفَرِّقُ بَيْنَ أَحَدٍ مِّن رُّسُلِهِ وَقَالُواْ سَمِعْنَا وَأَطَعْنَا غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ * لاَ يُكَلِّفُ اللّهُ نَفْساً إِلاَّ وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لاَ تُؤَاخِذْنَا إِن نَّسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلاَ تَحْمِلْ عَلَيْنَا إِصْراً كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِن قَبْلِنَا رَبَّنَا وَلاَ تُحَمِّلْنَا مَا لاَ طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنتَ مَوْلاَنَا فَانصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ",
              referance: [
                "من قرأها في ليلة كفتاه، البخاري مع الفتح 9/ 94 ومسلم 1/ 554 ، والآيتان من سورة البقرة ، 285 ï¿½ 286",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "باسمك ربي وضعت جنبي وبك أرفعه إن أمسكت نفسي فارحمها، وإن أرسلتها فاحفظها بما تحفظ به عبادك الصالحين",
              referance: [
                "إذا قام أحدكم من فراشه ثم رجع إليه فلينفض بصنفة  إزاره ثلاث مرات وليسم الله  فإنه لا يدري ماذا خلفه عليه بعده وإذا اضطجع فليقل ... الحديث",
                "البخاري 11/ 126 .ومسلم 4/ 2084",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم خَلَقْتَ نفسي وأنت توفَّاها لك مماتها ومَحْياها، إن أحييتها فاحفظها وإن أمتها فاغفر لها، اللهم إني أسألك العافية",
              referance: [
                "رواه مسلم4/ 2083وأحمد بلفظه 2/79",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "اللهم قني عذابك يوم تبعث عبادك",
              referance: [
                "كان الرسول صلى الله عليه وسلم إذا أراد أن يرقد وضع يده اليمنى تحت خده ثم يقول .......... الحديث",
                "أبو داود بلفظه 4/311 وانظر صحيح الترمذي3/ 143",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "باسمِكَ اللهم أموت وأحيا",
              referance: [
                "البخاري مع الفتح 11/113 ومسلم 4/ 2083",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "سبحان الله",
              referance: [
                "من قال ذلك عندما يأوي إلى فراشه كان خيراً له من خادم البخاري مع الفتح 7/71 ومسلم 4/ 2091",
              ],
              readCount: 33,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "والحمد لله",
              referance: [
                "من قال ذلك عندما يأوي إلى فراشه كان خيراً له من خادم البخاري مع الفتح 7/71 ومسلم 4/ 2091",
              ],
              readCount: 33,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "والله أكبر",
              referance: [
                "من قال ذلك عندما يأوي إلى فراشه كان خيراً له من خادم البخاري مع الفتح 7/71 ومسلم 4/ 2091",
              ],
              readCount: 34,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم ربَّ السموات السبع، ورب العرش العظيم، ربنا ورب كل شيء، فالق الحب والنوى، ومُنزل التوراة والإنجيل والفرقان، أعوذ بك من شر كل شيء أنت آخذٌ بناصيته،اللهم أنت الأول فليس قبلك شيء،وأنت الآخر فليس بعدك شيء، وأنت الظاهر فليس فوقك شيء، وأنت الباطن فليس دونك شيء، اقض عنا الدَّيْنَ واغننا من الفقر",
              referance: [
                "مسلم 4/ 2084",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "الحمد لله الذي أطعمنا وسقانا وكفانا وآوانا فكم ممن لا كافي له ولا مؤوي",
              referance: [
                "مسلم 4/ 2085",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم عالم الغيب والشهادة، فاطر السموات والأرض، رب كل شيء ومليكه أشهد أن لا إله إلا أنت أعوذ بك من شر نفسي، ومن شر الشيطان وشركه وأن أقترف على نفسي سوءًا أو أجرَّه إلى مسلم",
              referance: [
                "أبو داود 4/ 317 وانظر صحيح سنن الترمذي3/ 142",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "يقرأ {ألم} تنزيل السجدة، و{تبارك الذي بيده الملك}",
              referance: [
                "الترمذي والنسائي وانظر صحيح الجامع4/ 255",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم أسلمت نفسي إليك، وفوضت أمري إليك وألجأت ظهري إليك رهبةً ورغبةً إليك، لا ملجأ ولا منجا منك إلا إليك، آمنت بكتابك الذي أنزلت وبنبيك الذي أرسلت",
              referance: [
                "إذا أخذت مضجعك فتوضأ وضوءك للصلاة ثم اضطجع على شقك الأيمن، وقل:.... الحديث",
                "قال صلى الله عليه وسلم لمن قال ذلك : فإن متَّ،متَّ على الفطرة  البخاري مع الفتح 11/113 ومسلم 4/ 2081",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 32,
        title: "الدعاء إذا تقلب ليلاً",
        isFavorite: favoriteIds.contains(32),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "لا إله إلا الله الواحد القهار، ربُّ السموات والأرض وما بينهما العزيز الغفار",
              referance: [
                "يقول ذلك إذا تقلب من جنب إلى جنب في الليل . أخرجه الحاكم وصححه ووفقه الذهبي 1/ 540 والنسائي في اليوم والليلة وابن السني وانظر صحيح الجامع 4/213",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 33,
        title: "دعاء القلق والفزع في النوم ومن بلي بالوحشة",
        isFavorite: favoriteIds.contains(33),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "أعوذ بكلمات الله التَّامَّة من غضبه وعقابه، وشر عباده، ومن همزات الشياطين وأنْ يحضرون",
              referance: [
                " أبو داود 4/12 نظر صحيح الترمذي3/ 171",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 34,
        title: "ما يفعل من رأى الرؤيا أو الحلم",
        isFavorite: favoriteIds.contains(34),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "ينفث عن يساره",
              referance: [
                "مسلم4/1772",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "يستعيذ بالله من الشيطان ومن شر ما رأى",
              referance: [
                "مسلم4/1772- 1773",
              ],
              readCount: 3,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "لا يحدث بها أحدا ",
              referance: [
                "مسلم4/1772",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "يتحول عن جنبه الذي كان عليه",
              referance: [
                "مسلم4/1773",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "يقوم يصلي إن أراد ذلك",
              referance: [
                "مسلم4/1773",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 35,
        title: "دعاء قنوت الوتر",
        isFavorite: favoriteIds.contains(35),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم اهدني فيمن هديت ، وعافني فيمن عافيت ، وتولني فيمن توليت ، وبارك لي فيما أعطيت ، وقني شر ما قضيت ، فإنك تقضي ولا يقضى عليك ، إنه لا يذل من واليت ،[ ولا يعز من عاديت ] تباركت ربنا وتعاليت ",
              referance: [
                "أخرجه أصحاب السنن الأربعة وأحمد والدرامي والحاكم والبيهقي وما بين المعكوفين للبيهقي وانظر صحيح الترمذي 1/144وصحيح ابن ماجه 1/194 وإرواء الغليل للألباني 2/172",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أعوذ برضاك من سخطك وأعوذ بمعافاتك من عقوبتك ، وأعوذ بك منك لا أحصي ثناء عليك ، أنت كما أثنيت على نفسك",
              referance: [
                "أخرجه أصحاب السنن الأربعة وأحمد. انظر صحيح الترمذي 3/180وصحيح ابن ماجه 1/194 والإرواء 2/175",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إياك نعبد ، ولك نُصلي ونسجد ، وإليك نسعى ونحفدُ ، نرجُو رحمتك ، ونخشى عذابك ، إن عذابك بالكافرين ملحق ، اللهم إنا نستعينك ، ونستغفرك ، ونثني عليك الخير ، ولا نكفرك ، ونؤمن بك ونخضع لك ، ونخلع من يكفرك",
              referance: [
                "أخرجه البيهقي في السنن الكبرى وصحح إسناده 2/211 وقال الشيخ الألباني في إرواء الغليل وهذا إسناد صحيح 2/170 .وهو موقوف على عمر",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 36,
        title: "الذكر عقب السلام من الوتر",
        isFavorite: favoriteIds.contains(36),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "كان رسول الله صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يقرأ في الوتر :( سَبِّحِ اسْمَ رَبِّكَ الْأَعْلَى ) و ( وَقُلْ يَا أَيُّهَا الْكَافِرُونَ ) و ( وَقُلْ هُوَ اللَّهُ أَحَدٌ). فإذا سلم قال  سبحان الملك القدوس [رب الملائكة والروح ] ",
              referance: [
                "ثلاث مرات والثالثة يجهر بها ويمد بها صوته",
                "رواه النسائي 3/244 والدار قطني وغيرهما وما بين المعكوفين زيادة للدار قطني 2/31 وإسناده صحيح .انظر زاد المعاد بتحقيق شعيب الأرناؤوط وعبد القادر الأرناؤوط 1/337",
              ],
              readCount: 3,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 37,
        title: "دعاء الهم والحزن",
        isFavorite: favoriteIds.contains(37),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني عبدك ابن عبدك ابن أمتك ناصيتي بيدك،ماضِ في حكمك ، عدل في قضاؤك ،أسألك بكل اسم هو لك سميت به نفسك أو أنزلته في كتابك ، أو علمته أحداً من خلقك أو استأثرت به في علم الغيب عندك أن تجعل القرآن ربيع قلبي ، ونور صدري ،وجلاء حزني وذهاب همي",
              referance: [
                "أحمد 1/391وصححه الألباني",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أعوذ بك من الهم والحزن ، والعجز والكسل والبخل والجبن ، وضلع الدين وغلبة الرجال",
              referance: [
                "البخاري 7/158 كان رسول الله صلى الله عليه وسلم يكثر من هذا الدعاء",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 38,
        title: "دعاء الكرب",
        isFavorite: favoriteIds.contains(38),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "لاَ إِلَهَ إِلاَّ اللَّهُ الْعَظِيمُ الْحَلِيمُ، لاَ إِلَهَ إِلاَّ اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ، لاَ إِلَهَ إِلاَّ اللَّهُ رَبُّ السَّمَوَاتِ وَرَبُّ الْأَرْضِ وَرَبُّ الْعَرْشِ الْكَرِيمِ",
              referance: [
                "البخاري 7/154ومسلم 4/ 2092",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم رحمتك أرجو فلا تكلني إلى نفسي طرفة عين ِ وأصلح لي شأني كله لا إله إلا أنت ",
              referance: [
                "أبو داود 4/324 وأحمد 5/42 وحسنه الألباني في صحيح أبو داود 3/ 959",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "لا إله إلا أنت سبحانك إني كنت من الظالمين",
              referance: [
                "الترمذي 5/529 والحاكم وصححه ووفقه الذهبي 1/505 وانظر صحيح الترمذي3/ 168",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "الله الله ربي لا أشرك به شيئاً",
              referance: [
                "أخرجه أبو داود 2/87 وانظر صحيح ابن ماجه 2/335",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 39,
        title: "دعاء لقاء العدو وذي السلطان",
        isFavorite: favoriteIds.contains(39),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "اللهم إنا نجعلك في نحورهم ونعوذ بك من شرورهم",
              referance: [
                "أبو داود 2/89 وصححه الحاكم ووافقه الذهبي 2/142",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم أنت عضُدي وأنت نصيري ، بك أحولُ ،وبك أصولُ ، وبك أُقاتلُ",
              referance: [
                "أبو داود 3/42 والترمذي 5/572 ،وانظر صحيح الترمذي3/183",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "حسبنا الله ونعم الوكيل",
              referance: [
                "البخاري 5/172",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 40,
        title: "دعاء من خاف ظلم السلطان",
        isFavorite: favoriteIds.contains(40),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم رب السموات السبع ،ورب العرش العظيم ،كن لي جاراً من فلان بن فلان ، وأحزابه من خلائقك ؛ أن يفرط على أحد منهم أو يطغى ، عز جارك ،وجل ثناؤك ،ولا إله إلا أنت ",
              referance: [
                "البخاري في الأدب المفرد برقم 707 وصححه الألباني وفي صحيح الأدب المفرد برقم 545",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "الله أكبر، الله أعز من خلقه جميعاً ، الله أعز مما أخاف وأحذر ،أعوذ بالله الذي لا إله إلا هو ، الممسك السموات السبع أن يقعن على الأرض إلا بإذنه ،من شر عبدك فلان ،وجنوده وأتباعه وأشياعه ، من الجن والأنس ، اللهم كن لي جاراً من شرهم ، جل ثناؤك وعز جارك ، وتبارك اسمك ، ولا إله غيرك",
              referance: [
                "البخاري في الأدب المفرد برقم 708 وصححه الألباني وفي صحيح الأدب المفرد برقم 546",
              ],
              readCount: 3,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 41,
        title: "الدعاء على العدو",
        isFavorite: favoriteIds.contains(41),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم منزل الكتاب ، سريع الحساب ،اهزم الأحزاب ،اللهم اهزمهم وزلزلهم",
              referance: [
                "مسلم 3/1362",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 42,
        title: "ما يقول من خاف قوماً",
        isFavorite: favoriteIds.contains(42),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "اللهم اكفنيهم بما شئت",
              referance: [
                "مسلم 4/2300",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 43,
        title: "دعاء من أصابه شك في الإيمان",
        isFavorite: favoriteIds.contains(43),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "يستعيذ بالله",
              referance: [
                "البخاري مع الفتح 6/336 ومسلم 1/120",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "ينتهي عما شك فيه",
              referance: [
                "البخاري مع الفتح 6/336 ومسلم 1/120",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "يقول: آمنت بالله ورسله",
              referance: [
                "مسلم 1/  119- 120",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "يقرأ قوله تعالى { هُوَ الْأَوَّلُ وَالْآخِرُ وَالظَّاهِرُ وَالْبَاطِنُ وَهُوَ بِكُلِّ شَيْءٍ عَلِيمٌ }",
              referance: [
                "سورة الحديد ، الآية :3 .أبو داود 4/329 وحسنه الألباني في صحيح أبو داود 3/962",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 44,
        title: "دعاء قضاء الدين",
        isFavorite: favoriteIds.contains(44),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم اكفني بحلالك عن حرامك ، وأغنني بفضلك عمن سواك ",
              referance: [
                "الترمذي 5/560 وانظر صحيح الترمذي3/ 180",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم إني أعوذ بك من الهم والحزن ، والعجز والكسل ،والبخل والجبن وضلع الدين وغلبة الرجال",
              referance: [
                "البخاري7/ 158",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 45,
        title: "دعاء الوسوسة في الصلاة والقراءة",
        isFavorite: favoriteIds.contains(45),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "أعوذ بالله من الشيطان الرجيم واتفل على يسارك",
              referance: [
                "مسلم 4/1729 من حديث عثمان بن العاص رضي الله عنه وفيه ففعلت ذلك فأذهبه الله عني",
              ],
              readCount: 3,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 46,
        title: "دعاء من استصعب عليه أمر",
        isFavorite: favoriteIds.contains(46),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "اللهم لا سهل إلا ما جعلته سهلاً وأنت تجعل الحزن إذا شئت سهلاً",
              referance: [
                "رواة ابن حبان في صحيحه برقم 2427 (موارد) وابن السني برقم 351 وقال الحافظ هذا حديث صحيح وصححه عبد القادر الأرناؤوط في تخريج الأذكار للنووي ص106",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 47,
        title: "ما يقول ويفعل من أذنب ذنباً",
        isFavorite: favoriteIds.contains(47),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "ما من عبدٍ يذنب ذنباً فيحسن الطهور ، ثم يقوم فيصلي ركعتين ، ثم يستغفر الله إلا غفر الله لهُ",
              referance: [
                "أبو داود 2/86 والترمذي 2/257 وصححه الألباني في صحيح أبي داود 1/ 283",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 48,
        title: "دعاء طرد الشيطان ووساوسه",
        isFavorite: favoriteIds.contains(48),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "الاستعاذة بالله منه",
              referance: [
                "أبو داود 1/206 والترمذي وانظر صحيح الترمذي 1/77 وانظر سورة المؤمنون آية 98-99",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "الأذان",
              referance: [
                "مسلم 1/ 291 والبخاري 1/151",
              ],
              readCount: 1,
            ),
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "الأذكار وقراءة القرآن",
              referance: [
                "لاتجعلوا بيوتكم مقابر إن الشيطان ينفر من البيت الذي تقرأ فيه سورة البقرة  رواه مسلم 1/539 ومما يطرد الشيطان أذكار الصباح والمساء ، والنوم والاستيقاظ ، وأذكار دخول المنزل والخروج منه وأذكار دخول المسجد والخروج منه وغير ذلك من الأذكار المشروعة مثل قراءة آية الكرسي عند النوم ، والآيتين الأخيرتين من سورة  البقرة ، ومن قال لا إله إلا الله وحده لا شريك له ،له الملك وله الحمد وهو على كل شيء قدير مائة مرة كانت له حرزاً من الشيطان يومه كله ،وكذا الأذان يطرد الشيطان",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 49,
        title: "",
        isFavorite: favoriteIds.contains(49),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description:
                  "قدر الله وما شاء فعل ، إذا غلبك أمر فقل :  حسبي الله ونعم الوكيل",
              referance: [
                "المؤمن القوي خير وأحب إلى الله من المؤمن الضعف وفي كل خير ،احرص على ما ينفعك واستعن بالله ولا تعجز وإن أصابك شيء فلا تقل لو أني فعلت كذا وكذا ولكن قل قدر الله وما شاء فعل فإن لو تفتح عمل الشيطان  .مسلم 4/2052",
                "انظر تخريج الأذكار للأرناؤوط ص 106",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
      HisnAlMuslimModel(
        id: 50,
        title: "",
        isFavorite: favoriteIds.contains(50),
        details: HisnAlMuslimModelState.counter(
          [
            HisnAlMuslimDetailsModel(
              descriptionTitle: "",
              description: "",
              referance: [
                "",
              ],
              readCount: 1,
            ),
          ],
        ),
      ),
    ];

    return hisnAlMuslimData;
  }

  static List<int> _getFavoriteIds() {
    final data = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
      defaultValue: [], //[1, 2, 3],
    );

    return (data as List).map((e) => e as int).toList(); // Ensures List<int>
  }

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

    DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldInHisnAlMuslimConstant.favoriteList,
        value: favoriteIds);
  }
}
