import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/domain/usecase/hisn_al_muslim_usecase.dart';

part 'hisn_al_muslim_event.dart';
part 'hisn_al_muslim_state.dart';
part 'hisn_al_muslim_bloc.freezed.dart';

class HisnAlMuslimBloc extends Bloc<HisnAlMuslimEvent, HisnAlMuslimState> {
  HisnAlMuslimBloc() : super(const HisnAlMuslimState()) {
    on<_Started>(_started);
  }

  FutureOr<void> _started(_Started event, Emitter<HisnAlMuslimState> emit) {
    emit(state.copyWith(list: HisnAlMuslimUseCase.getHisnAlMuslimList()));
  }
}
