part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    LanguageModel? selectedLanguage,
  }) = _LanguageState;
}
