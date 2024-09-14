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
    LanguageModel(name: 'العربية', code: 'SA', selectButtonTitle: "اختيار"),
    LanguageModel(name: 'English', code: 'GB', selectButtonTitle: "Select"),
    LanguageModel(name: 'Türkçe', code: 'TR', selectButtonTitle: "Seçme"),
    LanguageModel(name: 'فارسی', code: 'IR', selectButtonTitle: "انتخاب کنید"),
    LanguageModel(
        name: 'Français', code: 'GF', selectButtonTitle: "Sélectionner"),
    LanguageModel(name: 'Русский', code: 'RU', selectButtonTitle: "Выбирать"),
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
