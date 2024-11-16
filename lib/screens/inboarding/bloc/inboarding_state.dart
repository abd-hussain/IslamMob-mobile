part of 'inboarding_bloc.dart';

@freezed
class InboardingState with _$InboardingState {
  const factory InboardingState({
    @Default(10) int inBoardingStage,
  }) = _InboardingState;
}
