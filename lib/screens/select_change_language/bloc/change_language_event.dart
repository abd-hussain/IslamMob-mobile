part of 'change_language_bloc.dart';

@freezed
class ChangeLanguageEvent with _$ChangeLanguageEvent {
  const factory ChangeLanguageEvent.changeSelectedLanguage({
    required LanguageModel type,
  }) = _ChangeSelectedLanguage;
}
