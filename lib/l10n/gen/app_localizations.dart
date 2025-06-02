import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of IslamMobLocalizations
/// returned by `IslamMobLocalizations.of(context)`.
///
/// Applications need to include `IslamMobLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: IslamMobLocalizations.localizationsDelegates,
///   supportedLocales: IslamMobLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the IslamMobLocalizations.supportedLocales
/// property.
abstract class IslamMobLocalizations {
  IslamMobLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static IslamMobLocalizations of(BuildContext context) {
    return Localizations.of<IslamMobLocalizations>(context, IslamMobLocalizations)!;
  }

  static const LocalizationsDelegate<IslamMobLocalizations> delegate = _IslamMobLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Islam Mob'**
  String get appName;

  /// No description provided for @appshortdesc.
  ///
  /// In en, this message translates to:
  /// **'For Every Muslim'**
  String get appshortdesc;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @quranSettingLighting.
  ///
  /// In en, this message translates to:
  /// **'Lighting'**
  String get quranSettingLighting;

  /// No description provided for @quranSettingAddBookMark.
  ///
  /// In en, this message translates to:
  /// **'Add Bookmark'**
  String get quranSettingAddBookMark;

  /// No description provided for @quranSettingRemoveBookMark.
  ///
  /// In en, this message translates to:
  /// **'Remove Bookmark'**
  String get quranSettingRemoveBookMark;

  /// No description provided for @quranSettingSupportUs.
  ///
  /// In en, this message translates to:
  /// **'Support Us'**
  String get quranSettingSupportUs;

  /// No description provided for @quranSettingMushaf.
  ///
  /// In en, this message translates to:
  /// **'Mus7af'**
  String get quranSettingMushaf;

  /// No description provided for @reportOrSuggestion.
  ///
  /// In en, this message translates to:
  /// **'Report or Suggest issue in the app'**
  String get reportOrSuggestion;

  /// No description provided for @changeSelectedLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeSelectedLanguage;

  /// No description provided for @quranJuz.
  ///
  /// In en, this message translates to:
  /// **'Juz'**
  String get quranJuz;

  /// No description provided for @quranSorahName1.
  ///
  /// In en, this message translates to:
  /// **'Al-Fatiha'**
  String get quranSorahName1;

  /// No description provided for @quranSorahName2.
  ///
  /// In en, this message translates to:
  /// **'Al-Baqarah'**
  String get quranSorahName2;

  /// No description provided for @quranSorahName3.
  ///
  /// In en, this message translates to:
  /// **'Al-Imran'**
  String get quranSorahName3;

  /// No description provided for @quranSorahName4.
  ///
  /// In en, this message translates to:
  /// **'An-Nisa'**
  String get quranSorahName4;

  /// No description provided for @quranSorahName5.
  ///
  /// In en, this message translates to:
  /// **'Al-Ma\'idah'**
  String get quranSorahName5;

  /// No description provided for @quranSorahName6.
  ///
  /// In en, this message translates to:
  /// **'Al-An\'am'**
  String get quranSorahName6;

  /// No description provided for @quranSorahName7.
  ///
  /// In en, this message translates to:
  /// **'Al-A\'raf'**
  String get quranSorahName7;

  /// No description provided for @quranSorahName8.
  ///
  /// In en, this message translates to:
  /// **'Al-Anfal'**
  String get quranSorahName8;

  /// No description provided for @quranSorahName9.
  ///
  /// In en, this message translates to:
  /// **'At-Tawbah'**
  String get quranSorahName9;

  /// No description provided for @quranSorahName10.
  ///
  /// In en, this message translates to:
  /// **'Yunus'**
  String get quranSorahName10;

  /// No description provided for @quranSorahName11.
  ///
  /// In en, this message translates to:
  /// **'Hud'**
  String get quranSorahName11;

  /// No description provided for @quranSorahName12.
  ///
  /// In en, this message translates to:
  /// **'Yusuf'**
  String get quranSorahName12;

  /// No description provided for @quranSorahName13.
  ///
  /// In en, this message translates to:
  /// **'Ar-Ra\'d'**
  String get quranSorahName13;

  /// No description provided for @quranSorahName14.
  ///
  /// In en, this message translates to:
  /// **'Ibrahim'**
  String get quranSorahName14;

  /// No description provided for @quranSorahName15.
  ///
  /// In en, this message translates to:
  /// **'Al-Hijr'**
  String get quranSorahName15;

  /// No description provided for @quranSorahName16.
  ///
  /// In en, this message translates to:
  /// **'An-Nahl'**
  String get quranSorahName16;

  /// No description provided for @quranSorahName17.
  ///
  /// In en, this message translates to:
  /// **'Al-Isra'**
  String get quranSorahName17;

  /// No description provided for @quranSorahName18.
  ///
  /// In en, this message translates to:
  /// **'Al-Kahf'**
  String get quranSorahName18;

  /// No description provided for @quranSorahName19.
  ///
  /// In en, this message translates to:
  /// **'Maryam'**
  String get quranSorahName19;

  /// No description provided for @quranSorahName20.
  ///
  /// In en, this message translates to:
  /// **'Ta-Ha'**
  String get quranSorahName20;

  /// No description provided for @quranSorahName21.
  ///
  /// In en, this message translates to:
  /// **'Al-Anbiya'**
  String get quranSorahName21;

  /// No description provided for @quranSorahName22.
  ///
  /// In en, this message translates to:
  /// **'Al-Hajj'**
  String get quranSorahName22;

  /// No description provided for @quranSorahName23.
  ///
  /// In en, this message translates to:
  /// **'Al-Mu\'minun'**
  String get quranSorahName23;

  /// No description provided for @quranSorahName24.
  ///
  /// In en, this message translates to:
  /// **'An-Nur'**
  String get quranSorahName24;

  /// No description provided for @quranSorahName25.
  ///
  /// In en, this message translates to:
  /// **'Al-Furqan'**
  String get quranSorahName25;

  /// No description provided for @quranSorahName26.
  ///
  /// In en, this message translates to:
  /// **'Ash-Shu\'ara'**
  String get quranSorahName26;

  /// No description provided for @quranSorahName27.
  ///
  /// In en, this message translates to:
  /// **'An-Naml'**
  String get quranSorahName27;

  /// No description provided for @quranSorahName28.
  ///
  /// In en, this message translates to:
  /// **'Al-Qasas'**
  String get quranSorahName28;

  /// No description provided for @quranSorahName29.
  ///
  /// In en, this message translates to:
  /// **'Al-Ankabut'**
  String get quranSorahName29;

  /// No description provided for @quranSorahName30.
  ///
  /// In en, this message translates to:
  /// **'Ar-Rum'**
  String get quranSorahName30;

  /// No description provided for @quranSorahName31.
  ///
  /// In en, this message translates to:
  /// **'Luqman'**
  String get quranSorahName31;

  /// No description provided for @quranSorahName32.
  ///
  /// In en, this message translates to:
  /// **'As-Sajda'**
  String get quranSorahName32;

  /// No description provided for @quranSorahName33.
  ///
  /// In en, this message translates to:
  /// **'Al-Ahzab'**
  String get quranSorahName33;

  /// No description provided for @quranSorahName34.
  ///
  /// In en, this message translates to:
  /// **'Saba'**
  String get quranSorahName34;

  /// No description provided for @quranSorahName35.
  ///
  /// In en, this message translates to:
  /// **'Fatir'**
  String get quranSorahName35;

  /// No description provided for @quranSorahName36.
  ///
  /// In en, this message translates to:
  /// **'Ya-Sin'**
  String get quranSorahName36;

  /// No description provided for @quranSorahName37.
  ///
  /// In en, this message translates to:
  /// **'As-Saffat'**
  String get quranSorahName37;

  /// No description provided for @quranSorahName38.
  ///
  /// In en, this message translates to:
  /// **'Sad'**
  String get quranSorahName38;

  /// No description provided for @quranSorahName39.
  ///
  /// In en, this message translates to:
  /// **'Az-Zumar'**
  String get quranSorahName39;

  /// No description provided for @quranSorahName40.
  ///
  /// In en, this message translates to:
  /// **'Ghafir'**
  String get quranSorahName40;

  /// No description provided for @quranSorahName41.
  ///
  /// In en, this message translates to:
  /// **'Fussilat'**
  String get quranSorahName41;

  /// No description provided for @quranSorahName42.
  ///
  /// In en, this message translates to:
  /// **'Ash-Shura'**
  String get quranSorahName42;

  /// No description provided for @quranSorahName43.
  ///
  /// In en, this message translates to:
  /// **'Az-Zukhruf'**
  String get quranSorahName43;

  /// No description provided for @quranSorahName44.
  ///
  /// In en, this message translates to:
  /// **'Ad-Dukhan'**
  String get quranSorahName44;

  /// No description provided for @quranSorahName45.
  ///
  /// In en, this message translates to:
  /// **'Al-Jathiya'**
  String get quranSorahName45;

  /// No description provided for @quranSorahName46.
  ///
  /// In en, this message translates to:
  /// **'Al-Ahqaf'**
  String get quranSorahName46;

  /// No description provided for @quranSorahName47.
  ///
  /// In en, this message translates to:
  /// **'Muhammad'**
  String get quranSorahName47;

