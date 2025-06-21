import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/high_latitude_method.dart';
import 'package:islam_app/domain/sealed/madhab.dart';
import 'package:islam_app/domain/sealed/pray_calculation_method.dart';

part 'pray_country_setting.freezed.dart';

/// A model representing prayer calculation settings specific to a country or region.
///
/// This immutable data class encapsulates the Islamic prayer time calculation
/// parameters that are typically standardized for specific countries or regions.
/// It combines multiple calculation factors that affect prayer time accuracy:
///
/// - **Country identification** for regional defaults
/// - **Madhab (school of jurisprudence)** for Asr prayer calculation
/// - **Calculation method** used by local Islamic authorities
/// - **High latitude adjustments** for extreme geographical locations
///
/// Different countries often have official Islamic authorities that recommend
/// specific calculation parameters. This model allows the app to provide
/// country-specific defaults while still allowing user customization.
///
/// The settings ensure that prayer times align with local Islamic authority
/// recommendations and account for geographical factors that affect accuracy.
@freezed
class PrayCountrySetting with _$PrayCountrySetting {
  /// Creates a [PrayCountrySetting] instance for country-specific prayer calculations.
  ///
  /// Parameters:
  /// - [countryCode]: The ISO country code (e.g., "SA", "US", "GB")
  /// - [madhab]: The Islamic school of jurisprudence for Asr calculation
  /// - [calculationMethod]: The prayer time calculation method used in this country
  /// - [hightLatitudeCaluclationState]: High latitude adjustment method if applicable
  ///
  /// The [countryCode] should follow ISO 3166-1 alpha-2 standards for consistency.
  /// The [madhab] affects Asr prayer timing based on shadow calculations.
  /// The [calculationMethod] should match the official method used by the country's
  /// Islamic authority. The [hightLatitudeCaluclationState] is particularly
  /// important for northern countries with extreme seasonal daylight variations.
  ///
  /// Example:
  /// ```dart
  /// final saudiSettings = PrayCountrySetting(
  ///   countryCode: 'SA',
  ///   madhab: MadhabState.hanafi(),
  ///   calculationMethod: PrayCalculationMethodState.ummAlQura(),
  ///   hightLatitudeCaluclationState: PrayHightLatitudeCaluclationState.none(),
  /// );
  /// ```
  factory PrayCountrySetting({
    required String countryCode,
    required MadhabState madhab,
    required PrayCalculationMethodState calculationMethod,
    required PrayHightLatitudeCaluclationState hightLatitudeCaluclationState,
  }) = _PrayCountrySetting;
}
