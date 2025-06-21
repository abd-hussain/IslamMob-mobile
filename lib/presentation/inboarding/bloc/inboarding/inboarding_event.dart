part of 'inboarding_bloc.dart';

/// Events for the Onboarding BLoC.
///
/// This sealed class defines all possible events for managing the Islamic
/// app's onboarding flow and user introduction process. These events handle:
/// - **Initial stage setup** for resuming onboarding progress
/// - **Stage progression** through different introduction screens
/// - **Completion management** for finalizing the onboarding process
///
/// The events support new Muslims and users in understanding the Islamic
/// app's features, ensuring they can effectively navigate prayer times,
/// Quran reading, Islamic calendar, and other spiritual tools.
@freezed
class InboardingEvent with _$InboardingEvent {
  /// Event to initialize the onboarding process with the current stage.
  ///
  /// This event retrieves the user's current onboarding progress from
  /// storage, allowing them to resume from where they left off in the
  /// Islamic app introduction process.
  const factory InboardingEvent.initialStage() = _InitialInBoardingStage;

  /// Event to change the current onboarding stage.
  ///
  /// This event progresses the user through different onboarding screens,
  /// introducing them to various Islamic features and app functionality
  /// while tracking their progress.
  ///
  /// Parameters:
  /// - [stage]: The new onboarding stage number to transition to
  const factory InboardingEvent.changeInBoardingStage({
    required int stage,
  }) = _ChangeInBoardingStage;

  /// Event to finalize and complete the onboarding process.
  ///
  /// This event marks the onboarding as complete, allowing the user to
  /// proceed to the main Islamic app interface with full access to all
  /// spiritual features and content.
  const factory InboardingEvent.finalizeInBoarding() = _FinalizeInBoarding;
}
