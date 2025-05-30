import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hajj_omrah_data.dart';
import 'package:islam_app/domain/usecase/hajj_omrah_usecase.dart';

part 'hajj_omrah_bloc.freezed.dart';
part 'hajj_omrah_event.dart';
part 'hajj_omrah_state.dart';

class HajjOmrahBloc extends Bloc<HajjOmrahEvent, HajjOmrahState> {
  HajjOmrahBloc() : super(const HajjOmrahState()) {
    on<_FillInitialValue>(_fillInitialValue);
    on<_LoadingState>(_loadingState);
  }

  FutureOr<void> _fillInitialValue(
      _FillInitialValue event, Emitter<HajjOmrahState> emit) async {
    switch (event.screenType) {
      case _Hajj():
        emit(state.copyWith(
          listOfItems: await HajjOmrahUsecase.getHajjList(),
          isRtlLanguage: _isRtlLanguage(),
        ));
      case _Omrah():
        emit(state.copyWith(
          listOfItems: await HajjOmrahUsecase.getOmrahList(),
          isRtlLanguage: _isRtlLanguage(),
        ));
    }
  }

  FutureOr<void> _loadingState(event, Emitter<HajjOmrahState> emit) {
    emit(state.copyWith(processState: event.state));
  }

  bool _isRtlLanguage() {
    final String languageCode = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldConstant.userLanguageCode, defaultValue: "en");
    return languageCode == "ar" || languageCode == "fa";
  }
}