  /// No description provided for @quranSorahName48.
  ///
  /// In en, this message translates to:
  /// **'Al-Fath'**
  String get quranSorahName48;

  /// No description provided for @quranSorahName49.
  ///
  /// In en, this message translates to:
  /// **'Al-Hujurat'**
  String get quranSorahName49;

  /// No description provided for @quranSorahName50.
  ///
  /// In en, this message translates to:
  /// **'Qaf'**
  String get quranSorahName50;

  /// No description provided for @quranSorahName51.
  ///
  /// In en, this message translates to:
  /// **'Adh-Dhariyat'**
  String get quranSorahName51;

  /// No description provided for @quranSorahName52.
  ///
  /// In en, this message translates to:
  /// **'At-Tur'**
  String get quranSorahName52;

  /// No description provided for @quranSorahName53.
  ///
  /// In en, this message translates to:
  /// **'An-Najm'**
  String get quranSorahName53;

  /// No description provided for @quranSorahName54.
  ///
  /// In en, this message translates to:
  /// **'Al-Qamar'**
  String get quranSorahName54;

  /// No description provided for @quranSorahName55.
  ///
  /// In en, this message translates to:
  /// **'Ar-Rahman'**
  String get quranSorahName55;

  /// No description provided for @quranSorahName56.
  ///
  /// In en, this message translates to:
  /// **'Al-Waqi\'a'**
  String get quranSorahName56;

  /// No description provided for @quranSorahName57.
  ///
  /// In en, this message translates to:
  /// **'Al-Hadid'**
  String get quranSorahName57;

  /// No description provided for @quranSorahName58.
  ///
  /// In en, this message translates to:
  /// **'Al-Mujadila'**
  String get quranSorahName58;

  /// No description provided for @quranSorahName59.
  ///
  /// In en, this message translates to:
  /// **'Al-Hashr'**
  String get quranSorahName59;

  /// No description provided for @quranSorahName60.
  ///
  /// In en, this message translates to:
  /// **'Al-Mumtahina'**
  String get quranSorahName60;

  /// No description provided for @quranSorahName61.
  ///
  /// In en, this message translates to:
  /// **'As-Saff'**
  String get quranSorahName61;

  /// No description provided for @quranSorahName62.
  ///
  /// In en, this message translates to:
  /// **'Al-Jumu\'a'**
  String get quranSorahName62;

  /// No description provided for @quranSorahName63.
  ///
  /// In en, this message translates to:
  /// **'Al-Munafiqun'**
  String get quranSorahName63;

  /// No description provided for @quranSorahName64.
  ///
  /// In en, this message translates to:
  /// **'At-Taghabun'**
  String get quranSorahName64;

  /// No description provided for @quranSorahName65.
  ///
  /// In en, this message translates to:
  /// **'At-Talaq'**
  String get quranSorahName65;

  /// No description provided for @quranSorahName66.
  ///
  /// In en, this message translates to:
  /// **'At-Tahrim'**
  String get quranSorahName66;

  /// No description provided for @quranSorahName67.
  ///
  /// In en, this message translates to:
  /// **'Al-Mulk'**
  String get quranSorahName67;

  /// No description provided for @quranSorahName68.
  ///
  /// In en, this message translates to:
  /// **'Al-Qalam'**
  String get quranSorahName68;

  /// No description provided for @quranSorahName69.
  ///
  /// In en, this message translates to:
  /// **'Al-Haqqah'**
  String get quranSorahName69;

  /// No description provided for @quranSorahName70.
  ///
  /// In en, this message translates to:
  /// **'Al-Ma\'arij'**
  String get quranSorahName70;

  /// No description provided for @quranSorahName71.
  ///
  /// In en, this message translates to:
  /// **'Nuh'**
  String get quranSorahName71;

  /// No description provided for @quranSorahName72.
  ///
  /// In en, this message translates to:
  /// **'Al-Jinn'**
  String get quranSorahName72;

  /// No description provided for @quranSorahName73.
  ///
  /// In en, this message translates to:
  /// **'Al-Muzzammil'**
  String get quranSorahName73;

  /// No description provided for @quranSorahName74.
  ///
  /// In en, this message translates to:
  /// **'Al-Muddathir'**
  String get quranSorahName74;

  /// No description provided for @quranSorahName75.
  ///
  /// In en, this message translates to:
  /// **'Al-Qiyama'**
  String get quranSorahName75;

  /// No description provided for @quranSorahName76.
  ///
  /// In en, this message translates to:
  /// **'Al-Insan'**
  String get quranSorahName76;

  /// No description provided for @quranSorahName77.
  ///
  /// In en, this message translates to:
  /// **'Al-Mursalat'**
  String get quranSorahName77;

  /// No description provided for @quranSorahName78.
  ///
  /// In en, this message translates to:
  /// **'An-Naba'**
  String get quranSorahName78;

  /// No description provided for @quranSorahName79.
  ///
  /// In en, this message translates to:
  /// **'An-Nazi\'at'**
  String get quranSorahName79;

  /// No description provided for @quranSorahName80.
  ///
  /// In en, this message translates to:
  /// **'Abasa'**
  String get quranSorahName80;

  /// No description provided for @quranSorahName81.
  ///
  /// In en, this message translates to:
  /// **'At-Takwir'**
  String get quranSorahName81;

  /// No description provided for @quranSorahName82.
  ///
  /// In en, this message translates to:
  /// **'Al-Infitar'**
  String get quranSorahName82;

  /// No description provided for @quranSorahName83.
  ///
  /// In en, this message translates to:
  /// **'Al-Mutaffifin'**
  String get quranSorahName83;

  /// No description provided for @quranSorahName84.
  ///
  /// In en, this message translates to:
  /// **'Al-Inshiqaq'**
  String get quranSorahName84;

  /// No description provided for @quranSorahName85.
  ///
  /// In en, this message translates to:
  /// **'Al-Buruj'**
  String get quranSorahName85;

  /// No description provided for @quranSorahName86.
  ///
  /// In en, this message translates to:
  /// **'At-Tariq'**
  String get quranSorahName86;

  /// No description provided for @quranSorahName87.
  ///
  /// In en, this message translates to:
  /// **'Al-A\'la'**
  String get quranSorahName87;

  /// No description provided for @quranSorahName88.
  ///
  /// In en, this message translates to:
  /// **'Al-Ghashiyah'**
  String get quranSorahName88;

  /// No description provided for @quranSorahName89.
  ///
  /// In en, this message translates to:
  /// **'Al-Fajr'**
  String get quranSorahName89;

  /// No description provided for @quranSorahName90.
  ///
  /// In en, this message translates to:
  /// **'Al-Balad'**
  String get quranSorahName90;

  /// No description provided for @quranSorahName91.
  ///
  /// In en, this message translates to:
  /// **'Ash-Shams'**
  String get quranSorahName91;

  /// No description provided for @quranSorahName92.
  ///
  /// In en, this message translates to:
  /// **'Al-Lail'**
  String get quranSorahName92;

  /// No description provided for @quranSorahName93.
  ///
  /// In en, this message translates to:
  /// **'Ad-Duhaa'**
  String get quranSorahName93;

  /// No description provided for @quranSorahName94.
  ///
  /// In en, this message translates to:
  /// **'Ash-Sharh'**
  String get quranSorahName94;

  /// No description provided for @quranSorahName95.
  ///
  /// In en, this message translates to:
  /// **'At-Tin'**
  String get quranSorahName95;

  /// No description provided for @quranSorahName96.
  ///
  /// In en, this message translates to:
  /// **'Al-Alaq'**
  String get quranSorahName96;

  /// No description provided for @quranSorahName97.
  ///
  /// In en, this message translates to:
  /// **'Al-Qadr'**
  String get quranSorahName97;

  /// No description provided for @quranSorahName98.
  ///
  /// In en, this message translates to:
  /// **'Al-Bayyina'**
  String get quranSorahName98;

  /// No description provided for @quranSorahName99.
  ///
  /// In en, this message translates to:
  /// **'Az-Zalzalah'**
  String get quranSorahName99;

  /// No description provided for @quranSorahName100.
  ///
  /// In en, this message translates to:
  /// **'Al-Adiyat'**
  String get quranSorahName100;

  /// No description provided for @quranSorahName101.
  ///
  /// In en, this message translates to:
  /// **'Al-Qari\'ah'**
  String get quranSorahName101;

  /// No description provided for @quranSorahName102.
  ///
  /// In en, this message translates to:
  /// **'At-Takathur'**
  String get quranSorahName102;

  /// No description provided for @quranSorahName103.
  ///
  /// In en, this message translates to:
  /// **'Al-Asr'**
  String get quranSorahName103;

  /// No description provided for @quranSorahName104.
  ///
  /// In en, this message translates to:
  /// **'Al-Humazah'**
  String get quranSorahName104;

  /// No description provided for @quranSorahName105.
  ///
  /// In en, this message translates to:
  /// **'Al-Fil'**
  String get quranSorahName105;

  /// No description provided for @quranSorahName106.
  ///
  /// In en, this message translates to:
  /// **'Quraish'**
  String get quranSorahName106;

  /// No description provided for @quranSorahName107.
  ///
  /// In en, this message translates to:
  /// **'Al-Ma\'un'**
  String get quranSorahName107;

  /// No description provided for @quranSorahName108.
  ///
  /// In en, this message translates to:
  /// **'Al-Kawthar'**
  String get quranSorahName108;

