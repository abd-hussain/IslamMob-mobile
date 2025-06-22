import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inboarding_bloc.freezed.dart';
part 'inboarding_event.dart';
part 'inboarding_state.dart';

/// BLoC for managing the Islamic app onboarding flow and user introduction.
///
/// This BLoC handles the business logic for guiding new users through
/// the Islamic application's features and initial setup process. It manages:
/// - **Onboarding stage progression** through different introduction screens
/// - **User progress tracking** with persistent storage of completion status
/// - **Analytics integration** for monitoring onboarding effectiveness
/// - **Completion management** marking when users finish the introduction
///
/// The onboarding process is crucial for helping Muslims understand and
/// navigate the Islamic app's features, ensuring they can effectively
/// access prayer times, Quran reading, Islamic calendar, and other
/// spiritual tools provided by the application.
class InboardingBloc extends Bloc<InboardingEvent, InboardingState> {
  /// Creates an [InboardingBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty onboarding state and sets up event
  /// handlers for stage progression, initialization, and completion management.
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
        )
        as int;
  }

  /// Handles the event to change the inboarding stage
  FutureOr<void> _changeInBoardingStage(
    _ChangeInBoardingStage event,
    Emitter<InboardingState> emit,
  ) async {
    await DataBaseManagerBase.saveInDatabase(
      key: DatabaseFieldInBoardingStageConstant.inBoardingStage,
      value: event.stage,
    );

    await FirebaseAnalyticsRepository.logEvent(
      name: "InBoardingStageUpdate",
      parameters: {"inBoardingStage": event.stage},
    );

    emit(state.copyWith(inBoardingStage: event.stage));
  }

  FutureOr<void> _initialInBoardingStage(
    _InitialInBoardingStage event,
    Emitter<InboardingState> emit,
  ) {
    final stage = _getInBoardingStage();
    emit(state.copyWith(inBoardingStage: stage));
  }

  FutureOr<void> _finalizeInBoarding(
    _FinalizeInBoarding event,
    Emitter<InboardingState> emit,
  ) async {
    await DataBaseManagerBase.saveInDatabase(
      key: DatabaseFieldInBoardingStageConstant.finishInBoarding,
      value: true,
    );

    await FirebaseAnalyticsRepository.logEvent(
      name: "InBoardingFinalizeInBoarding",
    );
    emit(state.copyWith(finalizedInBoarding: true));
  }
}
