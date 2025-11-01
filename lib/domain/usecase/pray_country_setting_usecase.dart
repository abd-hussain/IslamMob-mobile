import 'package:islam_app/domain/model/pray_country_setting.dart';
import 'package:islam_app/domain/sealed/high_latitude_method.dart';
import 'package:islam_app/domain/sealed/madhab.dart';
import 'package:islam_app/domain/sealed/pray_calculation_method.dart';

/// Use case for managing country-specific Islamic prayer calculation settings.
///
/// This class provides a comprehensive database of prayer calculation settings
/// for countries worldwide, ensuring accurate prayer times based on local
/// Islamic authorities and regional preferences. Each country configuration includes:
/// - **Madhab selection** (Hanafi or Shafi'i) based on regional traditions
/// - **Calculation method** from local Islamic authorities or organizations
/// - **High latitude adjustments** for countries with extreme seasonal variations
///
/// The settings are based on:
/// - Official Islamic authorities in each country
/// - Regional Islamic organizations and councils
/// - Traditional madhab preferences in different regions
/// - Geographical considerations for high latitude locations
///
/// This ensures Muslims worldwide receive prayer times that align with
/// their local Islamic community standards and religious traditions,
/// providing authentic and regionally appropriate prayer time calculations.
class PrayCountrySettingUsecase {
  /// Comprehensive list of country-specific prayer calculation settings.
  ///
  /// This static list contains prayer calculation configurations for countries
  /// worldwide, each tailored to local Islamic traditions and authorities.
  /// The configurations include:
  ///
  /// **Country Code**: ISO 3166-1 alpha-2 country codes for identification
  /// **Madhab**: Islamic school of jurisprudence (Hanafi or Shafi'i)
  /// **Calculation Method**: Prayer time calculation method from local authorities
  /// **High Latitude Rule**: Adjustments for extreme geographical locations
  ///
  /// The settings are organized to provide:
  /// - Accurate prayer times based on local Islamic authority recommendations
  /// - Proper madhab selection reflecting regional Islamic traditions
  /// - Appropriate high latitude adjustments for northern/southern countries
  /// - Consistency with local mosque and community prayer schedules
  ///
  /// Countries with significant Muslim populations have settings based on
  /// their official Islamic councils or widely accepted calculation methods.
  /// High latitude countries (like those in Northern Europe) include special
  /// adjustments for seasons when normal astronomical calculations may not work.
  ///
  /// Example usage:
  /// ```dart
  /// final jordanSettings = PrayCountrySettingUsecase.list
  ///     .firstWhere((setting) => setting.countryCode == 'JO');
  /// // Returns Jordan's settings: Shafi'i madhab, Jordan Awqaf method
  /// ```
  static List<PrayCountrySetting> list = [
    PrayCountrySetting(
      countryCode: 'JO', // Jordan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.jordanAwqaf(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'ZM', // Zambia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'ZW', // Zimbabwe
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'YE', // Yemen
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.ummAlQura(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'VE', // Venezuela
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'VN', // Vietnam
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'UG', // Uganda
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GB', // UK
      madhab: const MadhabState.hanafi(),
      calculationMethod:
          const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'UA', // Ukraine
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'AE', // United Arab Emirates
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.dubai(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'VI', // United States Virgin Islands
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'UY', // Uruguay
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'US', // USA
      madhab: const MadhabState.shafi(),
      calculationMethod:
          const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'UZ', // Uzbekistan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TW', // Taiwan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TJ', // Tajikistan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TZ', // Tanzania
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TH', // Thailand
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TG', // Togo
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TT', // Trinidad And Tobago
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TN', // Tunisia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.tunisia(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'TR', // Turkey
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.turkey(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'TM', // Turkmenistan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TC', // Turks Caicos Islands
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'LC', // Saint Lucia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'VC', // Saint Vincent and the Grenadines
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SA', // Saudi Arabia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.ummAlQura(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SN', // Senegal
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SC', // Seychelles
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SL', // Sierra Leone
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SG', // Singapore
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.singapore(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SK', // Slovakia
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'SI', // Slovenia
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'SB', // Solomon Islands
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SO', // Somalia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'ZA', // South Africa
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'KR', // South Korea
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SS', // South Sudan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'ES', // Spain
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'LK', // Sri Lanka
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SD', // Sudan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SR', // Suriname
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SZ', // Swaziland
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SE', // Sweden
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'CH', // Switzerland
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'SY', // Syria
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'RO', // Romania
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'RU', // Russia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.russia(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'RW', // Rwanda
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'QA', // Qatar
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.qatar(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'OM', // Oman
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.ummAlQura(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'IL', // Israel
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PK', // Pakistan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.karachi(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'PS', // Palestine
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PA', // Panama
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PG', // Papua New Guinea
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PY', // Paraguay
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PE', // Peru
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PH', // Philippines
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PL', // Poland
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'PT', // Portugal
      madhab: const MadhabState.hanafi(),
      calculationMethod:
          const PrayCalculationMethodState.comunidadeIslamicaLisboa(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PR', // Puerto Rico
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NA', // Namibia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NA', // Namibia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NP', // Nepal
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NL', // Netherlands
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'NL', // Netherlands
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'NI', // Nicaragua
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NE', // Niger
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NG', // Nigeria
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'KP', // North Korea
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NO', // Norway
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'NO', // Norway
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'MG', // Madagascar
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MW', // Malawi
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MY', // Malaysia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.jAKIM(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MV', // Maldives
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MT', // Malta
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MQ', // Martinique
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MR', // Mauritania
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MU', // Mauritius
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'MX', // Mexico
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MD', // Moldova
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MC', // Monaco
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MS', // Montserrat
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MA', // Morocco
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.morocco(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MZ', // Mozambique
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MM', // Myanmar
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'LV', // Latvia
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'LB', // Lebanon
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'LR', // Liberia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'LY', // Libya
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'LT', // Lithuania
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'LU', // Luxembourg
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'KZ', // Kazakhstan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'KE', // Kenya
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'KV', // Kosovo
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'KV', // Kuwait
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.kuwait(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'KG', // Kyrgyzstan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'JM', // Jamaica
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'JP', // Japan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'IN', // India
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.karachi(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.seventhPartOfTheNight(),
    ),
    PrayCountrySetting(
      countryCode: 'ID', // Indonesia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.kEMENAG(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'IR', // Iran
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.tehran(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'IQ', // Iraq
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.ummAlQura(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'IE', // Ireland
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'IM', // Isle Of Man
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'IM', // Italy
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'HT', // Haiti
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'HN', // Honduras
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'HK', // Hong Kong
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'HU', // Hungary
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.midnight(),
    ),
    PrayCountrySetting(
      countryCode: 'GA', // Gabon
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GM', // Gambia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GE', // Georgia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'DE', // Germany
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'GH', // Ghana
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GI', // Gibraltar
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GR', // Greece
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'GD', // Grenada
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GT', // Guatemala
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GN', // Guinea
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GW', // Guinea Bissau
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GY', // Guyana
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'FK', // Falkland Islands
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'FJ', // Fiji
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'FI', // Finland
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'FR', // France
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.france(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'EC', // Ecuador
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'EG', // Egypt
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SV', // El Salvador
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GQ', // Equatorial Guinea
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'ER', // Eritrea
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'EE', // Estonia
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'ET', // Ethiopia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CD', // Democratic Republic Congo
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'DK', // Denmark
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'DJ', // Djibouti
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'DM', // Dominica
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'DO', // Dominican Republic
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'KH', // Cambodia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CM', // Cameroon
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CA', // Canada
      madhab: const MadhabState.hanafi(),
      calculationMethod:
          const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'KY', // Cayman Islands
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CF', // Central African Republic
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TD', // Chad
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CL', // Chile
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CN', // China
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'CO', // Colombia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CG', // Congo
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CR', // Costa Rica
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'HR', // Croatia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CU', // Cuba
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CY', // Cyprus
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'CZ', // Czech Republic
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'BS', // Bahamas
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BH', // Bahrain
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.gulfRegion(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BD', // Bangladesh
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.karachi(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BB', // Barbados
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BY', // Belarus
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'BE', // Belgium
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'BZ', // Belize
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BJ', // Benin
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BT', // Bhutan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BO', // Bolivia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BA', // Bosnia-Herzegovina
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BW', // Botswana
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BR', // Brazil
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'VG', // British Virgin Islands
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BG', // Bulgaria
      madhab: const MadhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'BF', // Burkina Faso
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BI', // Burundi
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BI', // Afghanistan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.karachi(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AL', // Albania
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'DZ', // Algeria
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.algeria(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AO', // Angola
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AI', // Anguilla
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AG', // Antigua and Barbuda
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AR', // Argentina
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AM', // Armenia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AW', // Aruba
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AU', // Australia
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AT', // Austria
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'AZ', // Azerbaijan
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
  ];

  /// Retrieves prayer calculation settings for a specific country code.
  ///
  /// This method looks up the appropriate prayer calculation settings for a given
  /// country using its ISO 3166-1 alpha-2 country code. It provides:
  /// - **Exact match lookup** for countries in the predefined list
  /// - **Fallback settings** for countries not explicitly configured
  /// - **Case-insensitive matching** by normalizing the country code
  ///
  /// The method ensures that every country receives appropriate prayer calculation
  /// settings, either from the curated list or sensible defaults. The fallback
  /// settings use:
  /// - Shafi'i madhab (most widely followed)
  /// - Jordan Awqaf calculation method (widely accepted)
  /// - No high latitude adjustments (suitable for most regions)
  ///
  /// Parameters:
  /// - [countryCode]: The ISO 3166-1 alpha-2 country code (e.g., 'US', 'SA', 'GB')
  ///
  /// Returns a [PrayCountrySetting] object containing the appropriate prayer
  /// calculation configuration for the specified country.
  ///
  /// Example:
  /// ```dart
  /// final usSettings = PrayCountrySettingUsecase.setupPraySettingByCountryCode('US');
  /// // Returns: ISNA method, Shafi'i madhab, angle-based high latitude
  ///
  /// final unknownSettings = PrayCountrySettingUsecase.setupPraySettingByCountryCode('XX');
  /// // Returns: Jordan Awqaf method, Shafi'i madhab, no high latitude adjustments
  /// ```
  static PrayCountrySetting setupPraySettingByCountryCode(String countryCode) {
    final normalizedCode = countryCode.toUpperCase();

    for (final item in list) {
      if (item.countryCode == normalizedCode) {
        return item;
      }
    }
    return PrayCountrySetting(
      countryCode: normalizedCode,
      madhab: const MadhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.jordanAwqaf(),
      hightLatitudeCaluclationState:
          const PrayHightLatitudeCaluclationState.none(),
    );
  }
}
