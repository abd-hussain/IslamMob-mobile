part of 'salah_timing_bloc.dart';

/// Events for the Salah Timing BLoC.
///
/// This sealed class defines all possible events for managing Islamic
/// prayer timing calculations and weekly schedules. These events handle:
/// - **Weekly prayer time updates** with complete prayer schedules
/// - **Current prayer type updates** for today's next prayer identification
/// - **Prayer calculation management** for accurate Islamic timing
///
/// The events support the fundamental Islamic functionality of providing
/// accurate prayer times based on geographical location and Islamic
/// calculation methods, ensuring Muslims have proper prayer timing
/// information for their daily spiritual obligations.
@freezed
class SalahTimingEvent with _$SalahTimingEvent {
  /// Event to update the complete prayer timing schedule for the week.
  ///
  /// This event updates the state with a full week's worth of Islamic
  /// prayer times, providing comprehensive scheduling information for
  /// all five daily prayers across seven days.
  ///
  /// Parameters:
  /// - [prayTimeForWeek]: List of prayer timing models for the entire week
  const factory SalahTimingEvent.updateSalahTimingForTheWeek(
    List<PrayTimingDateTimeModel> prayTimeForWeek,
  ) = _UpdateSalahTimingForTheWeek;

  /// Event to update the current prayer type for today.
  ///
  /// This event identifies and updates the next upcoming Islamic prayer
  /// for the current day, enabling proper countdown timers and prayer
  /// preparation functionality.
  ///
  /// Parameters:
  /// - [status]: The current or next prayer type (Fajr, Dhuhr, Asr, Maghrib, Isha)
  factory SalahTimingEvent.updateCurrentSalahType({
    required SalahTimeState status,
  }) = _UpdateCurrentSalahType;
}
