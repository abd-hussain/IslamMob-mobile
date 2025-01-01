import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';

part 'inboarding_event.dart';
part 'inboarding_state.dart';
part 'inboarding_bloc.freezed.dart';

class InboardingBloc extends Bloc<InboardingEvent, InboardingState> {
  SetupUserSettingUseCase setupUserSettingUseCase = SetupUserSettingUseCase();

  InboardingBloc() : super(const InboardingState()) {
    on<_InitialInBoardingStage>(_initialInBoardingStage);
    on<_ChangeInBoardingStage>(_changeInBoardingStage);
    on<_FinalizeInBoarding>(_finalizeInBoarding);
  }

  /// Retrieves the current inboarding stage from storage
  int _getInBoardingStage() {
    return DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldInBoardingStageConstant.inBoardingStage,
      defaultValue: 0,
    ) as int;
  }

  /// Handles the event to change the inboarding stage
  FutureOr<void> _changeInBoardingStage(
      _ChangeInBoardingStage event, Emitter<InboardingState> emit) async {
    await DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldInBoardingStageConstant.inBoardingStage,
        value: event.stage);
    emit(state.copyWith(inBoardingStage: event.stage));
  }

  FutureOr<void> _initialInBoardingStage(
      _InitialInBoardingStage event, Emitter<InboardingState> emit) {
    final stage = _getInBoardingStage();
    emit(state.copyWith(inBoardingStage: stage));
  }

  FutureOr<void> _finalizeInBoarding(
      _FinalizeInBoarding event, Emitter<InboardingState> emit) async {
    await DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldInBoardingStageConstant.inBoardingfinished,
        value: true);
    emit(state.copyWith(finalizedInBoarding: true));
  }
}
