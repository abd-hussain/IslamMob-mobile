import 'package:islam_app/models/high_latitude_method.dart';
import 'package:islam_app/models/madhab.dart';
import 'package:islam_app/models/pray_calculation_method.dart';
import 'package:islam_app/models/pray_country_setting.dart';

class PrayCountrySettingUsecase {
  static List<PrayCountrySetting> list = [
    PrayCountrySetting(
      countryCode: 'JO', // Jordan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.jordanAwqaf(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'ZM', // Zambia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'ZW', // Zimbabwe
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'YE', // Yemen
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.ummAlQura(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'VE', // Venezuela
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'VN', // Vietnam
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'UG', // Uganda
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GB', // UK
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'UA', // Ukraine
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'AE', // United Arab Emirates
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.dubai(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'VI', // United States Virgin Islands
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'UY', // Uruguay
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'US', // USA
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'UZ', // Uzbekistan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TW', // Taiwan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TJ', // Tajikistan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TZ', // Tanzania
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TH', // Thailand
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TG', // Togo
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TT', // Trinidad And Tobago
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TN', // Tunisia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.tunisia(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'TR', // Turkey
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.turkey(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'TM', // Turkmenistan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TC', // Turks Caicos Islands
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'LC', // Saint Lucia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'VC', // Saint Vincent and the Grenadines
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SA', // Saudi Arabia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.ummAlQura(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SN', // Senegal
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SC', // Seychelles
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SL', // Sierra Leone
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SG', // Singapore
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.singapore(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SK', // Slovakia
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'SI', // Slovenia
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'SB', // Solomon Islands
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SO', // Somalia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'ZA', // South Africa
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'KR', // South Korea
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SS', // South Sudan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'ES', // Spain
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'LK', // Sri Lanka
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SD', // Sudan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SR', // Suriname
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SZ', // Swaziland
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SE', // Sweden
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'CH', // Switzerland
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'SY', // Syria
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'RO', // Romania
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'RU', // Russia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.russia(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'RW', // Rwanda
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'QA', // Qatar
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.qatar(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'OM', // Oman
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.ummAlQura(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'IL', // Israel
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PK', // Pakistan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.karachi(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'PS', // Palestine
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PA', // Panama
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PG', // Papua New Guinea
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PY', // Paraguay
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PE', // Peru
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PH', // Philippines
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PL', // Poland
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'PT', // Portugal
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.comunidadeIslamicaLisboa(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'PR', // Puerto Rico
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NA', // Namibia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NA', // Namibia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NP', // Nepal
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NL', // Netherlands
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'NL', // Netherlands
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'NI', // Nicaragua
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NE', // Niger
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NG', // Nigeria
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'KP', // North Korea
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'NO', // Norway
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'NO', // Norway
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'MG', // Madagascar
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MW', // Malawi
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MY', // Malaysia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.jAKIM(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MV', // Maldives
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MT', // Malta
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MQ', // Martinique
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MR', // Mauritania
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MU', // Mauritius
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'MX', // Mexico
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MD', // Moldova
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MC', // Monaco
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MS', // Montserrat
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MA', // Morocco
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.morocco(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MZ', // Mozambique
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'MM', // Myanmar
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'LV', // Latvia
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'LB', // Lebanon
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'LR', // Liberia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'LY', // Libya
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'LT', // Lithuania
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'LU', // Luxembourg
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'KZ', // Kazakhstan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'KE', // Kenya
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'KV', // Kosovo
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'KV', // Kuwait
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.kuwait(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'KG', // Kyrgyzstan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'JM', // Jamaica
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'JP', // Japan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'IN', // India
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.karachi(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.seventhPartOfTheNight(),
    ),
    PrayCountrySetting(
      countryCode: 'ID', // Indonesia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.kEMENAG(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'IR', // Iran
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.tehran(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'IQ', // Iraq
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'IE', // Ireland
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'IM', // Isle Of Man
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'IM', // Italy
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'HT', // Haiti
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'HN', // Honduras
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'HK', // Hong Kong
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'HU', // Hungary
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.midnight(),
    ),
    PrayCountrySetting(
      countryCode: 'GA', // Gabon
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GM', // Gambia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GE', // Georgia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'DE', // Germany
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'GH', // Ghana
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GI', // Gibraltar
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GR', // Greece
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'GD', // Grenada
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GT', // Guatemala
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GN', // Guinea
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GW', // Guinea Bissau
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GY', // Guyana
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'FK', // Falkland Islands
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'FJ', // Fiji
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'FI', // Finland
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'FR', // France
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.france(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'EC', // Ecuador
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'EG', // Egypt
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.egypt(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'SV', // El Salvador
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'GQ', // Equatorial Guinea
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'ER', // Eritrea
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'EE', // Estonia
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'ET', // Ethiopia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CD', // Democratic Republic Congo
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'DK', // Denmark
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'DJ', // Djibouti
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'DM', // Dominica
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'DO', // Dominican Republic
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'KH', // Cambodia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CM', // Cameroon
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CA', // Canada
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'KY', // Cayman Islands
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CF', // Central African Republic
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'TD', // Chad
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CL', // Chile
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CN', // China
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'CO', // Colombia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CG', // Congo
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CR', // Costa Rica
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'HR', // Croatia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CU', // Cuba
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'CY', // Cyprus
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'CZ', // Czech Republic
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'BS', // Bahamas
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BH', // Bahrain
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.gulfRegion(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BD', // Bangladesh
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.karachi(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BB', // Barbados
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BY', // Belarus
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'BE', // Belgium
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'BZ', // Belize
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BJ', // Benin
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BT', // Bhutan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BO', // Bolivia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BA', // Bosnia-Herzegovina
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BW', // Botswana
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BR', // Brazil
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'VG', // British Virgin Islands
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BG', // Bulgaria
      madhab: const MathhabState.hanafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'BF', // Burkina Faso
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BI', // Burundi
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'BI', // Afghanistan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.karachi(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AL', // Albania
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'DZ', // Algeria
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.algeria(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AO', // Angola
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AI', // Anguilla
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AG', // Antigua and Barbuda
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AR', // Argentina
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AM', // Armenia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AW', // Aruba
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AU', // Australia
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    ),
    PrayCountrySetting(
      countryCode: 'AT', // Austria
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
    PrayCountrySetting(
      countryCode: 'AZ', // Azerbaijan
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.muslimWorldLeague(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.angleBasedMethod(),
    ),
  ];

  PrayCountrySetting setupPraySettingByCountryCode(String countryCode) {
    final normalizedCode = countryCode.toUpperCase();

    for (var item in list) {
      if (item.countryCode == normalizedCode) {
        return item;
      }
    }
    return PrayCountrySetting(
      countryCode: normalizedCode,
      madhab: const MathhabState.shafi(),
      calculationMethod: const PrayCalculationMethodState.jordanAwqaf(),
      hightLatitudeCaluclationState: const PrayHightLatitudeCaluclationState.none(),
    );
  }
}
