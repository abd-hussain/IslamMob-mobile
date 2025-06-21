import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/pray_calculation_method.dart';

part 'calculation_method_setting.freezed.dart';

/// A model representing a prayer time calculation method setting.
///
/// This immutable data class encapsulates information about different Islamic
/// prayer time calculation methods used by various Islamic organizations and
/// countries. Each calculation method has specific parameters for determining
/// prayer times based on astronomical calculations.
///
/// Common calculation methods include:
/// - Muslim World League
/// - Egyptian General Authority of Survey
/// - University of Islamic Sciences, Karachi
/// - Umm Al-Qura University, Makkah
/// - Islamic Society of North America (ISNA)
/// - And various regional methods
///
/// The model is used in settings screens where users can select their
/// preferred calculation method based on their location or religious authority.
@freezed
class CalculationMethodSetting with _$CalculationMethodSetting {
  /// Creates a [CalculationMethodSetting] instance.
  ///
  /// Parameters:
  /// - [name]: The display name of the calculation method (localized)
  /// - [method]: The specific calculation method state/type
  /// - [isSelected]: Whether this method is currently selected by the user
  ///
  /// Example:
  /// ```dart
  /// final setting = CalculationMethodSetting(
  ///   name: 'Muslim World League',
  ///   method: PrayCalculationMethodState.muslimWorldLeague(),
  ///   isSelected: true,
  /// );
  /// ```
  factory CalculationMethodSetting({
    required String name,
    required PrayCalculationMethodState method,
    required bool isSelected,
  }) = _CalculationMethodSetting;
}
