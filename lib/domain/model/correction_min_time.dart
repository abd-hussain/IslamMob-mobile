import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_sealed.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';

part 'correction_min_time.freezed.dart';

/// A model representing prayer time correction data for manual adjustments.
///
/// This immutable data class encapsulates information needed for allowing users
/// to manually adjust prayer times by adding or subtracting minutes from the
/// calculated times. This is useful for:
/// - Local variations in prayer time calculations
/// - Personal preferences or local mosque timings
/// - Adjustments based on local Islamic authority recommendations
/// - Compensation for geographical or atmospheric conditions
///
/// Each correction data item represents one prayer time that can be adjusted,
/// providing the UI title, prayer type identifier, and a function to retrieve
/// the current correction value from the application state.
@freezed
abstract class CorrectionMinTimeData with _$CorrectionMinTimeData {
  /// Creates a [CorrectionMinTimeData] instance for prayer time corrections.
  ///
  /// Parameters:
  /// - [title]: The localized display title for the prayer time (e.g., "Fajr", "Zuhr")
  /// - [type]: The specific prayer type identifier for this correction setting
  /// - [getter]: A function that extracts the current correction value (in minutes)
  ///   from the prayer calculation settings state
  ///
  /// The [getter] function allows the UI to retrieve the current correction
  /// value for this specific prayer time from the BLoC state, enabling
  /// the display of current settings and proper state management.
  ///
  /// Example:
  /// ```dart
  /// final fajrCorrection = CorrectionMinTimeData(
  ///   title: 'Fajr',
  ///   type: AzanTypeForEditMinState.fajr(),
  ///   getter: (state) => state.fajrCorrectionMinutes,
  /// );
  /// ```
  factory CorrectionMinTimeData({
    required String title,
    required AzanTypeForEditMinState type,
    required int Function(PrayCalculationSettingState state) getter,
  }) = _CorrectionMinTimeData;
}
