part of 'change_language_bloc.dart';

@freezed
class ChangeLanguageState with _$ChangeLanguageState {
  const factory ChangeLanguageState({
    LanguageModel? selectedLanguage,
  }) = _ChangeLanguageState;
}
