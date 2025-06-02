import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/estekara_data.dart';
import 'package:islam_app/domain/usecase/estekara_usecase.dart';

part 'estekara_bloc.freezed.dart';
part 'estekara_event.dart';
part 'estekara_state.dart';

class EstekaraBloc extends Bloc<EstekaraEvent, EstekaraState> {
  EstekaraBloc() : super(const EstekaraState()) {
    on<_FillInitialValue>(_fillInitialValue);
  }

  FutureOr<void> _fillInitialValue(
      _FillInitialValue event, Emitter<EstekaraState> emit) async {
    emit(state.copyWith(
      listOfItems: await EstekaraUsecase.getEstekaraList(),
      isRtlLanguage: _isRtlLanguage(),
    ));
  }

  bool _isRtlLanguage() {
    final String languageCode = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldConstant.userLanguageCode, defaultValue: "en");
    return languageCode == "ar" || languageCode == "fa";
  }
}
