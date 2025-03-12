import 'dart:async';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

part 'main_container_bloc.freezed.dart';
part 'main_container_event.dart';
part 'main_container_state.dart';

class MainContainerBloc extends Bloc<MainContainerEvent, MainContainerState> {
  GlobalKey<ConvexAppBarState> appBarKey = GlobalKey<ConvexAppBarState>();

  MainContainerBloc() : super(const MainContainerState()) {
    on<_ChangeSelectedIndex>(_changeSelectedIndex);
    on<_ChangeScreenAwakness>(_changeScreenAwakness);
  }

  FutureOr<void> _changeSelectedIndex(
      _ChangeSelectedIndex event, Emitter<MainContainerState> emit) {
    emit(state.copyWith(selectedIndex: event.tabIndex));
  }

  FutureOr<void> _changeScreenAwakness(
      _ChangeScreenAwakness event, Emitter<MainContainerState> emit) async {
    if (state.selectedIndex == 1) {
      // The following line will enable the Android and iOS wakelock.
      await WakelockPlus.enable();
    } else {
      // The next line disables the wakelock again.
      await WakelockPlus.disable();
    }
  }
}
