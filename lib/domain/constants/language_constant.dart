import 'package:islam_app/domain/model/language.dart';

class LanguageConstant {
  static List<LanguageModel> languages = [
    LanguageModel(
        name: 'العربية',
        flagCode: 'SA',
        selectButtonTitle: 'اختيار',
        languageCode: 'ar'),
    LanguageModel(
        name: 'English',
        flagCode: 'GB',
        selectButtonTitle: 'Select',
        languageCode: 'en'),
  ];
}
