import 'package:islam_app/domain/model/language.dart';

class AppConstant {
  static const String appName = "Islam Mob";
  static const String whatsappNumber = "+962795190663";
  static const String applicationMainURL = "";
  static const String webViewPageUrl = "webViewPageUrl";
  static const String pageTitle = "pageTitle";
  static List<LanguageModel> languages = [
    LanguageModel(
        name: 'العربية',
        flagCode: 'SA',
        selectButtonTitle: "اختيار",
        languageCode: "ar"),
    LanguageModel(
        name: 'English',
        flagCode: 'GB',
        selectButtonTitle: "Select",
        languageCode: "en"),
    LanguageModel(
        name: 'Türkçe',
        flagCode: 'TR',
        selectButtonTitle: "Seçme",
        languageCode: "tr"),
    LanguageModel(
        name: 'فارسی',
        flagCode: 'IR',
        selectButtonTitle: "انتخاب کنید",
        languageCode: "fa"),
    LanguageModel(
        name: 'Français',
        flagCode: 'GF',
        selectButtonTitle: "Sélectionner",
        languageCode: "fr"),
    LanguageModel(
        name: 'Русский',
        flagCode: 'RU',
        selectButtonTitle: "Выбирать",
        languageCode: "ru"),
  ];
  static const String linkedinLink =
      "http://www.linkedin.com/company/islammob/";
  static const String facebookLink = "http://www.facebook.com/islam.mob.appl";
  static const String termsLink =
      "${AppConstant.applicationMainURL}static/web/terms.html";
  static const String privacypolicyLink =
      "${AppConstant.applicationMainURL}static/web/privacypolicy.html";

  static const String androidAppLink =
      "https://play.google.com/store/apps/details?id=com.islammob.app";
  static const String iOSAppLink = "https://apps.apple.com/app/id6670502375";
}