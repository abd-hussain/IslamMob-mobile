part of 'salah_timing_bloc.dart';

/// State for the Salah Timing BLoC.
///
/// This immutable state class manages the state of Islamic prayer timing
/// calculations and weekly schedules. The state tracks:
/// - **Weekly prayer times** with complete schedules for all five daily prayers
/// - **Current prayer type** for today's next prayer identification
/// - **Prayer calculation data** for accurate Islamic timing display
///
/// The state enables Muslims to access comprehensive prayer timing information
/// for the entire week while maintaining current prayer status for proper
/// countdown functionality and prayer preparation reminders.
@freezed
abstract class SalahTimingState with _$SalahTimingState {
  /// Creates a [SalahTimingState] with prayer timing and schedule information.
  ///
  /// Parameters:
  /// - [prayTimeForWeek]: List of prayer timing models for the entire week.
  ///   Defaults to an empty list. Contains comprehensive prayer schedules
  ///   for all five daily prayers (Fajr, Dhuhr, Asr, Maghrib, Isha) across
  ///   seven days with accurate timing calculations.
  /// - [currentSalahType]: The current or next prayer type for today.
  ///   Defaults to SalahTimeState.none(). Identifies the next upcoming
  ///   Islamic prayer for countdown timers and preparation functionality.
  ///
  /// The state provides essential information for displaying Islamic prayer
  /// timing with weekly schedules and current prayer status tracking.
  ///
  /// Example:
  /// ```dart
  /// final state = SalahTimingState(
  ///   prayTimeForWeek: [
  ///     PrayTimingDateTimeModel(
  ///       date: DateTime(2024, 1, 15),
  ///       fajr: DateTime(2024, 1, 15, 5, 30),
  ///       dhuhr: DateTime(2024, 1, 15, 12, 15),
  ///       // ... other prayer times
  ///     ),
  ///   ],
  ///   currentSalahType: SalahTimeState.dhuhr(),
  /// );
  /// ```
  const factory SalahTimingState({
    @Default(SalahTimeState.none()) SalahTimeState currentSalahType,
    @Default([]) List<PrayTimingDateTimeModel> prayTimeForWeek,
  }) = _SalahTimingState;
}
