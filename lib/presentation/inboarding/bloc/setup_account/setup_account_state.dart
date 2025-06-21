part of 'setup_account_bloc.dart';

/// State for the Setup Account BLoC.
///
/// This immutable state class manages the state of Islamic account setup
/// during the app onboarding process. The state tracks:
/// - **Loading status** for account configuration progress
/// - **Setup completion** for Islamic settings configuration
/// - **Configuration state** for prayer calculation setup
///
/// The state enables Islamic practice by maintaining information about
/// account setup progress, ensuring proper configuration of prayer times,
/// Madhab selection, and other Islamic requirements for accurate religious
/// observance according to the user's geographical location.
@freezed
class SetupAccountState with _$SetupAccountState {
  /// Creates a [SetupAccountState] with Islamic account setup information.
  ///
  /// Parameters:
  /// - [isLoading]: Boolean indicating if account setup is in progress.
  ///   Defaults to false. When true, indicates that Islamic account
  ///   configuration is being processed, including UTC offset setup,
  ///   Madhab selection, prayer calculation method configuration, and
  ///   high latitude rules for accurate prayer time calculations.
  ///
  /// The state provides essential information for tracking Islamic
  /// account setup progress during the onboarding process.
  ///
  /// Example:
  /// ```dart
  /// final state = SetupAccountState(
  ///   isLoading: true,
  /// );
  /// ```
  const factory SetupAccountState({
    @Default(true) bool isLoading,
  }) = _SetupAccountState;
}
