import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/my_app/islam_mob_app/islam_mob_app.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

part 'inboarding_event.dart';
part 'inboarding_state.dart';
part 'inboarding_bloc.freezed.dart';

class InboardingBloc extends Bloc<InboardingEvent, InboardingState> {
  final _box = Hive.box(DatabaseBoxConstant.userInfo);

  InboardingBloc() : super(const InboardingState()) {
    on<_ChangeInBoardingStage>(_changeInBoardingStage);

    _handlePagingInitialization();
  }

  void _handlePagingInitialization() {
    final stage = _box.get(DatabaseFieldOnBoardingStageConstant.onBoardingStage,
        defaultValue: 0);
    add(InboardingEvent.changeInBoardingStage(stage: stage));
  }

  FutureOr<void> _changeInBoardingStage(
      _ChangeInBoardingStage event, Emitter<InboardingState> emit) {
    emit(state.copyWith(inBoardingStage: event.stage));
  }

  Future<void> setLanguageInStorage(
      BuildContext context, String langCode) async {
    await _box.put(DatabaseFieldConstant.selectedLanguage, langCode);
    // ignore: use_build_context_synchronously
    IslamMobApp.of(context)!.rebuild();
  }

  Future<void> changeOnBoardingStage(int stage) async {
    await _box.put(DatabaseFieldOnBoardingStageConstant.onBoardingStage, stage);
    add(InboardingEvent.changeInBoardingStage(stage: stage));
  }

  Future<void> finishInBoarding() async {
    await _box.put(
        DatabaseFieldOnBoardingStageConstant.onBoardingfinished, true);
  }
}
