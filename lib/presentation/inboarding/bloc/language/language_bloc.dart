import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/language.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';
import 'package:islam_app/my_app/islam_mob_app/islam_mob_app.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageState()) {
    on<_ChangeSelectedLanguage>(_changeSelectedLanguage);
    on<_SetupLanguage>(_setupLanguage);
  }

  void _changeSelectedLanguage(
      _ChangeSelectedLanguage event, Emitter<LanguageState> emit) {
    emit(state.copyWith(selectedLanguage: event.type));
  }

  FutureOr<void> _setupLanguage(
      _SetupLanguage event, Emitter<LanguageState> emit) {
    SetupUserSettingUseCase.setLanguage(state.selectedLanguage!.languageCode);
    // Rebuilds the app after language change
    IslamMobApp.of(event.context)?.rebuild();
  }
}
