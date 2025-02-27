import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/domain/usecase/hisn_al_muslim_usecase.dart';

part 'hisn_al_muslim_list_event.dart';
part 'hisn_al_muslim_list_state.dart';
part 'hisn_al_muslim_list_bloc.freezed.dart';

class HisnAlMuslimListBloc
    extends Bloc<HisnAlMuslimListEvent, HisnAlMuslimListState> {
  HisnAlMuslimListBloc() : super(const HisnAlMuslimListState()) {
    on<_Started>(_started);
    on<_UpdateSelectedTab>(_updateSelectedTab);
  }

  FutureOr<void> _started(_Started event, Emitter<HisnAlMuslimListState> emit) {
    emit(state.copyWith(list: HisnAlMuslimUseCase.getHisnAlMuslimList()));
  }

  FutureOr<void> _updateSelectedTab(
      _UpdateSelectedTab event, Emitter<HisnAlMuslimListState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }
}
