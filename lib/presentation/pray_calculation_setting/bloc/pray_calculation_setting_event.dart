part of 'pray_calculation_setting_bloc.dart';

/// Represents events for managing prayer calculation settings.
///
/// This class defines all possible events that can be triggered
/// to modify prayer calculation settings, including calculation methods,
/// madhab preferences, time zones, and other prayer-related configurations.
@freezed
class PrayCalculationSettingEvent with _$PrayCalculationSettingEvent {
  /// Initializes the prayer calculation settings.
  ///
  /// This event is typically triggered when the settings screen
  /// is first loaded to set up the initial state.
  factory PrayCalculationSettingEvent.setup() = _Setup;

  /// Updates the prayer calculation method.
  ///
  /// Takes a [method] parameter that specifies the new calculation
  /// method to be used for determining prayer times.
  factory PrayCalculationSettingEvent.updateCalculationMethod({
    required PrayCalculationMethodState method,
  }) = _UpdateCalculationMethod;

  /// Updates the madhab (Islamic jurisprudence school) method.
  ///
  /// Takes a [madhab] parameter that specifies the madhab to be
  /// used for prayer calculations, affecting certain prayer timings.
  factory PrayCalculationSettingEvent.updateMadhabMethod({
    required MadhabState madhab,
  }) = _UpdateMadhabMethod;

  /// Updates the time zone offset for prayer calculations.
  ///
  /// Takes a [value] parameter representing the duration offset
  /// from UTC to adjust prayer times for the local time zone.
  factory PrayCalculationSettingEvent.updateTimeZone({
    required Duration value,
  }) = _UpdateTimeZone;

  /// Updates the high latitude calculation method.
  ///
  /// Takes a [state] parameter that specifies how prayer times
  /// should be calculated in high latitude regions where normal
  /// calculation methods may not work properly.
  factory PrayCalculationSettingEvent.updateHightLatitudeCalculation({
    required PrayHightLatitudeCaluclationState state,
  }) = _UpdateHightLatitudeCalculation;

  /// Updates the preview time and azan type for testing purposes.
  ///
  /// Takes a [time] parameter for the preview time and an [azanType]
  /// parameter to specify which prayer type to preview.
  factory PrayCalculationSettingEvent.updateTimeOfPreview({
    required DateTime time,
    required PreviewBoxesState azanType,
  }) = _UpdateTimeOfPreview;

  /// Updates the minute adjustment for a specific azan type.
  ///
  /// Takes [minutes] to adjust the prayer time by the specified
  /// number of minutes, and [azanType] to specify which prayer
  /// time should be adjusted.
  factory PrayCalculationSettingEvent.updateAzanTypeInMin({
    required int minutes,
    required AzanTypeForEditMinState azanType,
  }) = _UpdateAzanTypeInMin;

  /// Saves all the current changes to the prayer calculation settings.
  ///
  /// This event persists all the modified settings and applies
  /// them to the prayer calculation system.
  factory PrayCalculationSettingEvent.saveChanges() = _SaveChanges;
}
