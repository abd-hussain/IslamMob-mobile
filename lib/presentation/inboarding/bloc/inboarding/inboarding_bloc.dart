import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';

part 'inboarding_event.dart';
part 'inboarding_state.dart';
part 'inboarding_bloc.freezed.dart';

class InboardingBloc extends Bloc<InboardingEvent, InboardingState> {
  final Box _userBox = Hive.box(DatabaseBoxConstant.userInfo);
  SetupUserSettingUseCase setupUserSettingUseCase = SetupUserSettingUseCase();

  InboardingBloc() : super(const InboardingState()) {
    on<_InitialInBoardingStage>(_initialInBoardingStage);
    on<_ChangeInBoardingStage>(_changeInBoardingStage);
    on<_FinalizeInBoarding>(_finalizeInBoarding);
  }

  /// Retrieves the current inboarding stage from storage
  int _getInBoardingStage() {
    return _userBox.get(
      DatabaseFieldInBoardingStageConstant.inBoardingStage,
      defaultValue: 0,
    ) as int;
  }

  /// Updates a single value in Hive storage
  Future<void> _updateStorage(String key, dynamic value) async {
    await _userBox.put(key, value);
  }

  /// Handles the event to change the inboarding stage
  FutureOr<void> _changeInBoardingStage(
      _ChangeInBoardingStage event, Emitter<InboardingState> emit) async {
    await _updateStorage(
        DatabaseFieldInBoardingStageConstant.inBoardingStage, event.stage);
    emit(state.copyWith(inBoardingStage: event.stage));
  }

  FutureOr<void> _initialInBoardingStage(
      _InitialInBoardingStage event, Emitter<InboardingState> emit) {
    final stage = _getInBoardingStage();
    emit(state.copyWith(inBoardingStage: stage));
  }

  FutureOr<void> _finalizeInBoarding(
      _FinalizeInBoarding event, Emitter<InboardingState> emit) async {
    await _updateStorage(
        DatabaseFieldInBoardingStageConstant.inBoardingfinished, true);
    emit(state.copyWith(finalizedInBoarding: true));
  }
}