  /// No description provided for @quranSorahName109.
  ///
  /// In en, this message translates to:
  /// **'Al-Kafirun'**
  String get quranSorahName109;

  /// No description provided for @quranSorahName110.
  ///
  /// In en, this message translates to:
  /// **'An-Nasr'**
  String get quranSorahName110;

  /// No description provided for @quranSorahName111.
  ///
  /// In en, this message translates to:
  /// **'Al-Masad'**
  String get quranSorahName111;

  /// No description provided for @quranSorahName112.
  ///
  /// In en, this message translates to:
  /// **'Al-Ikhlas'**
  String get quranSorahName112;

  /// No description provided for @quranSorahName113.
  ///
  /// In en, this message translates to:
  /// **'Al-Falaq'**
  String get quranSorahName113;

  /// No description provided for @quranSorahName114.
  ///
  /// In en, this message translates to:
  /// **'An-Nas'**
  String get quranSorahName114;

  /// No description provided for @quranSorah.
  ///
  /// In en, this message translates to:
  /// **'Sorah'**
  String get quranSorah;

  /// No description provided for @reportFooterText.
  ///
  /// In en, this message translates to:
  /// **'We read all of the feedback carefully, but we may not respond to each submission individually.'**
  String get reportFooterText;

  /// No description provided for @reportandsuggestiontitle.
  ///
  /// In en, this message translates to:
  /// **'Report Problem - Suggestion'**
  String get reportandsuggestiontitle;

  /// No description provided for @feedbackmessage.
  ///
  /// In en, this message translates to:
  /// **'Your feedback is important to us, Please describe your issue here'**
  String get feedbackmessage;

  /// No description provided for @pleasecheckyourinternetconnection.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection'**
  String get pleasecheckyourinternetconnection;

  /// No description provided for @pickimageremoveimage.
  ///
  /// In en, this message translates to:
  /// **'Remove image'**
  String get pickimageremoveimage;

  /// No description provided for @pickimagefromstudio.
  ///
  /// In en, this message translates to:
  /// **'Choose from Library'**
  String get pickimagefromstudio;

  /// No description provided for @pickimagefromcamera.
  ///
  /// In en, this message translates to:
  /// **'Choose from Camera'**
  String get pickimagefromcamera;

  /// No description provided for @photosetting.
  ///
  /// In en, this message translates to:
  /// **'Photo Setting'**
  String get photosetting;

  /// No description provided for @setphoto.
  ///
  /// In en, this message translates to:
  /// **'Set Photo'**
  String get setphoto;

  /// No description provided for @quranpages.
  ///
  /// In en, this message translates to:
  /// **'Pages'**
  String get quranpages;

  /// No description provided for @quranprints.
  ///
  /// In en, this message translates to:
  /// **'Quran Prints'**
  String get quranprints;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @resetbrightness.
  ///
  /// In en, this message translates to:
  /// **'Reset Brightness'**
  String get resetbrightness;

  /// No description provided for @jusone.
  ///
  /// In en, this message translates to:
  /// **'Part One'**
  String get jusone;

  /// No description provided for @justwo.
  ///
  /// In en, this message translates to:
  /// **'Part Two'**
  String get justwo;

  /// No description provided for @justhree.
  ///
  /// In en, this message translates to:
  /// **'Part Three'**
  String get justhree;

  /// No description provided for @jusfour.
  ///
  /// In en, this message translates to:
  /// **'Part Four'**
  String get jusfour;

  /// No description provided for @jusfive.
  ///
  /// In en, this message translates to:
  /// **'Part Five'**
  String get jusfive;

  /// No description provided for @jussix.
  ///
  /// In en, this message translates to:
  /// **'Part Six'**
  String get jussix;

  /// No description provided for @jusseven.
  ///
  /// In en, this message translates to:
  /// **'Part Seven'**
  String get jusseven;

  /// No description provided for @juseight.
  ///
  /// In en, this message translates to:
  /// **'Part Eight'**
  String get juseight;

  /// No description provided for @jusnine.
  ///
  /// In en, this message translates to:
  /// **'Part Nine'**
  String get jusnine;

  /// No description provided for @justen.
  ///
  /// In en, this message translates to:
  /// **'Part Ten'**
  String get justen;

  /// No description provided for @juseleven.
  ///
  /// In en, this message translates to:
  /// **'Part Eleven'**
  String get juseleven;

  /// No description provided for @justwelve.
  ///
  /// In en, this message translates to:
  /// **'Part Twelve'**
  String get justwelve;

  /// No description provided for @justhirteen.
  ///
  /// In en, this message translates to:
  /// **'Part Thirteen'**
  String get justhirteen;

  /// No description provided for @jusfourteen.
  ///
  /// In en, this message translates to:
  /// **'Part Fourteen'**
  String get jusfourteen;

  /// No description provided for @jusfifteen.
  ///
  /// In en, this message translates to:
  /// **'Part Fifteen'**
  String get jusfifteen;

  /// No description provided for @jussixteen.
  ///
  /// In en, this message translates to:
  /// **'Part Sixteen'**
  String get jussixteen;

  /// No description provided for @jusseventeen.
  ///
  /// In en, this message translates to:
  /// **'Part Seventeen'**
  String get jusseventeen;

  /// No description provided for @juseightteen.
  ///
  /// In en, this message translates to:
  /// **'Part Eighteen'**
  String get juseightteen;

  /// No description provided for @jusnineteen.
  ///
  /// In en, this message translates to:
  /// **'Part Nineteen'**
  String get jusnineteen;

  /// No description provided for @justtwenty.
  ///
  /// In en, this message translates to:
  /// **'Part Twenty'**
  String get justtwenty;

  /// No description provided for @justwentyone.
  ///
  /// In en, this message translates to:
  /// **'Part Twenty-One'**
  String get justwentyone;

  /// No description provided for @justwentytwo.
  ///
  /// In en, this message translates to:
  /// **'Part Twenty-Two'**
  String get justwentytwo;

  /// No description provided for @justwentythree.
  ///
  /// In en, this message translates to:
  /// **'Part Twenty-Three'**
  String get justwentythree;

  /// No description provided for @justwentyfour.
  ///
  /// In en, this message translates to:
  /// **'Part Twenty-Four'**
  String get justwentyfour;

  /// No description provided for @justwentyfive.
  ///
  /// In en, this message translates to:
  /// **'Part Twenty-Five'**
  String get justwentyfive;

  /// No description provided for @justwentysix.
  ///
  /// In en, this message translates to:
  /// **'Part Twenty-Six'**
  String get justwentysix;

  /// No description provided for @justwentyseven.
  ///
  /// In en, this message translates to:
  /// **'Part Twenty-Seven'**
  String get justwentyseven;

  /// No description provided for @justwentyeight.
  ///
  /// In en, this message translates to:
  /// **'Part Twenty-Eight'**
  String get justwentyeight;

  /// No description provided for @justwentynine.
  ///
  /// In en, this message translates to:
  /// **'Part Twenty-Nine'**
  String get justwentynine;

  /// No description provided for @justhirty.
  ///
  /// In en, this message translates to:
  /// **'Part Thirty'**
  String get justhirty;

  /// No description provided for @downloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading'**
  String get downloading;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @use.
  ///
  /// In en, this message translates to:
  /// **'Use'**
  String get use;

  /// No description provided for @downloadpopupmessage.
  ///
  /// In en, this message translates to:
  /// **'Download can take some time, depending on your internet connection, please wait...'**
  String get downloadpopupmessage;

  /// No description provided for @downloadnopermission.
  ///
  /// In en, this message translates to:
  /// **'No permission to read and write'**
  String get downloadnopermission;

  /// No description provided for @internetconnection.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection'**
  String get internetconnection;

  /// No description provided for @titleofretry.
  ///
  /// In en, this message translates to:
  /// **'retry'**
  String get titleofretry;

  /// No description provided for @intenetshouldbeenableforthispage.
  ///
  /// In en, this message translates to:
  /// **'In Order to Use This Feature You Need To Connect To The Internet'**
  String get intenetshouldbeenableforthispage;

  /// No description provided for @selectprint.
  ///
  /// In en, this message translates to:
  /// **'Select Edition'**
  String get selectprint;

  /// No description provided for @selectprintdetails.
  ///
  /// In en, this message translates to:
  /// **'To be able to read, you must download or choose a specific edition'**
  String get selectprintdetails;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @welcomeback.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeback;

  /// No description provided for @generalsettings.
  ///
  /// In en, this message translates to:
  /// **'General Settings'**
  String get generalsettings;

  /// No description provided for @reachouttous.
  ///
  /// In en, this message translates to:
  /// **'Reach out to us'**
  String get reachouttous;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @rightsreserved.
  ///
  /// In en, this message translates to:
  /// **'@ 2025 IslamMob. All right reserved.'**
  String get rightsreserved;

  /// No description provided for @rateapp.
  ///
  /// In en, this message translates to:
  /// **'Rate Us'**
  String get rateapp;

  /// No description provided for @rateapponstore.
  ///
  /// In en, this message translates to:
  /// **'Rate Application on Store'**
  String get rateapponstore;

