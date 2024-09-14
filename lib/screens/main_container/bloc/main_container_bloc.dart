import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_container_event.dart';
part 'main_container_state.dart';
part 'main_container_bloc.freezed.dart';

class MainContainerBloc extends Bloc<MainContainerEvent, MainContainerState> {
  MainContainerBloc() : super(const MainContainerState()) {
    on<_ChangeSelectedIndex>(_changeSelectedIndex);
  }

  FutureOr<void> _changeSelectedIndex(
      _ChangeSelectedIndex event, Emitter<MainContainerState> emit) {
    emit(state.copyWith(selectedIndex: event.tab));
  }

  SelectedTab returnSelectedTypeDependOnIndex(int index) {
    // switch (index) {
    //   case 0:
    //     return SelectedTab.quran;
    //   default:
    return SelectedTab.quran;
    // }
  }

  int getSelectedIndexDependOnTab(SelectedTab tab) {
    // switch (tab) {
    //   case SelectedTab.quran:
    //     return 0;
    //   default:
    return 0;
    // }
  }

  // Future<void> _callRegisterTokenRequest(BuildContext context) async {
  //   //TODO
  // }
}
