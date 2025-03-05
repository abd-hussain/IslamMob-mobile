import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

part 'hisn_al_muslim_details_event.dart';
part 'hisn_al_muslim_details_state.dart';
part 'hisn_al_muslim_details_bloc.freezed.dart';

class HisnAlMuslimDetailsBloc extends Bloc<HisnAlMuslimDetailsEvent, HisnAlMuslimDetailsState> {
  HisnAlMuslimDetailsBloc() : super(const HisnAlMuslimDetailsState()) {
    on<_FillInitialValue>(_fillInitialValue);
  }

  FutureOr<void> _fillInitialValue(_FillInitialValue event, Emitter<HisnAlMuslimDetailsState> emit) {
    emit(state.copyWith(item: event.item));
  }
}