  /// No description provided for @rateapponstoremessage.
  ///
  /// In en, this message translates to:
  /// **'If you like this app, please take a little bit of your time to review it ! It really helps us and it shouldn\'t take you more than one minute.'**
  String get rateapponstoremessage;

  /// No description provided for @later.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get later;

  /// No description provided for @privacypolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacypolicy;

  /// No description provided for @termsandconditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsandconditions;

  /// No description provided for @aboutus.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutus;

  /// No description provided for @appmaindesc.
  ///
  /// In en, this message translates to:
  /// **'Islam-Mob is a beautifully designed and intuitive app tailored to the needs of Muslims around the world. With its elegant interface and user-friendly experience. Whether you\'re at home or on the go, Islam-Mob is here to help you stay connected to your faith with ease and convenience'**
  String get appmaindesc;

  /// No description provided for @about1.
  ///
  /// In en, this message translates to:
  /// **'🕌 Dua & Azkar'**
  String get about1;

  /// No description provided for @about2.
  ///
  /// In en, this message translates to:
  /// **'📖 Qur\'an Reading'**
  String get about2;

  /// No description provided for @about3.
  ///
  /// In en, this message translates to:
  /// **'🌙 Islamic Calendar'**
  String get about3;

  /// No description provided for @about4.
  ///
  /// In en, this message translates to:
  /// **'🛕 Find Nearby Mosques'**
  String get about4;

  /// No description provided for @about5.
  ///
  /// In en, this message translates to:
  /// **'🕌 Accurate Prayer Times'**
  String get about5;

  /// No description provided for @about6.
  ///
  /// In en, this message translates to:
  /// **'🔔 Reminders & Notifications'**
  String get about6;

  /// No description provided for @about7.
  ///
  /// In en, this message translates to:
  /// **'📚 Islamic Articles & Resources'**
  String get about7;

  /// No description provided for @appmaindesc2.
  ///
  /// In en, this message translates to:
  /// **'Islam-Mob is more than just an app; it\'s your faithful companion in every aspect of your Islamic journey'**
  String get appmaindesc2;

  /// No description provided for @supportus.
  ///
  /// In en, this message translates to:
  /// **'Support Us'**
  String get supportus;

  /// No description provided for @termstitle1.
  ///
  /// In en, this message translates to:
  /// **'1. Introduction'**
  String get termstitle1;

  /// No description provided for @termsdesc1.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Islam_Mob. By accessing or using this application, you agree to comply with these Terms and Conditions. If you do not agree, please refrain from using the app.'**
  String get termsdesc1;

  /// No description provided for @termstitle2.
  ///
  /// In en, this message translates to:
  /// **'2. Use of the App'**
  String get termstitle2;

  /// No description provided for @termsdesc2.
  ///
  /// In en, this message translates to:
  /// **'Islam_Mob provides Islamic content, including the Quran, prayers, and other resources. This content is intended for personal, non-commercial use. Unauthorized distribution or commercial exploitation is prohibited.'**
  String get termsdesc2;

  /// No description provided for @termstitle3.
  ///
  /// In en, this message translates to:
  /// **'3. User Accounts'**
  String get termstitle3;

  /// No description provided for @termsdesc31.
  ///
  /// In en, this message translates to:
  /// **'- Registration: Users may need to create an account to access certain features. Ensure that the information provided is accurate and up-to-date.'**
  String get termsdesc31;

  /// No description provided for @termsdesc32.
  ///
  /// In en, this message translates to:
  /// **'- Security: You are responsible for maintaining the confidentiality of your account credentials and for all activities under your account.'**
  String get termsdesc32;

  /// No description provided for @termsdesc33.
  ///
  /// In en, this message translates to:
  /// **'- Termination: Islam_Mob reserves the right to suspend or terminate accounts that violate these terms or engage in unauthorized activities.'**
  String get termsdesc33;

  /// No description provided for @termstitle4.
  ///
  /// In en, this message translates to:
  /// **'4. Privacy Policy'**
  String get termstitle4;

  /// No description provided for @termsdesc4.
  ///
  /// In en, this message translates to:
  /// **'We are committed to protecting your privacy. Please review our Privacy Policy to understand how we collect, use, and safeguard your information.'**
  String get termsdesc4;

  /// No description provided for @termstitle5.
  ///
  /// In en, this message translates to:
  /// **'5. Intellectual Property'**
  String get termstitle5;

  /// No description provided for @termsdesc5.
  ///
  /// In en, this message translates to:
  /// **'All content within Islam_Mob, including text, graphics, logos, and software, is the property of Islam_Mob or its content suppliers and is protected by intellectual property laws. Unauthorized use of this content is prohibited.'**
  String get termsdesc5;

  /// No description provided for @termstitle6.
  ///
  /// In en, this message translates to:
  /// **'6. User Conduct'**
  String get termstitle6;

  /// No description provided for @termsdesc61.
  ///
  /// In en, this message translates to:
  /// **'Users agree not to:'**
  String get termsdesc61;

  /// No description provided for @termsdesc62.
  ///
  /// In en, this message translates to:
  /// **'- Engage in activities that violate applicable laws or regulations.'**
  String get termsdesc62;

  /// No description provided for @termsdesc63.
  ///
  /// In en, this message translates to:
  /// **'- Post or transmit harmful, offensive, or inappropriate content.'**
  String get termsdesc63;

  /// No description provided for @termsdesc64.
  ///
  /// In en, this message translates to:
  /// **'- Attempt to interfere with the apps operation or security.'**
  String get termsdesc64;

  /// No description provided for @termstitle7.
  ///
  /// In en, this message translates to:
  /// **'7. Limitation of Liability'**
  String get termstitle7;

  /// No description provided for @termsdesc7.
  ///
  /// In en, this message translates to:
  /// **'Islam_Mob is provided \'as-is\' without warranties of any kind. We are not liable for any damages arising from the use or inability to use the app.'**
  String get termsdesc7;

  /// No description provided for @termstitle8.
  ///
  /// In en, this message translates to:
  /// **'8. Changes to Terms'**
  String get termstitle8;

  /// No description provided for @termsdesc8.
  ///
  /// In en, this message translates to:
  /// **'We may update these Terms and Conditions periodically. Continued use of the app after changes indicates acceptance of the new terms.'**
  String get termsdesc8;

  /// No description provided for @quranSettingIndex.
  ///
  /// In en, this message translates to:
  /// **'Index'**
  String get quranSettingIndex;

  /// No description provided for @quranSowarIndex.
  ///
  /// In en, this message translates to:
  /// **'Sowar'**
  String get quranSowarIndex;

  /// No description provided for @quranPartsIndex.
  ///
  /// In en, this message translates to:
  /// **'Parts'**
  String get quranPartsIndex;

  /// No description provided for @fajr.
  ///
  /// In en, this message translates to:
  /// **'Fajr'**
  String get fajr;

  /// No description provided for @sherooq.
  ///
  /// In en, this message translates to:
  /// **'Sunrise'**
  String get sherooq;

  /// No description provided for @zhur.
  ///
  /// In en, this message translates to:
  /// **'Zhur'**
  String get zhur;

  /// No description provided for @asr.
  ///
  /// In en, this message translates to:
  /// **'Asr'**
  String get asr;

  /// No description provided for @maghrib.
  ///
  /// In en, this message translates to:
  /// **'Maghrib'**
  String get maghrib;

  /// No description provided for @isha.
  ///
  /// In en, this message translates to:
  /// **'Isha'**
  String get isha;

  /// No description provided for @after.
  ///
  /// In en, this message translates to:
  /// **'After'**
  String get after;

  /// No description provided for @saturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get saturday;

  /// No description provided for @sunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sunday;

  /// No description provided for @monday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get monday;

  /// No description provided for @tuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get tuesday;

  /// No description provided for @wednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get wednesday;

  /// No description provided for @thursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get thursday;

  /// No description provided for @friday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get friday;

  /// No description provided for @qurankareem.
  ///
  /// In en, this message translates to:
  /// **'Holy Quran'**
  String get qurankareem;

  /// No description provided for @mawaqeetalsalah.
  ///
  /// In en, this message translates to:
  /// **'Prayer times'**
  String get mawaqeetalsalah;

  /// No description provided for @mawaqeetalsalahdetails.
  ///
  /// In en, this message translates to:
  /// **'Allow your location to be determined to accurately determine prayer times according to your location'**
  String get mawaqeetalsalahdetails;

  /// No description provided for @mawaqeetalsalahdetails2.
  ///
  /// In en, this message translates to:
  /// **'You can change that later from the settings'**
  String get mawaqeetalsalahdetails2;

  /// No description provided for @allowgetlocation.
  ///
  /// In en, this message translates to:
  /// **'Allow to get your location'**
  String get allowgetlocation;

  /// No description provided for @whyyoushouldallowlocation.
  ///
  /// In en, this message translates to:
  /// **'Why should you allow your site to be accessed?'**
  String get whyyoushouldallowlocation;

  /// No description provided for @whyyoushouldallowlocationdetails.
  ///
  /// In en, this message translates to:
  /// **'Without allowing your location, we will not be able to accurately determine prayer times based on your location.'**
  String get whyyoushouldallowlocationdetails;

  /// No description provided for @nolocationPermissionButton.
  ///
  /// In en, this message translates to:
  /// **'Activate from settings'**
  String get nolocationPermissionButton;

