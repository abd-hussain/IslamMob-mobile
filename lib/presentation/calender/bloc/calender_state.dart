part of 'calender_bloc.dart';

/// State for the Islamic Calendar BLoC.
///
/// This immutable state class manages the state of the Islamic calendar
/// interface, which displays prayer times organized by Hijri (Islamic lunar)
/// calendar months. The state tracks:
/// - **Calendar data** with prayer times for each day of the month
/// - **Month name** in Islamic calendar format
/// - **Processing status** for loading, success, and error states
///
/// The calendar state enables Muslims to view their prayer schedules within
/// the context of the Islamic calendar system, helping maintain awareness
/// of Islamic dates and religious observances throughout the year.
@freezed
class CalenderState with _$CalenderState {
  /// Creates a [CalenderState] with calendar data and processing status.
  ///
  /// Parameters:
  /// - [list]: List of calendar models containing prayer time data for each day.
  ///   Defaults to an empty list. Each CalenderModel includes date information
  ///   and corresponding prayer times for that specific day.
  /// - [monthName]: Name of the current Islamic month being displayed.
  ///   Defaults to an empty string. Shows the Hijri month name in Arabic
  ///   or localized format for user orientation.
  /// - [status]: Current processing state of the calendar data loading.
  ///   Defaults to loading state. Indicates whether data is being loaded,
  ///   successfully loaded, or encountered an error.
  ///
  /// The state provides comprehensive information for displaying an Islamic
  /// calendar with integrated prayer time information for each day.
  const factory CalenderState({
    @Default([]) List<CalenderModel> list,
    @Default("") String monthName,
    @Default(CalenderProcessState.loading()) CalenderProcessState status,
  }) = _CalenderState;
}

/// Sealed class representing the processing state of calendar data operations.
///
/// This sealed class defines the possible states during calendar data loading
/// and processing operations, providing clear state management for the Islamic
/// calendar interface. It helps manage user experience during data operations
/// and provides appropriate feedback for different processing scenarios.
@freezed
sealed class CalenderProcessState with _$CalenderProcessState {
  const factory CalenderProcessState.loading() = CalenderProcessStateLoading;
  const factory CalenderProcessState.error() = CalenderProcessStateError;
  const factory CalenderProcessState.succss() = CalenderProcessStateSuccss;
}
