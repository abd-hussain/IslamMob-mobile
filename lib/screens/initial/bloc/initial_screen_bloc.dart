import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/models/app_model/language.dart';

part 'initial_screen_event.dart';
part 'initial_screen_state.dart';
part 'initial_screen_bloc.freezed.dart';

class InitialScreenBloc extends Bloc<InitialScreenEvent, InitialScreenState> {
  InitialScreenBloc() : super(const InitialScreenState()) {
    on<_ChangeSelectedLanguage>(_changeSelectedLanguage);
  }

  List<LanguageModel> languages = [
    LanguageModel(name: 'العربية', code: 'SA'),
    LanguageModel(name: 'English', code: 'GB'),
    LanguageModel(name: 'Türkçe', code: 'TR'),
    LanguageModel(name: 'فارسی', code: 'IR'),
    LanguageModel(name: 'Français', code: 'GF'),
    LanguageModel(name: 'Русский', code: 'RU'),
  ];

  FutureOr<void> _changeSelectedLanguage(
      _ChangeSelectedLanguage event, Emitter<InitialScreenState> emit) {
    emit(state.copyWith(selectedLanguage: event.type));
  }
}