  /// No description provided for @locationPermissionSuccses.
  ///
  /// In en, this message translates to:
  /// **'Your location is correct'**
  String get locationPermissionSuccses;

  /// No description provided for @locationPermissionSuccsesButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get locationPermissionSuccsesButton;

  /// No description provided for @allowSendingNotifications.
  ///
  /// In en, this message translates to:
  /// **'Allow sending notifications'**
  String get allowSendingNotifications;

  /// No description provided for @allowSendingNotificationsdetails.
  ///
  /// In en, this message translates to:
  /// **'Allowing notifications will allow us to remind you of prayer, Khatmat, Dhikr, and other important events.'**
  String get allowSendingNotificationsdetails;

  /// No description provided for @allowNotifications.
  ///
  /// In en, this message translates to:
  /// **'Allow notifications'**
  String get allowNotifications;

  /// No description provided for @notNowNotifications.
  ///
  /// In en, this message translates to:
  /// **'Not Now , Will Allow it Later'**
  String get notNowNotifications;

  /// No description provided for @whyyoushouldallownotificationdetails.
  ///
  /// In en, this message translates to:
  /// **'Without allowing notifications, you will not be able to receive important notifications about prayer, Khatmat, Dhikr, and other important events.'**
  String get whyyoushouldallownotificationdetails;

  /// No description provided for @whyyoushouldallownotification.
  ///
  /// In en, this message translates to:
  /// **'Why should you allow notifications?'**
  String get whyyoushouldallownotification;

  /// No description provided for @notificationPermissionSuccses.
  ///
  /// In en, this message translates to:
  /// **'Notifications are enabled'**
  String get notificationPermissionSuccses;

  /// No description provided for @startyourjourney.
  ///
  /// In en, this message translates to:
  /// **'Start your journey'**
  String get startyourjourney;

  /// No description provided for @startPreparingYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Start Preparing Your Account'**
  String get startPreparingYourAccount;

  /// No description provided for @notificationSettings.
  ///
  /// In en, this message translates to:
  /// **'Notification Settings'**
  String get notificationSettings;

  /// No description provided for @shareapp.
  ///
  /// In en, this message translates to:
  /// **'Share App'**
  String get shareapp;

  /// No description provided for @prayCalculationSettings.
  ///
  /// In en, this message translates to:
  /// **'Prayer Calculation Settings'**
  String get prayCalculationSettings;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @tomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// No description provided for @aftertwoday.
  ///
  /// In en, this message translates to:
  /// **'After Two Day'**
  String get aftertwoday;

  /// No description provided for @afterthreeday.
  ///
  /// In en, this message translates to:
  /// **'After Three Day'**
  String get afterthreeday;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @twodaybefore.
  ///
  /// In en, this message translates to:
  /// **'Two Day Before'**
  String get twodaybefore;

  /// No description provided for @threedaybefore.
  ///
  /// In en, this message translates to:
  /// **'Three Day Before'**
  String get threedaybefore;

  /// No description provided for @midnight.
  ///
  /// In en, this message translates to:
  /// **'Midnight'**
  String get midnight;

  /// No description provided for @last3ofnight.
  ///
  /// In en, this message translates to:
  /// **'Last 1/3 of Night'**
  String get last3ofnight;

  /// No description provided for @shareMessageTitle.
  ///
  /// In en, this message translates to:
  /// **'🌿 Elevate Your Soul with IslamMob'**
  String get shareMessageTitle;

  /// No description provided for @shareMessageBody.
  ///
  /// In en, this message translates to:
  /// **'🌿 Read, Remember, and Elevate Your Soul with IslamMob, 📖 A comprehensive app that brings you the Quran, daily supplications, prayers, and much more 💡 Easy to use, inspiring spirituality and filling your heart with peace ☘ 🌷 Download now and bring yourself closer to Allah'**
  String get shareMessageBody;

  /// No description provided for @mathhab.
  ///
  /// In en, this message translates to:
  /// **'Mathhab'**
  String get mathhab;

  /// No description provided for @mathhabdetails.
  ///
  /// In en, this message translates to:
  /// **'Will Change Asr Prayer Time With One Hour Degree'**
  String get mathhabdetails;

  /// No description provided for @mathhab1Shafi.
  ///
  /// In en, this message translates to:
  /// **'Shafi'**
  String get mathhab1Shafi;

  /// No description provided for @mathhab2Hanafi.
  ///
  /// In en, this message translates to:
  /// **'Hanafi'**
  String get mathhab2Hanafi;

  /// No description provided for @calculationMethod.
  ///
  /// In en, this message translates to:
  /// **'Calculation Method'**
  String get calculationMethod;

  /// No description provided for @calculationMethodDetails.
  ///
  /// In en, this message translates to:
  /// **'Change the times of Fajr and Isha prayers according to the degree or angle of Fajr and Isha'**
  String get calculationMethodDetails;

  /// No description provided for @calculationMethod1.
  ///
  /// In en, this message translates to:
  /// **'Jafari / Shia Ithna-Ashari'**
  String get calculationMethod1;

  /// No description provided for @calculationMethod2.
  ///
  /// In en, this message translates to:
  /// **'University of Islamic Sciences, Karachi'**
  String get calculationMethod2;

  /// No description provided for @calculationMethod3.
  ///
  /// In en, this message translates to:
  /// **'Islamic Society of North America'**
  String get calculationMethod3;

  /// No description provided for @calculationMethod4.
  ///
  /// In en, this message translates to:
  /// **'Muslim World League'**
  String get calculationMethod4;

  /// No description provided for @calculationMethod5.
  ///
  /// In en, this message translates to:
  /// **'Umm Al-Qura University, Makkah'**
  String get calculationMethod5;

  /// No description provided for @calculationMethod6.
  ///
  /// In en, this message translates to:
  /// **'Egyptian General Authority of Survey'**
  String get calculationMethod6;

  /// No description provided for @calculationMethod7.
  ///
  /// In en, this message translates to:
  /// **'Institute of Geophysics, University of Tehran'**
  String get calculationMethod7;

  /// No description provided for @calculationMethod8.
  ///
  /// In en, this message translates to:
  /// **'Gulf Region'**
  String get calculationMethod8;

  /// No description provided for @calculationMethod9.
  ///
  /// In en, this message translates to:
  /// **'Kuwait'**
  String get calculationMethod9;

  /// No description provided for @calculationMethod10.
  ///
  /// In en, this message translates to:
  /// **'Qatar'**
  String get calculationMethod10;

  /// No description provided for @calculationMethod11.
  ///
  /// In en, this message translates to:
  /// **'Majlis Ugama Islam Singapura, Singapore'**
  String get calculationMethod11;

  /// No description provided for @calculationMethod12.
  ///
  /// In en, this message translates to:
  /// **'Union Organization islamic de France'**
  String get calculationMethod12;

  /// No description provided for @calculationMethod13.
  ///
  /// In en, this message translates to:
  /// **'Diyanet İşleri Başkanlığı, Turkey'**
  String get calculationMethod13;

  /// No description provided for @calculationMethod14.
  ///
  /// In en, this message translates to:
  /// **'Spiritual Administration of Muslims of Russia'**
  String get calculationMethod14;

  /// No description provided for @calculationMethod15.
  ///
  /// In en, this message translates to:
  /// **'Dubai'**
  String get calculationMethod15;

  /// No description provided for @calculationMethod16.
  ///
  /// In en, this message translates to:
  /// **'Jabatan Kemajuan Islam Malaysia (JAKIM)'**
  String get calculationMethod16;

  /// No description provided for @calculationMethod17.
  ///
  /// In en, this message translates to:
  /// **'Tunisia'**
  String get calculationMethod17;

  /// No description provided for @calculationMethod18.
  ///
  /// In en, this message translates to:
  /// **'Algeria'**
  String get calculationMethod18;

  /// No description provided for @calculationMethod19.
  ///
  /// In en, this message translates to:
  /// **'KEMENAG - Kementerian Agama Republik Indonesia'**
  String get calculationMethod19;

  /// No description provided for @calculationMethod20.
  ///
  /// In en, this message translates to:
  /// **'Morocco'**
  String get calculationMethod20;

  /// No description provided for @calculationMethod21.
  ///
  /// In en, this message translates to:
  /// **'Comunidade Islamica de Lisboa'**
  String get calculationMethod21;

  /// No description provided for @calculationMethod22.
  ///
  /// In en, this message translates to:
  /// **'Ministry of Awqaf, Islamic Affairs and Holy Places, Jordan'**
  String get calculationMethod22;

  /// No description provided for @calculationMethod23.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get calculationMethod23;

  /// No description provided for @timezone.
  ///
  /// In en, this message translates to:
  /// **'Time Zone'**
  String get timezone;

  /// No description provided for @timezoneDetails.
  ///
  /// In en, this message translates to:
  /// **'Control The Time Zone Of The Calculation'**
  String get timezoneDetails;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @factoryReset.
  ///
  /// In en, this message translates to:
  /// **'Factory Reset'**
  String get factoryReset;

  /// No description provided for @deviceTime.
  ///
  /// In en, this message translates to:
  /// **'Device Time'**
  String get deviceTime;

  /// No description provided for @applicationTime.
  ///
  /// In en, this message translates to:
  /// **'Application Time'**
  String get applicationTime;

