part of 'home_header_bloc.dart';

/// State for the Home Header BLoC.
///
/// This immutable state class manages the state of the header section
/// in the home screen, which displays critical Islamic prayer timing
/// and location information. The state tracks:
/// - **Next prayer type** for displaying the upcoming Islamic prayer
/// - **Next prayer time** for countdown and preparation functionality
/// - **Location context** for accurate prayer time calculations
///
/// The state enables Muslims to quickly access their next prayer
/// information and location details, supporting their Islamic practice
/// with accurate, location-based prayer time display in the home header.
@freezed
abstract class HomeHeaderState with _$HomeHeaderState {
  /// Creates a [HomeHeaderState] with prayer timing and location information.
  ///
  /// Parameters:
  /// - [nextPrayType]: The next upcoming Islamic prayer type.
  ///   Defaults to SalahTimeState.none(). Contains information about the next
  ///   prayer (Fajr, Dhuhr, Asr, Maghrib, Isha) for proper display and countdown.
  /// - [nextPrayDateTime]: The exact date and time of the next prayer.
  ///   Defaults to null. When available, provides precise timing for countdown
  ///   functionality and prayer preparation reminders.
  ///
  /// The state provides essential information for displaying Islamic prayer
  /// timing in the home header with location-based accuracy.
  ///
  /// Example:
  /// ```dart
  /// final state = HomeHeaderState(
  ///   nextPrayType: SalahTimeState.dhuhr(),
  ///   nextPrayDateTime: DateTime(2024, 1, 15, 12, 30),
  /// );
  /// ```
  const factory HomeHeaderState({
    @Default(SalahTimeState.fajir()) SalahTimeState nextPrayType,
    DateTime? nextPrayDateTime,
  }) = _HomeHeaderState;
}
