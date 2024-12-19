part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.changeSelectedLanguage({
    required LanguageModel type,
  }) = _ChangeSelectedLanguage;

  const factory LanguageEvent.setupLanguage({
    required BuildContext context,
  }) = _SetupLanguage;
}
