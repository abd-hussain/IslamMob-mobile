import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_pages_list_event.dart';
part 'quran_pages_list_state.dart';
part 'quran_pages_list_bloc.freezed.dart';

class QuranPagesListBloc
    extends Bloc<QuranPagesListEvent, QuranPagesListState> {
  QuranPagesListBloc() : super(const QuranPagesListState()) {
    on<_ChangeMarkerStatus>(_changeMarkerStatus);
  }

  FutureOr<void> _changeMarkerStatus(
      _ChangeMarkerStatus event, Emitter<QuranPagesListState> emit) {
    emit(state.copyWith(markered: event.status));
  }
}
