import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/language.dart';

part 'change_language_bloc.freezed.dart';
part 'change_language_event.dart';
part 'change_language_state.dart';

class ChangeLanguageBloc
    extends Bloc<ChangeLanguageEvent, ChangeLanguageState> {
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
    await DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldConstant.userLanguageCode, value: event.langCode);
  }
}
