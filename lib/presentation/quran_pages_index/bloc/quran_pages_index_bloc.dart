import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/quran_pages_index_usecase.dart';

part 'quran_pages_index_bloc.freezed.dart';
part 'quran_pages_index_event.dart';
part 'quran_pages_index_state.dart';

/// BLoC for managing the Quran pages index functionality.
///
/// This BLoC handles the state management for the Quran pages index screen,
/// including tab selection, surah list retrieval, search functionality,
/// and bookmark management.
class QuranPagesIndexBloc
    extends Bloc<QuranPagesIndexEvent, QuranPagesIndexState> {
  /// Creates a [QuranPagesIndexBloc] and initializes event handlers.
  ///
  /// Sets up event handlers for tab updates, surah list retrieval,
  /// and search functionality. Also loads bookmarked pages on initialization.
  QuranPagesIndexBloc() : super(const QuranPagesIndexState()) {
    on<_UpdateSelectedTab>(_updateSelectedTab);
    on<_GetSowarList>(_getSowarList);
    on<_Search>(_search);
    _loadBookmarkedPages();
  }

  /// List of page numbers that have been bookmarked by the user.
  ///
  /// This list is loaded from persistent storage and contains
  /// the page numbers of Quran pages that the user has bookmarked.
  List<int> bookmarkedPages = [];

  /// Loads the list of bookmarked pages from persistent storage.
  void _loadBookmarkedPages() {
    final List<dynamic> storedBookmarks =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldQuranCopyConstant.quranKaremBookMarkList,
              defaultValue: [],
            )
            as List<dynamic>;
    if (storedBookmarks.isNotEmpty) {
      bookmarkedPages = storedBookmarks.cast<int>();
    }
  }

  FutureOr<void> _updateSelectedTab(
    _UpdateSelectedTab event,
    Emitter<QuranPagesIndexState> emit,
  ) {
    emit(state.copyWith(selectedIndex: event.index));
  }

  FutureOr<void> _getSowarList(
    _GetSowarList event,
    Emitter<QuranPagesIndexState> emit,
  ) {
    final list = QuranPagesIndexUseCase.getAllSurahNames(
      context: event.context,
    );
    emit(state.copyWith(sowarList: list));
  }

  FutureOr<void> _search(_Search event, Emitter<QuranPagesIndexState> emit) {
    final searchFilteredList =
        QuranPagesIndexUseCase.getAllSurahNames(context: event.context)
            .where(
              (element) =>
                  element.toLowerCase().contains(event.value.toLowerCase()),
            )
            .toList();
    emit(state.copyWith(sowarList: searchFilteredList));
  }
}
