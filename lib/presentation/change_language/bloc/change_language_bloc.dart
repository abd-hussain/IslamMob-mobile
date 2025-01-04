import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/models/language.dart';
import 'package:islam_app/core/constants/database_constant.dart';

part 'change_language_event.dart';
part 'change_language_state.dart';
part 'change_language_bloc.freezed.dart';

class ChangeLanguageBloc
    extends Bloc<ChangeLanguageEvent, ChangeLanguageState> {
  final _box = Hive.box(DatabaseBoxConstant.userInfo);

  ChangeLanguageBloc() : super(const ChangeLanguageState()) {
    on<_ChangeSelectedCheckBoxLanguage>(_changeSelectedCheckBoxLanguage);
    on<_PlaceNewLanguage>(_placeNewLanguage);
  }
  FutureOr<void> _changeSelectedCheckBoxLanguage(
      _ChangeSelectedCheckBoxLanguage event,
      Emitter<ChangeLanguageState> emit) {
    emit(state.copyWith(selectedLanguage: event.type));
  }

  FutureOr<void> _placeNewLanguage(
      _PlaceNewLanguage event, Emitter<ChangeLanguageState> emit) async {
    await _box.put(DatabaseFieldConstant.userLanguageCode, event.langCode);
  }
}
