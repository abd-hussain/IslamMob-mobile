import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/madhab.dart';

part 'madhab_setting.freezed.dart';

/// A model representing a Madhab (Islamic school of jurisprudence) setting for prayer calculations.
///
/// This immutable data class encapsulates information about different Islamic
/// schools of jurisprudence (Madhabs) that affect prayer time calculations,
/// particularly for the Asr prayer. The main Madhabs are:
///
/// - **Hanafi**: Uses a later time for Asr prayer (shadow length = object length + original shadow)
/// - **Shafi'i/Maliki/Hanbali**: Uses an earlier time for Asr prayer (shadow length = object length + original shadow)
///
/// The Madhab selection is crucial for accurate prayer time calculations as
/// different schools have varying interpretations of when the Asr prayer time
/// begins based on shadow length calculations. This affects the daily prayer
/// schedule for practicing Muslims who follow specific jurisprudential traditions.
///
/// The model is used in settings screens where users can select their preferred
/// Madhab to ensure their prayer times align with their religious tradition
/// and scholarly guidance they follow.
@freezed
class MadhabSetting with _$MadhabSetting {
  /// Creates a [MadhabSetting] instance representing a selectable Madhab option.
  ///
  /// Parameters:
  /// - [name]: The localized display name of the Madhab (e.g., "Hanafi", "Shafi'i")
  /// - [method]: The specific Madhab state/type for prayer calculations
  /// - [isSelected]: Whether this Madhab is currently selected by the user
  ///
  /// The [name] should be localized to help users identify their preferred
  /// school of jurisprudence in their language. The [method] contains the
  /// technical implementation details for prayer time calculations according
  /// to that Madhab's rulings.
  ///
  /// The [isSelected] flag is used in UI components to show which Madhab
  /// is currently active, ensuring users can see their current selection
  /// and make changes if needed.
  ///
  /// Example:
  /// ```dart
  /// final hanafiSetting = MadhabSetting(
  ///   name: 'Hanafi',
  ///   method: MadhabState.hanafi(),
  ///   isSelected: true,
  /// );
  ///
  /// final shafiSetting = MadhabSetting(
  ///   name: 'Shafi\'i',
  ///   method: MadhabState.shafi(),
  ///   isSelected: false,
  /// );
  /// ```
  factory MadhabSetting({
    required String name,
    required MadhabState method,
    required bool isSelected,
  }) = _MadhabSetting;
}
