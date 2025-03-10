import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/domain/usecase/hisn_al_muslim_usecase.dart';

part 'hisn_al_muslim_details_bloc.freezed.dart';
part 'hisn_al_muslim_details_event.dart';
part 'hisn_al_muslim_details_state.dart';

class HisnAlMuslimDetailsBloc
    extends Bloc<HisnAlMuslimDetailsEvent, HisnAlMuslimDetailsState> {
  HisnAlMuslimDetailsBloc() : super(const HisnAlMuslimDetailsState()) {
    on<_FillInitialValue>(_fillInitialValue);
    on<_UpdateFavoriteItem>(_updateFavoriteItem);
  }

  FutureOr<void> _fillInitialValue(
      _FillInitialValue event, Emitter<HisnAlMuslimDetailsState> emit) {
    emit(state.copyWith(item: event.item));
  }

  FutureOr<void> _updateFavoriteItem(
      _UpdateFavoriteItem event, Emitter<HisnAlMuslimDetailsState> emit) {
    if (state.item != null) {
      final HisnAlMuslimModel newItem =
          state.item!.copyWith(isFavorite: !state.item!.isFavorite);
      HisnAlMuslimUseCase.addRemoveNewItemToFavoriteList(newItem.id);
      emit(state.copyWith(item: newItem));
    }
  }
}
