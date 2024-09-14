part of 'initial_screen_bloc.dart';

@freezed
class InitialScreenEvent with _$InitialScreenEvent {
  const factory InitialScreenEvent.changeSelectedLanguage({
    required LanguageModel type,
  }) = _ChangeSelectedLanguage;
}
