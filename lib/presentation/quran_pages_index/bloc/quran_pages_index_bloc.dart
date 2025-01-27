import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_pages_index_event.dart';
part 'quran_pages_index_state.dart';
part 'quran_pages_index_bloc.freezed.dart';

class QuranPagesIndexBloc extends Bloc<QuranPagesIndexEvent, QuranPagesIndexState> {
  QuranPagesIndexBloc() : super(const QuranPagesIndexState()) {
    on<_UpdateSelectedTab>(_updateSelectedTab);
    _loadBookmarkedPages();
  }

  List<int> bookmarkedPages = [];

  /// Loads the list of bookmarked pages from persistent storage.
  void _loadBookmarkedPages() {
    final List<dynamic> storedBookmarks = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldQuranCopyConstant.quranKaremBookMarkList, defaultValue: []);
    if (storedBookmarks.isNotEmpty) {
      bookmarkedPages = storedBookmarks.cast<int>();
    }
  }

  FutureOr<void> _updateSelectedTab(_UpdateSelectedTab event, Emitter<QuranPagesIndexState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }
}