  /// No description provided for @highLatitude.
  ///
  /// In en, this message translates to:
  /// **'High Latitude'**
  String get highLatitude;

  /// No description provided for @highLatitudeDetails.
  ///
  /// In en, this message translates to:
  /// **'Method of calculation in regions of high latitude'**
  String get highLatitudeDetails;

  /// No description provided for @hightLatitudeCaluclationNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get hightLatitudeCaluclationNone;

  /// No description provided for @hightLatitudeCaluclationAngleBasedMethod.
  ///
  /// In en, this message translates to:
  /// **'Angle based method'**
  String get hightLatitudeCaluclationAngleBasedMethod;

  /// No description provided for @hightLatitudeCaluclationMidnight.
  ///
  /// In en, this message translates to:
  /// **'Midnight'**
  String get hightLatitudeCaluclationMidnight;

  /// No description provided for @hightLatitudeCaluclationOneSeventh.
  ///
  /// In en, this message translates to:
  /// **'1/7 Part of the night'**
  String get hightLatitudeCaluclationOneSeventh;

  /// No description provided for @editPrayTimeMinManual.
  ///
  /// In en, this message translates to:
  /// **'Edit Pray Time In Minutes, Manually'**
  String get editPrayTimeMinManual;

  /// No description provided for @editPrayTimeMinManualDetails.
  ///
  /// In en, this message translates to:
  /// **'Edit Pray Time In Minutes, Manually by degree'**
  String get editPrayTimeMinManualDetails;

  /// No description provided for @fajirCorrectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Fajir correction (minites)'**
  String get fajirCorrectionTitle;

  /// No description provided for @sunriseCorrectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Sunrise correction (minites)'**
  String get sunriseCorrectionTitle;

  /// No description provided for @duhorCorrectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Zhur correction (minites)'**
  String get duhorCorrectionTitle;

  /// No description provided for @asrCorrectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Asr correction (minites)'**
  String get asrCorrectionTitle;

  /// No description provided for @maghribCorrectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Maghrib correction (minites)'**
  String get maghribCorrectionTitle;

  /// No description provided for @ishaCorrectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Isha correction (minites)'**
  String get ishaCorrectionTitle;

  /// No description provided for @midnightCorrectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Midnight correction (minites)'**
  String get midnightCorrectionTitle;

  /// No description provided for @lastThirdOfTheNightCorrectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Last 1/3 of Night correction (minites)'**
  String get lastThirdOfTheNightCorrectionTitle;

  /// No description provided for @notificationSettingQuick.
  ///
  /// In en, this message translates to:
  /// **'Quick Notifications Settings'**
  String get notificationSettingQuick;

  /// No description provided for @notificationSettingPray.
  ///
  /// In en, this message translates to:
  /// **'Pray Notifications Settings'**
  String get notificationSettingPray;

  /// No description provided for @notificationSettingOther.
  ///
  /// In en, this message translates to:
  /// **'Other Notifications Settings'**
  String get notificationSettingOther;

  /// No description provided for @notificationSettingTodayAll.
  ///
  /// In en, this message translates to:
  /// **'Disable All Notifications For Today'**
  String get notificationSettingTodayAll;

  /// No description provided for @notificationSettingThreedayAll.
  ///
  /// In en, this message translates to:
  /// **'Disable All Notifications For Three Today'**
  String get notificationSettingThreedayAll;

  /// No description provided for @notificationSettingWeekAll.
  ///
  /// In en, this message translates to:
  /// **'Disable All Notifications For One Week'**
  String get notificationSettingWeekAll;

  /// No description provided for @notificationSettingFajir.
  ///
  /// In en, this message translates to:
  /// **'Fajir Adhan Notifications'**
  String get notificationSettingFajir;

  /// No description provided for @notificationSettingDuher.
  ///
  /// In en, this message translates to:
  /// **'Duher Adhan Notifications'**
  String get notificationSettingDuher;

  /// No description provided for @notificationSettingAsr.
  ///
  /// In en, this message translates to:
  /// **'Asr Adhan Notifications'**
  String get notificationSettingAsr;

  /// No description provided for @notificationSettingMagrieb.
  ///
  /// In en, this message translates to:
  /// **'Magrieb Adhan Notifications'**
  String get notificationSettingMagrieb;

  /// No description provided for @notificationSettingIsha.
  ///
  /// In en, this message translates to:
  /// **'Isha Adhan Notifications'**
  String get notificationSettingIsha;

  /// No description provided for @azkarTitle.
  ///
  /// In en, this message translates to:
  /// **'Azkar After Salah'**
  String get azkarTitle;

  /// No description provided for @activateAgain.
  ///
  /// In en, this message translates to:
  /// **'Activate Again'**
  String get activateAgain;

  /// No description provided for @youfinishazkarTitle.
  ///
  /// In en, this message translates to:
  /// **'You Finish Azkar'**
  String get youfinishazkarTitle;

  /// No description provided for @mayAllaAcept.
  ///
  /// In en, this message translates to:
  /// **'May Allah accept it'**
  String get mayAllaAcept;

  /// No description provided for @notificationBeforeSalah15Minutes.
  ///
  /// In en, this message translates to:
  /// **'15 Minutes Before Salah'**
  String get notificationBeforeSalah15Minutes;

  /// No description provided for @notificationSettingSunriseTime.
  ///
  /// In en, this message translates to:
  /// **'Sunrise Time Notification'**
  String get notificationSettingSunriseTime;

  /// No description provided for @notificationSettingSunrisePrayer.
  ///
  /// In en, this message translates to:
  /// **'Sunrise Pray Notification'**
  String get notificationSettingSunrisePrayer;

  /// No description provided for @calenderSettings.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calenderSettings;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @quicksettings.
  ///
  /// In en, this message translates to:
  /// **'Quick Settings'**
  String get quicksettings;

  /// No description provided for @qurancopytitle.
  ///
  /// In en, this message translates to:
  /// **'From this screen, you can download one or more copy of the Holy Quran to use it offline inside the application'**
  String get qurancopytitle;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'skip'**
  String get skip;

  /// No description provided for @openApp.
  ///
  /// In en, this message translates to:
  /// **'Open App'**
  String get openApp;

  /// No description provided for @jom3aDoaaTimeTitle.
  ///
  /// In en, this message translates to:
  /// **'The Hour of Answered Prayers on Friday'**
  String get jom3aDoaaTimeTitle;

  /// No description provided for @jom3adoaaTimeMessage.
  ///
  /// In en, this message translates to:
  /// **'Do not miss the hour of acceptance; increase your supplications and send blessings upon the Prophet ﷺ. During this hour, there is no Muslim servant who asks Allah for anything without Him granting it.'**
  String get jom3adoaaTimeMessage;

  /// No description provided for @jom3AlkahfReminderTitle.
  ///
  /// In en, this message translates to:
  /// **'The virtue of reading Surah Al-Kahf on Friday'**
  String get jom3AlkahfReminderTitle;

  /// No description provided for @jom3AlkahfReminderMessage.
  ///
  /// In en, this message translates to:
  /// **'The Messenger of Allah (peace be upon him) said: “The nearest the Lord is to His servant is in the last part of the night.” Seize these hours with supplication and prayer, for they are open doors of mercy.'**
  String get jom3AlkahfReminderMessage;

  /// No description provided for @midnightTimeTitle.
  ///
  /// In en, this message translates to:
  /// **'Don’t miss Qiyam al-Layl!'**
  String get midnightTimeTitle;

  /// No description provided for @midnightTimeMessage.
  ///
  /// In en, this message translates to:
  /// **'Don’t miss Qiyam al-Layl! The Messenger of Allah (peace be upon him) said: “The nearest the Lord is to His servant is in the last part of the night.” Seize these hours with supplication and prayer, for they are open doors of mercy.'**
  String get midnightTimeMessage;

  /// No description provided for @reminderToOpenTheApp1Title.
  ///
  /// In en, this message translates to:
  /// **'Post-Prayer Adhkar'**
  String get reminderToOpenTheApp1Title;

  /// No description provided for @reminderToOpenTheApp1Message.
  ///
  /// In en, this message translates to:
  /// **'Don\'t forget to open the app to read the adhkar and supplications after your prayer; they bring comfort to the heart and peace to the soul.'**
  String get reminderToOpenTheApp1Message;

  /// No description provided for @reminderToOpenTheApp2Title.
  ///
  /// In en, this message translates to:
  /// **'Enable Upcoming Notifications'**
  String get reminderToOpenTheApp2Title;

  /// No description provided for @reminderToOpenTheApp2Message.
  ///
  /// In en, this message translates to:
  /// **'Just open the app to ensure the Adhan and future prayer alerts continue—no further setup needed!'**
  String get reminderToOpenTheApp2Message;

  /// No description provided for @rightNowSunriseMessage.
  ///
  /// In en, this message translates to:
  /// **'It\'s sunrise time now'**
  String get rightNowSunriseMessage;

  /// No description provided for @rightNowWarningMessage.
  ///
  /// In en, this message translates to:
  /// **'Be aware of the approaching prayer'**
  String get rightNowWarningMessage;

  /// No description provided for @rightNowIshaMessage.
  ///
  /// In en, this message translates to:
  /// **'It\'s time for Isha prayer now'**
  String get rightNowIshaMessage;

