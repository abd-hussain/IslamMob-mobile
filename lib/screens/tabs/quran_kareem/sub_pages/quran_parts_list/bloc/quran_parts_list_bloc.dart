import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_parts_list_event.dart';
part 'quran_parts_list_state.dart';
part 'quran_parts_list_bloc.freezed.dart';

class QuranPartsListBloc
    extends Bloc<QuranPartsListEvent, QuranPartsListState> {
  QuranPartsListBloc() : super(const QuranPartsListState()) {
    on<_UpdateBookMarkedPages>(_updateBookMarkedPages);
  }

  FutureOr<void> _updateBookMarkedPages(
      _UpdateBookMarkedPages event, Emitter<QuranPartsListState> emit) {
    emit(state.copyWith(bookmarkedPages: event.list));
  }
}
