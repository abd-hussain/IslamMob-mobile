import 'package:freezed_annotation/freezed_annotation.dart';

part 'calender.freezed.dart';

/// A model representing a calendar day with Islamic prayer times and date information.
///
/// This immutable data class encapsulates all the information needed to display
/// a single day in an Islamic calendar, including:
/// - Day identification and date information in both Hijri and Gregorian calendars
/// - Complete prayer time schedule for all five daily prayers
/// - Sunrise time for additional Islamic time calculations
/// - Current day indicator for highlighting today's date
///
/// The model is primarily used in calendar views where users can see prayer
/// times for different days, plan their prayer schedule, and navigate between
/// dates while maintaining awareness of both Islamic and Gregorian calendar systems.
@freezed
class CalenderModel with _$CalenderModel {
  /// Creates a [CalenderModel] instance representing a calendar day with prayer times.
  ///
  /// Parameters:
  /// - [dayName]: The name of the day (e.g., "Monday", "الاثنين")
  /// - [dateHijri]: The date in Hijri (Islamic) calendar format
  /// - [dateMilady]: The date in Gregorian (Miladi) calendar format
  /// - [fajirTime]: The time for Fajr prayer (dawn prayer)
  /// - [sunriseTime]: The time of sunrise (used for Islamic calculations)
  /// - [zhurTime]: The time for Zuhr prayer (noon prayer)
  /// - [asrTime]: The time for Asr prayer (afternoon prayer)
  /// - [magribTime]: The time for Maghrib prayer (sunset prayer)
  /// - [ishaTime]: The time for Isha prayer (night prayer)
  /// - [isToday]: Whether this date represents the current day
  ///
  /// All time parameters should be formatted as user-readable strings
  /// (e.g., "5:30 AM", "17:30") according to the user's locale and preferences.
  ///
  /// Example:
  /// ```dart
  /// final calendarDay = CalenderModel(
  ///   dayName: 'Monday',
  ///   dateHijri: '15 Ramadan 1445',
  ///   dateMilady: 'March 25, 2024',
  ///   fajirTime: '5:30 AM',
  ///   sunriseTime: '6:45 AM',
  ///   zhurTime: '12:15 PM',
  ///   asrTime: '3:30 PM',
  ///   magribTime: '6:45 PM',
  ///   ishaTime: '8:00 PM',
  ///   isToday: true,
  /// );
  /// ```
  factory CalenderModel({
    required String dayName,
    required String dateHijri,
    required String dateMilady,
    required String fajirTime,
    required String sunriseTime,
    required String zhurTime,
    required String asrTime,
    required String magribTime,
    required String ishaTime,
    required bool isToday,
  }) = _CalenderModel;
}