  /// No description provided for @rightNowMagrebMessage.
  ///
  /// In en, this message translates to:
  /// **'It\'s time for Magreb prayer now'**
  String get rightNowMagrebMessage;

  /// No description provided for @rightNowAsrMessage.
  ///
  /// In en, this message translates to:
  /// **'It\'s time for Asr prayer now'**
  String get rightNowAsrMessage;

  /// No description provided for @rightNowDuherMessage.
  ///
  /// In en, this message translates to:
  /// **'It\'s time for Duher prayer now'**
  String get rightNowDuherMessage;

  /// No description provided for @rightNowFajirMessage.
  ///
  /// In en, this message translates to:
  /// **'It\'s time for Fajir prayer now'**
  String get rightNowFajirMessage;

  /// No description provided for @remeningTimeSunriseMessage.
  ///
  /// In en, this message translates to:
  /// **'Left to sunrise'**
  String get remeningTimeSunriseMessage;

  /// No description provided for @remeningTimeIshaMessage.
  ///
  /// In en, this message translates to:
  /// **'Left to Isha'**
  String get remeningTimeIshaMessage;

  /// No description provided for @remeningTimeMagrebMessage.
  ///
  /// In en, this message translates to:
  /// **'Left to Magreb'**
  String get remeningTimeMagrebMessage;

  /// No description provided for @remeningTimeAsrMessage.
  ///
  /// In en, this message translates to:
  /// **'Left to Asr'**
  String get remeningTimeAsrMessage;

  /// No description provided for @remeningTimeDuherMessage.
  ///
  /// In en, this message translates to:
  /// **'Left to Duher'**
  String get remeningTimeDuherMessage;

  /// No description provided for @remeningTimeFajirMessage.
  ///
  /// In en, this message translates to:
  /// **'Left to Fajir'**
  String get remeningTimeFajirMessage;

  /// No description provided for @nextSalahTimeSunriseMessage.
  ///
  /// In en, this message translates to:
  /// **'Sunrise time'**
  String get nextSalahTimeSunriseMessage;

  /// No description provided for @nextSalahTimeIshaMessage.
  ///
  /// In en, this message translates to:
  /// **'Isha prayer time'**
  String get nextSalahTimeIshaMessage;

  /// No description provided for @nextSalahTimeMagrebMessage.
  ///
  /// In en, this message translates to:
  /// **'Magreb prayer time'**
  String get nextSalahTimeMagrebMessage;

  /// No description provided for @nextSalahTimeAsrMessage.
  ///
  /// In en, this message translates to:
  /// **'Asr prayer time'**
  String get nextSalahTimeAsrMessage;

  /// No description provided for @nextSalahTimeDuherMessage.
  ///
  /// In en, this message translates to:
  /// **'Duher prayer time'**
  String get nextSalahTimeDuherMessage;

  /// No description provided for @nextSalahTimeFajirMessage.
  ///
  /// In en, this message translates to:
  /// **'Fajir prayer time'**
  String get nextSalahTimeFajirMessage;

  /// No description provided for @versionDialogUpdateNow.
  ///
  /// In en, this message translates to:
  /// **'Update Now'**
  String get versionDialogUpdateNow;

  /// No description provided for @versionDialogSkipForNow.
  ///
  /// In en, this message translates to:
  /// **'Skip For Now'**
  String get versionDialogSkipForNow;

  /// No description provided for @versionDialogUpdateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Update Available'**
  String get versionDialogUpdateAvailable;

  /// No description provided for @versionDialogNewVersion.
  ///
  /// In en, this message translates to:
  /// **'New Version'**
  String get versionDialogNewVersion;

  /// No description provided for @versionDialogUpdateSecondeSubTitle.
  ///
  /// In en, this message translates to:
  /// **'of Islam Mob is available now'**
  String get versionDialogUpdateSecondeSubTitle;

  /// No description provided for @sharepopupmessage.
  ///
  /// In en, this message translates to:
  /// **'Share the app now with your friends and family, and you will be rewarded, God willing'**
  String get sharepopupmessage;

  /// No description provided for @sharepopuptitle.
  ///
  /// In en, this message translates to:
  /// **'The Messenger of Allah (ﷺ) said: Whoever guides someone to goodness will have a reward like the one who does it'**
  String get sharepopuptitle;

  /// No description provided for @notificationSettingJomAlkahf.
  ///
  /// In en, this message translates to:
  /// **'Friday reminder notifications for Surah Al-Kahf'**
  String get notificationSettingJomAlkahf;

  /// No description provided for @notificationSettingJom3aDoaa.
  ///
  /// In en, this message translates to:
  /// **'Friday reminder notifications for du’aa (supplication)'**
  String get notificationSettingJom3aDoaa;

  /// No description provided for @notificationSettingQeyamAlLayel.
  ///
  /// In en, this message translates to:
  /// **'Night prayer reminder notifications (Qiyam al-Layl)'**
  String get notificationSettingQeyamAlLayel;

  /// No description provided for @donatepopuptitle.
  ///
  /// In en, this message translates to:
  /// **'Support the team'**
  String get donatepopuptitle;

  /// No description provided for @donatepopupmessage.
  ///
  /// In en, this message translates to:
  /// **'This program is non-profit. We cover operating costs by displaying ads, so it’s important to receive this support to ensure continuity'**
  String get donatepopupmessage;

  /// No description provided for @openAdvertisment.
  ///
  /// In en, this message translates to:
  /// **'Show advertisement'**
  String get openAdvertisment;

  /// No description provided for @noAdsToShow.
  ///
  /// In en, this message translates to:
  /// **'No advertisement to show now'**
  String get noAdsToShow;

  /// No description provided for @donatepopupmessage2.
  ///
  /// In en, this message translates to:
  /// **'May Allah reward you'**
  String get donatepopupmessage2;

  /// No description provided for @qiblaFinder.
  ///
  /// In en, this message translates to:
  /// **'Qibla Finder'**
  String get qiblaFinder;

  /// No description provided for @allowLocations.
  ///
  /// In en, this message translates to:
  /// **'Allow access to location'**
  String get allowLocations;

  /// No description provided for @allowLocationDetails.
  ///
  /// In en, this message translates to:
  /// **'Enabling location allows us to accurately calculate prayer times, which is very important for the app'**
  String get allowLocationDetails;

  /// No description provided for @changeLocationSettings.
  ///
  /// In en, this message translates to:
  /// **'Change Location'**
  String get changeLocationSettings;

  /// No description provided for @onboardingSetupAccountMessage1.
  ///
  /// In en, this message translates to:
  /// **'Alhamdulillah, you’re ready to begin!'**
  String get onboardingSetupAccountMessage1;

  /// No description provided for @onboardingSetupAccountMessage2.
  ///
  /// In en, this message translates to:
  /// **'May Allah accept your efforts and grant you ease on this journey'**
  String get onboardingSetupAccountMessage2;

  /// No description provided for @onboardingSetupAccountMessage3.
  ///
  /// In en, this message translates to:
  /// **'Please keep us in your prayers. We promise to keep improving and serving you better'**
  String get onboardingSetupAccountMessage3;

  /// No description provided for @hesenAlMuslim.
  ///
  /// In en, this message translates to:
  /// **'Hisn Al Muslim'**
  String get hesenAlMuslim;

  /// No description provided for @selectLocationManuallyDetails.
  ///
  /// In en, this message translates to:
  /// **'since you don’t want to allow location, we will use the location that you will select in here, please note Adhan and dates be wrong and that\'s happen because you select that manually'**
  String get selectLocationManuallyDetails;

  /// No description provided for @choose.
  ///
  /// In en, this message translates to:
  /// **'choose'**
  String get choose;

  /// No description provided for @afghanistan.
  ///
  /// In en, this message translates to:
  /// **'Afghanistan'**
  String get afghanistan;

  /// No description provided for @albania.
  ///
  /// In en, this message translates to:
  /// **'Albania'**
  String get albania;

  /// No description provided for @algeria.
  ///
  /// In en, this message translates to:
  /// **'Algeria'**
  String get algeria;

  /// No description provided for @azerbaijan.
  ///
  /// In en, this message translates to:
  /// **'Azerbaijan'**
  String get azerbaijan;

  /// No description provided for @bahrain.
  ///
  /// In en, this message translates to:
  /// **'Bahrain'**
  String get bahrain;

  /// No description provided for @bangladesh.
  ///
  /// In en, this message translates to:
  /// **'Bangladesh'**
  String get bangladesh;

  /// No description provided for @brunei.
  ///
  /// In en, this message translates to:
  /// **'Brunei'**
  String get brunei;

  /// No description provided for @burkinaFaso.
  ///
  /// In en, this message translates to:
  /// **'burkina Faso'**
  String get burkinaFaso;

  /// No description provided for @chad.
  ///
  /// In en, this message translates to:
  /// **'Chad'**
  String get chad;

  /// No description provided for @comoros.
  ///
  /// In en, this message translates to:
  /// **'Comoros'**
  String get comoros;

  /// No description provided for @djibouti.
  ///
  /// In en, this message translates to:
  /// **'Djibouti'**
  String get djibouti;

  /// No description provided for @egypt.
  ///
  /// In en, this message translates to:
  /// **'Egypt'**
  String get egypt;

  /// No description provided for @gambia.
  ///
  /// In en, this message translates to:
  /// **'Gambia'**
  String get gambia;

