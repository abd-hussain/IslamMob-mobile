import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

part 'quran_pages_list_event.dart';
part 'quran_pages_list_state.dart';
part 'quran_pages_list_bloc.freezed.dart';

class QuranPagesListBloc
    extends Bloc<QuranPagesListEvent, QuranPagesListState> {
  final _box = Hive.box(DatabaseBoxConstant.userInfo);

  QuranPagesListBloc() : super(const QuranPagesListState()) {
    on<_UpdateBookMarkedPages>(_updateBookMarkedPages);

    _getListOfBookMarkedPages();
  }

  void _getListOfBookMarkedPages() {
    final List<dynamic> bookMarkedPages = _box
        .get(DatabaseFieldConstant.quranKaremBookMarkList, defaultValue: []);

    if (bookMarkedPages.isNotEmpty) {
      List<int> intList = bookMarkedPages.cast<int>();
      add(QuranPagesListEvent.updateBookMarkedPages(intList));
    }
  }

  FutureOr<void> _updateBookMarkedPages(
      _UpdateBookMarkedPages event, Emitter<QuranPagesListState> emit) async {
    await _box.put(DatabaseFieldConstant.quranKaremBookMarkList, event.list);
    emit(state.copyWith(bookmarkedPages: event.list));
  }
}
