part of 'inboarding_bloc.dart';

/// State for the Onboarding BLoC.
///
/// This immutable state class manages the state of the Islamic app's
/// onboarding flow and user introduction process. The state tracks:
/// - **Current onboarding stage** for progress through introduction screens
/// - **Completion status** indicating if onboarding has been finalized
/// - **Progress persistence** maintaining user progress across app sessions
///
/// The state enables new Muslims and users to navigate through the Islamic
/// app introduction, learning about prayer times, Quran reading, Islamic
/// calendar, and other spiritual features while maintaining their progress.
@freezed
class InboardingState with _$InboardingState {
  /// Creates an [InboardingState] with onboarding progress and completion status.
  ///
  /// Parameters:
  /// - [inBoardingStage]: The current onboarding stage number.
  ///   Defaults to 0 (initial stage). Represents the user's progress through
  ///   different introduction screens explaining Islamic app features.
  /// - [finalizedInBoarding]: Boolean indicating if onboarding is complete.
  ///   Defaults to false. When true, the user has completed the introduction
  ///   and can access the full Islamic app interface.
  ///
  /// The state provides essential information for managing the onboarding
  /// flow and ensuring users understand the Islamic app's capabilities.
  ///
  /// Example:
  /// ```dart
  /// final state = InboardingState(
  ///   inBoardingStage: 2,
  ///   finalizedInBoarding: false,
  /// );
  /// ```
  const factory InboardingState({
    @Default(10) int inBoardingStage,
    @Default(false) bool finalizedInBoarding,
  }) = _InboardingState;
}
