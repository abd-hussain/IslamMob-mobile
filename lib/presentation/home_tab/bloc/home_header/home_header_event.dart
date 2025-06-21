part of 'home_header_bloc.dart';

/// Events for the Home Header BLoC.
///
/// This sealed class defines all possible events for managing the header
/// section of the home screen, which displays Islamic prayer timing and
/// location information. These events handle:
/// - **Prayer time preparation** for calculating next prayer information
/// - **Prayer timing updates** for displaying accurate Islamic prayer times
/// - **Location-based calculations** for proper prayer time determination
///
/// The events support the critical Islamic functionality of displaying
/// accurate prayer times and location information in the home header,
/// helping Muslims stay informed about their prayer obligations.
@freezed
class HomeHeaderEvent with _$HomeHeaderEvent {
  /// Event to prepare and calculate the next Islamic prayer type and time.
  ///
  /// This event triggers the calculation of the next upcoming prayer,
  /// handling day transitions and ensuring accurate prayer time information
  /// is available for display in the home header.
  factory HomeHeaderEvent.prepareNextSalahTypeAndTime() =
      _PrepareNextSalahTypeAndTime;

  /// Event to update the prayer type and time information in the state.
  ///
  /// This event updates the home header with specific prayer timing
  /// information, including the prayer type and exact time for proper
  /// countdown and preparation display.
  ///
  /// Parameters:
  /// - [nextPrayType]: The next Islamic prayer type (Fajr, Dhuhr, Asr, Maghrib, Isha)
  /// - [nextPrayDateTime]: The exact date and time of the next prayer
  factory HomeHeaderEvent.updateSalahTypeAndTime({
    required SalahTimeState nextPrayType,
    required DateTime? nextPrayDateTime,
  }) = _UpdateSalahTypeAndTime;
}
