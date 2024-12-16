part of 'change_language_bloc.dart';

@freezed
class ChangeLanguageEvent with _$ChangeLanguageEvent {
  const factory ChangeLanguageEvent.changeSelectedCheckBoxLanguage({
    required LanguageModel type,
  }) = _ChangeSelectedCheckBoxLanguage;

  const factory ChangeLanguageEvent.placeNewLanguage(
      {required String langCode}) = _PlaceNewLanguage;
}
