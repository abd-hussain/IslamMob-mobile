part of 'initial_screen_bloc.dart';

@freezed
class InitialScreenState with _$InitialScreenState {
  const factory InitialScreenState({
    LanguageModel? selectedLanguage,
  }) = _InitialScreenState;
}
