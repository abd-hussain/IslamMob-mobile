import 'dart:async';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_container_event.dart';
part 'main_container_state.dart';
part 'main_container_bloc.freezed.dart';

class MainContainerBloc extends Bloc<MainContainerEvent, MainContainerState> {
  GlobalKey<ConvexAppBarState> appBarKey = GlobalKey<ConvexAppBarState>();

  MainContainerBloc() : super(const MainContainerState()) {
    on<_ChangeSelectedIndex>(_changeSelectedIndex);
  }

  FutureOr<void> _changeSelectedIndex(
      _ChangeSelectedIndex event, Emitter<MainContainerState> emit) {
    emit(state.copyWith(selectedIndex: event.tabIndex));
  }
}
