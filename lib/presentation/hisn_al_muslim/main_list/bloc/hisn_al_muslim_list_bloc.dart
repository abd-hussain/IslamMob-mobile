import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/domain/usecase/hisn_al_muslim_usecase.dart';

part 'hisn_al_muslim_list_bloc.freezed.dart';
part 'hisn_al_muslim_list_event.dart';
part 'hisn_al_muslim_list_state.dart';

class HisnAlMuslimListBloc
    extends Bloc<HisnAlMuslimListEvent, HisnAlMuslimListState> {
  HisnAlMuslimListBloc() : super(const HisnAlMuslimListState()) {
    on<_GetListOfAzkar>(_getListOfAzkar);
    on<_UpdateSelectedTab>(_updateSelectedTab);
    on<_AddItemToFavorite>(_addItemToFavorite);
    on<_Search>(_search);
  }

  FutureOr<void> _getListOfAzkar(
      _GetListOfAzkar event, Emitter<HisnAlMuslimListState> emit) async {
    emit(state.copyWith(
        list: await HisnAlMuslimUseCase.getHisnAlMuslimList(),
        isRtlLanguage: _isRtlLanguage()));
  }

  FutureOr<void> _updateSelectedTab(
      _UpdateSelectedTab event, Emitter<HisnAlMuslimListState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }

  FutureOr<void> _addItemToFavorite(
      _AddItemToFavorite event, Emitter<HisnAlMuslimListState> emit) async {
    HisnAlMuslimUseCase.addRemoveNewItemToFavoriteList(event.item.id);
    emit(state.copyWith(list: await HisnAlMuslimUseCase.getHisnAlMuslimList()));
  }

  FutureOr<void> _search(
      _Search event, Emitter<HisnAlMuslimListState> emit) async {
    final originalList = await HisnAlMuslimUseCase.getHisnAlMuslimList();
    final searchFilteredList = originalList
        .where((element) =>
            element.title.ar
                .toLowerCase()
                .contains(event.value.toLowerCase()) ||
            element.title.en.toLowerCase().contains(event.value.toLowerCase()))
        .toList();
    emit(state.copyWith(list: searchFilteredList));
  }

  bool _isRtlLanguage() {
    final String languageCode = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldConstant.userLanguageCode, defaultValue: "en");
    return languageCode == "ar" || languageCode == "fa";
  }
}
