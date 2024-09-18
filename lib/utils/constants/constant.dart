import 'package:islam_app/models/app_model/language.dart';

class AppConstant {
  static const String appName = "LegalzHub";
  static const String applicationMainURL = ""; //TODO

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
}