  /// No description provided for @guinea.
  ///
  /// In en, this message translates to:
  /// **'Guinea'**
  String get guinea;

  /// No description provided for @indonesia.
  ///
  /// In en, this message translates to:
  /// **'Indonesia'**
  String get indonesia;

  /// No description provided for @iran.
  ///
  /// In en, this message translates to:
  /// **'Iran'**
  String get iran;

  /// No description provided for @iraq.
  ///
  /// In en, this message translates to:
  /// **'Iraq'**
  String get iraq;

  /// No description provided for @jordan.
  ///
  /// In en, this message translates to:
  /// **'Jordan'**
  String get jordan;

  /// No description provided for @kazakhstan.
  ///
  /// In en, this message translates to:
  /// **'Kazakhstan'**
  String get kazakhstan;

  /// No description provided for @kuwait.
  ///
  /// In en, this message translates to:
  /// **'Kuwait'**
  String get kuwait;

  /// No description provided for @kyrgyzstan.
  ///
  /// In en, this message translates to:
  /// **'Kyrgyzstan'**
  String get kyrgyzstan;

  /// No description provided for @lebanon.
  ///
  /// In en, this message translates to:
  /// **'Lebanon'**
  String get lebanon;

  /// No description provided for @libya.
  ///
  /// In en, this message translates to:
  /// **'Libya'**
  String get libya;

  /// No description provided for @malaysia.
  ///
  /// In en, this message translates to:
  /// **'Malaysia'**
  String get malaysia;

  /// No description provided for @maldives.
  ///
  /// In en, this message translates to:
  /// **'Maldives'**
  String get maldives;

  /// No description provided for @mali.
  ///
  /// In en, this message translates to:
  /// **'Mali'**
  String get mali;

  /// No description provided for @mauritania.
  ///
  /// In en, this message translates to:
  /// **'Mauritania'**
  String get mauritania;

  /// No description provided for @morocco.
  ///
  /// In en, this message translates to:
  /// **'Morocco'**
  String get morocco;

  /// No description provided for @nigeria.
  ///
  /// In en, this message translates to:
  /// **'Nigeria'**
  String get nigeria;

  /// No description provided for @oman.
  ///
  /// In en, this message translates to:
  /// **'Oman'**
  String get oman;

  /// No description provided for @pakistan.
  ///
  /// In en, this message translates to:
  /// **'Pakistan'**
  String get pakistan;

  /// No description provided for @palestine.
  ///
  /// In en, this message translates to:
  /// **'Palestine'**
  String get palestine;

  /// No description provided for @qatar.
  ///
  /// In en, this message translates to:
  /// **'Qatar'**
  String get qatar;

  /// No description provided for @saudiArabia.
  ///
  /// In en, this message translates to:
  /// **'Saudi Arabia'**
  String get saudiArabia;

  /// No description provided for @senegal.
  ///
  /// In en, this message translates to:
  /// **'Senegal'**
  String get senegal;

  /// No description provided for @somalia.
  ///
  /// In en, this message translates to:
  /// **'Somalia'**
  String get somalia;

  /// No description provided for @sudan.
  ///
  /// In en, this message translates to:
  /// **'Sudan'**
  String get sudan;

  /// No description provided for @syria.
  ///
  /// In en, this message translates to:
  /// **'Syria'**
  String get syria;

  /// No description provided for @tajikistan.
  ///
  /// In en, this message translates to:
  /// **'Tajikistan'**
  String get tajikistan;

  /// No description provided for @tunisia.
  ///
  /// In en, this message translates to:
  /// **'Tunisia'**
  String get tunisia;

  /// No description provided for @turkey.
  ///
  /// In en, this message translates to:
  /// **'Turkey'**
  String get turkey;

  /// No description provided for @turkmenistan.
  ///
  /// In en, this message translates to:
  /// **'Turkmenistan'**
  String get turkmenistan;

  /// No description provided for @unitedArabEmirates.
  ///
  /// In en, this message translates to:
  /// **'United Arab Emirates'**
  String get unitedArabEmirates;

  /// No description provided for @uzbekistan.
  ///
  /// In en, this message translates to:
  /// **'Uzbekistan'**
  String get uzbekistan;

  /// No description provided for @yemen.
  ///
  /// In en, this message translates to:
  /// **'Yemen'**
  String get yemen;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @selectLocationManually.
  ///
  /// In en, this message translates to:
  /// **'Select location manually'**
  String get selectLocationManually;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @noItemToShow.
  ///
  /// In en, this message translates to:
  /// **'No Item To Show'**
  String get noItemToShow;

  /// No description provided for @searchField.
  ///
  /// In en, this message translates to:
  /// **'Search ...'**
  String get searchField;

  /// No description provided for @repetition.
  ///
  /// In en, this message translates to:
  /// **'Repetition'**
  String get repetition;

  /// No description provided for @shareByContact.
  ///
  /// In en, this message translates to:
  /// **'Contacts Share'**
  String get shareByContact;

  /// No description provided for @shareOnSocialMedia.
  ///
  /// In en, this message translates to:
  /// **'Social Media Share'**
  String get shareOnSocialMedia;

  /// No description provided for @invite_friends.
  ///
  /// In en, this message translates to:
  /// **'Invite Friends'**
  String get invite_friends;

  /// No description provided for @no_contacts_to_show.
  ///
  /// In en, this message translates to:
  /// **'no contacts to show'**
  String get no_contacts_to_show;

  /// No description provided for @noContactsPermissionButton.
  ///
  /// In en, this message translates to:
  /// **'Activate from settings'**
  String get noContactsPermissionButton;

  /// No description provided for @no_permission_for_contact.
  ///
  /// In en, this message translates to:
  /// **'no permission to read your contacts list'**
  String get no_permission_for_contact;

  /// No description provided for @asma2_allaah_alhusna.
  ///
  /// In en, this message translates to:
  /// **'99 Names'**
  String get asma2_allaah_alhusna;

  /// No description provided for @quransettings.
  ///
  /// In en, this message translates to:
  /// **'Holy Quran Settings'**
  String get quransettings;

  /// No description provided for @quranSettingSavedBookMark.
  ///
  /// In en, this message translates to:
  /// **'All BookMarks'**
  String get quranSettingSavedBookMark;

  /// No description provided for @quranSettingTapTutorial.
  ///
  /// In en, this message translates to:
  /// **'You can easily show or hide the toolbars at any time by simply tapping on the screen'**
  String get quranSettingTapTutorial;

  /// No description provided for @tasbeeh.
  ///
  /// In en, this message translates to:
  /// **'tasbeeh'**
  String get tasbeeh;

  /// No description provided for @counterResetDaily.
  ///
  /// In en, this message translates to:
  /// **'The counter resets daily'**
  String get counterResetDaily;

  /// No description provided for @thisPlaceStillUnderDevelopment.
  ///
  /// In en, this message translates to:
  /// **'Still Under Development'**
  String get thisPlaceStillUnderDevelopment;

  /// No description provided for @azkarAfterSalah.
  ///
  /// In en, this message translates to:
  /// **'Azkar After Salah'**
  String get azkarAfterSalah;

  /// No description provided for @alhajjTitle.
  ///
  /// In en, this message translates to:
  /// **'Hajj'**
  String get alhajjTitle;

  /// No description provided for @omrahTitle.
  ///
  /// In en, this message translates to:
  /// **'Omrah'**
  String get omrahTitle;

  /// No description provided for @hajjDescription.
  ///
  /// In en, this message translates to:
  /// **'Muslims pray toward the direction of Makkah five times every day, seeking forgiveness and repentance, desiring the grace and benevolence of Allah, the Almighty, and hoping when visiting it to seek its goodness and the love of Allah and His Messenger (peace be upon him), who said: I swear by Allah that you are the best part of Allah’s earth and the part dearest to Him. Allah earned it a sanctity that preserves and protects it. He has exalted it above all other lands and mosques. The Prophet (peace be upon him) said: Allah made this town sacred on the day He created the heavens and the earth, so it is sacred by the sacredness conferred on it by Allah until the Day of Resurrection'**
  String get hajjDescription;

  /// No description provided for @omrahDescription.
  ///
  /// In en, this message translates to:
  /// **'Umrah means visit or destination. According to Sharia, Umrah entails visiting the Sacred House, Tawaf, and Saa\'i with known conditions. The Prophet (peace be upon him) completed Umrah four times throughout his lifetime. Umrah can be performed by any time of year. It is obligatory once in a lifetime, according to the Almighty’s saying: \'And Complete Hajj and ‘Umrah for Allah\''**
  String get omrahDescription;

  /// No description provided for @estekaraTitle.
  ///
  /// In en, this message translates to:
  /// **'Salat al-Istikharah'**
  String get estekaraTitle;
}

class _IslamMobLocalizationsDelegate extends LocalizationsDelegate<IslamMobLocalizations> {
  const _IslamMobLocalizationsDelegate();

  @override
  Future<IslamMobLocalizations> load(Locale locale) {
    return SynchronousFuture<IslamMobLocalizations>(lookupIslamMobLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_IslamMobLocalizationsDelegate old) => false;
}

IslamMobLocalizations lookupIslamMobLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return IslamMobLocalizationsAr();
    case 'en': return IslamMobLocalizationsEn();
  }

  throw FlutterError(
    'IslamMobLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
