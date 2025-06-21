part of 'setup_account_bloc.dart';

/// Events for the Setup Account BLoC.
///
/// This sealed class defines all possible events for managing Islamic
/// account setup during the app onboarding process. These events handle:
/// - **Account configuration** with Islamic-specific settings
/// - **Prayer calculation setup** according to geographical location
/// - **Madhab configuration** based on Islamic school of thought
/// - **Time zone setup** for accurate prayer time calculations
///
/// The events support Islamic practice by enabling proper account
/// configuration for accurate prayer times and religious observance
/// according to the user's location and Islamic requirements.
@freezed
class SetupAccountEvent with _$SetupAccountEvent {
  /// Event to trigger the complete Islamic account setup process.
  ///
  /// This event initiates the automatic configuration of all Islamic
  /// account settings including UTC offset, Madhab selection, prayer
  /// calculation method, and high latitude rules for accurate prayer
  /// times according to the user's geographical location.
  const factory SetupAccountEvent.setup() = _Setup;
}
