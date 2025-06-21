import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';

part 'salah_config_setting.freezed.dart';

/// A model representing configuration settings for a specific Salah (prayer) time.
///
/// This immutable data class encapsulates the configuration needed to manage
/// and access prayer time settings for individual prayers. It combines:
/// - **Prayer type identification** to specify which prayer this configuration applies to
/// - **State selector function** to extract the relevant DateTime from the calculation state
///
/// This model is used in prayer calculation and configuration systems where
/// different prayers may have different settings, corrections, or special
/// handling requirements. The state selector function provides a clean way
/// to access the specific prayer time from the overall prayer calculation state.
///
/// The configuration enables flexible prayer time management where each prayer
/// can have its own settings while maintaining a unified state management system.
@freezed
class SalahConfigSetting with _$SalahConfigSetting {
  /// Creates a [SalahConfigSetting] instance for prayer-specific configuration.
  ///
  /// Parameters:
  /// - [salahType]: The specific prayer time this configuration applies to
  /// - [stateSelector]: Function to extract the DateTime for this prayer from the calculation state
  ///
  /// The [salahType] identifies which of the five daily prayers (or additional times
  /// like sunrise) this configuration manages. The [stateSelector] function provides
  /// a way to extract the specific prayer time from the comprehensive prayer
  /// calculation state, enabling type-safe access to individual prayer times.
  ///
  /// The function returns a nullable DateTime to handle cases where the prayer
  /// time might not be calculated or available in certain states.
  ///
  /// Example:
  /// ```dart
  /// final fajrConfig = SalahConfigSetting(
  ///   salahType: SalahTimeState.fajir(),
  ///   stateSelector: (state) => state.fajrTime,
  /// );
  ///
  /// final zuhrConfig = SalahConfigSetting(
  ///   salahType: SalahTimeState.zhur(),
  ///   stateSelector: (state) => state.zuhrTime,
  /// );
  /// ```
  factory SalahConfigSetting({
    required SalahTimeState salahType,
    required DateTime? Function(PrayCalculationSettingState) stateSelector,
  }) = _SalahConfigSetting;
}
