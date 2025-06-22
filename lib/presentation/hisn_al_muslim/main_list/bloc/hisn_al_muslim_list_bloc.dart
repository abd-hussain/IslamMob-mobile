import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/domain/usecase/hisn_al_muslim_usecase.dart';

part 'hisn_al_muslim_list_bloc.freezed.dart';
part 'hisn_al_muslim_list_event.dart';
part 'hisn_al_muslim_list_state.dart';

/// BLoC for managing the Hisn Al-Muslim supplications list and navigation.
///
/// This BLoC handles the business logic for the main list view of Islamic
/// supplications from Hisn Al-Muslim (Fortress of the Muslim), a comprehensive
/// collection of authentic Islamic prayers and remembrances. It manages:
/// - **Supplication list loading** with categories and search functionality
/// - **Tab navigation** between all supplications and favorites
/// - **Favorite management** for bookmarking important supplications
/// - **Search functionality** for finding specific Islamic prayers
/// - **Language direction** for proper Arabic and RTL text display
///
/// Hisn Al-Muslim contains essential Islamic supplications for various life
/// situations including morning/evening remembrances, travel prayers, eating
/// supplications, and prayers for different occasions. This BLoC provides
/// organized access to this valuable Islamic resource.
class HisnAlMuslimListBloc
    extends Bloc<HisnAlMuslimListEvent, HisnAlMuslimListState> {
  /// Creates a [HisnAlMuslimListBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty supplication list state and sets up
  /// event handlers for loading supplications, managing favorites, search
  /// functionality, and tab navigation.
  HisnAlMuslimListBloc() : super(const HisnAlMuslimListState()) {
    on<_GetListOfAzkar>(_getListOfAzkar);
    on<_UpdateSelectedTab>(_updateSelectedTab);
    on<_AddItemToFavorite>(_addItemToFavorite);
    on<_Search>(_search);
  }

  FutureOr<void> _getListOfAzkar(
    _GetListOfAzkar event,
    Emitter<HisnAlMuslimListState> emit,
  ) async {
    emit(
      state.copyWith(
        list: await HisnAlMuslimUseCase.getHisnAlMuslimList(),
        isRtlLanguage: _isRtlLanguage(),
      ),
    );
  }

  FutureOr<void> _updateSelectedTab(
    _UpdateSelectedTab event,
    Emitter<HisnAlMuslimListState> emit,
  ) {
    emit(state.copyWith(selectedIndex: event.index));
  }

  FutureOr<void> _addItemToFavorite(
    _AddItemToFavorite event,
    Emitter<HisnAlMuslimListState> emit,
  ) async {
    HisnAlMuslimUseCase.addRemoveNewItemToFavoriteList(event.item.id);
    emit(state.copyWith(list: await HisnAlMuslimUseCase.getHisnAlMuslimList()));
  }

  FutureOr<void> _search(
    _Search event,
    Emitter<HisnAlMuslimListState> emit,
  ) async {
    final originalList = await HisnAlMuslimUseCase.getHisnAlMuslimList();
    final searchFilteredList = originalList
        .where(
          (element) =>
              element.title.ar.toLowerCase().contains(
                event.value.toLowerCase(),
              ) ||
              element.title.en.toLowerCase().contains(
                event.value.toLowerCase(),
              ),
        )
        .toList();
    emit(state.copyWith(list: searchFilteredList));
  }

  bool _isRtlLanguage() {
    final String languageCode =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldConstant.userLanguageCode,
              defaultValue: "en",
            )
            as String;
    return languageCode == "ar" || languageCode == "fa";
  }
}
