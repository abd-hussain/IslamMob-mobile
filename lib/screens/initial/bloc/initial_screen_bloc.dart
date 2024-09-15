import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/islam_mob_app/islam_mob_app.dart';
import 'package:islam_app/models/app_model/language.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

part 'initial_screen_event.dart';
part 'initial_screen_state.dart';
part 'initial_screen_bloc.freezed.dart';

class InitialScreenBloc extends Bloc<InitialScreenEvent, InitialScreenState> {
  InitialScreenBloc() : super(const InitialScreenState()) {
    on<_ChangeSelectedLanguage>(_changeSelectedLanguage);
  }
  final box = Hive.box(DatabaseBoxConstant.userInfo);

  List<LanguageModel> languages = [
    LanguageModel(
        name: 'العربية',
        flagCode: 'SA',
        selectButtonTitle: "اختيار",
        languageCode: "ar"),
    LanguageModel(
        name: 'English',
        flagCode: 'GB',
        selectButtonTitle: "Select",
        languageCode: "en"),
    LanguageModel(
        name: 'Türkçe',
        flagCode: 'TR',
        selectButtonTitle: "Seçme",
        languageCode: "tr"),
    LanguageModel(
        name: 'فارسی',
        flagCode: 'IR',
        selectButtonTitle: "انتخاب کنید",
        languageCode: "fa"),
    LanguageModel(
        name: 'Français',
        flagCode: 'GF',
        selectButtonTitle: "Sélectionner",
        languageCode: "fr"),
    LanguageModel(
        name: 'Русский',
        flagCode: 'RU',
        selectButtonTitle: "Выбирать",
        languageCode: "ru"),
  ];

  FutureOr<void> _changeSelectedLanguage(
      _ChangeSelectedLanguage event, Emitter<InitialScreenState> emit) {
    emit(state.copyWith(selectedLanguage: event.type));
  }

  void setLanguageInStorage(BuildContext context, String langCode) {
    box.put(DatabaseFieldConstant.selectedLanguage, langCode);
    IslamMobApp.of(context)!.rebuild();
  }
}
