part of 'inboarding_bloc.dart';

@freezed
class InboardingEvent with _$InboardingEvent {
  const factory InboardingEvent.initialStage() = _InitialInBoardingStage;

  const factory InboardingEvent.changeInBoardingStage({
    required int stage,
  }) = _ChangeInBoardingStage;

  const factory InboardingEvent.finalizeInBoarding() = _FinalizeInBoarding;
}
