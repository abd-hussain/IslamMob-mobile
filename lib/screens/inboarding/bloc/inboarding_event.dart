part of 'inboarding_bloc.dart';

@freezed
class InboardingEvent with _$InboardingEvent {
  const factory InboardingEvent.changeInBoardingStage({
    required int stage,
  }) = _ChangeInBoardingStage;
}
