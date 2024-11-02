import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/models/app_model/language.dart';
import 'package:islam_app/my_app/islam_mob_app/islam_mob_app.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

part 'change_language_event.dart';
part 'change_language_state.dart';
part 'change_language_bloc.freezed.dart';

class ChangeLanguageBloc
    extends Bloc<ChangeLanguageEvent, ChangeLanguageState> {
  final _box = Hive.box(DatabaseBoxConstant.userInfo);

  ChangeLanguageBloc() : super(const ChangeLanguageState()) {
    on<_ChangeSelectedLanguage>(_changeSelectedLanguage);
  }
  FutureOr<void> _changeSelectedLanguage(
      _ChangeSelectedLanguage event, Emitter<ChangeLanguageState> emit) {
    emit(state.copyWith(selectedLanguage: event.type));
  }

  void setLanguageInStorage(BuildContext context, String langCode) {
    _box.put(DatabaseFieldConstant.selectedLanguage, langCode);
    IslamMobApp.of(context)!.rebuild();
  }
}
