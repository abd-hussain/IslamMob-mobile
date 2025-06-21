part of 'calender_bloc.dart';

/// Events for the Islamic Calendar BLoC.
///
/// This sealed class defines all possible events for managing the Islamic
/// calendar interface, which displays prayer times organized by Hijri
/// (Islamic lunar) calendar months. These events handle:
/// - **Prayer time preparation** for calendar display
/// - **Month navigation** between Islamic calendar months
/// - **Initial setup** of calendar interface
///
/// The events support the Islamic calendar functionality that helps Muslims
/// view prayer times in the context of the Islamic lunar calendar system,
/// maintaining awareness of Islamic dates and religious observances.
@freezed
class CalenderEvent with _$CalenderEvent {
  /// Event to prepare and load prayer timing data for the current month.
  ///
  /// This event triggers the calculation and loading of prayer times for
  /// all days in the current Islamic month, organizing them for calendar
  /// display. It ensures users can view comprehensive prayer schedules
  /// within the Islamic calendar context.
  const factory CalenderEvent.prepareSalahTiming() = _PrepareSalahTiming;

  /// Event to initialize the month name display for the first time.
  ///
  /// This event sets up the initial Islamic month name display when the
  /// calendar screen is first loaded, ensuring proper Hijri month
  /// identification for user orientation within the Islamic calendar.
  const factory CalenderEvent.fillMonthNameFirstTime() =
      _FillMonthNameFirstTime;

  /// Event to navigate to the next Islamic month in the calendar.
  ///
  /// This event handles forward navigation through the Hijri calendar,
  /// updating both the month display and the associated prayer time data
  /// for the new month.
  ///
  /// Parameters:
  /// - [currentMonthName]: The name of the current Islamic month
  const factory CalenderEvent.nextMonth(String currentMonthName) = _NextMonth;

  /// Event to navigate to the previous Islamic month in the calendar.
  ///
  /// This event handles backward navigation through the Hijri calendar,
  /// updating both the month display and the associated prayer time data
  /// for the previous month.
  ///
  /// Parameters:
  /// - [currentMonthName]: The name of the current Islamic month
  const factory CalenderEvent.previousMonth(String currentMonthName) =
      _PreviousMonth;
}
