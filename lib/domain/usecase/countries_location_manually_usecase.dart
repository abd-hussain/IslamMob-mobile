import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/choose_location.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

/// Use case for providing manually curated location data for Islamic countries and cities.
///
/// This class provides a comprehensive list of countries and major cities with
/// significant Muslim populations, along with their precise geographical coordinates
/// for accurate Islamic prayer time calculations. The data includes:
///
/// - **Muslim-majority countries** with their capital cities
/// - **Countries with significant Muslim populations**
/// - **Precise latitude and longitude coordinates** for prayer time accuracy
/// - **Localized country names** supporting multiple languages
/// - **Flag emojis** for visual identification in the UI
///
/// The location data is manually curated to ensure accuracy for Islamic prayer
/// time calculations and covers regions where the Islam Mob app is most likely
/// to be used. Each location includes the capital city coordinates, which
/// typically provide good prayer time accuracy for the entire country.
///
/// This manual approach ensures reliable data availability even when automatic
/// location services are unavailable or when users prefer to select their
/// location from a predefined list.
class CountriesLocationManuallyUseCase {
  /// Returns a comprehensive list of countries and cities with Islamic significance.
  ///
  /// This method provides a manually curated list of locations that includes:
  /// - All Muslim-majority countries and their capitals
  /// - Countries with significant Muslim populations
  /// - Precise geographical coordinates for accurate prayer time calculations
  /// - Localized country names based on the app's current language setting
  /// - Flag emojis for visual identification
  ///
  /// The coordinates are specifically chosen to provide accurate prayer times
  /// for each country, typically using the capital city's location as a
  /// representative point for the entire country.
  ///
  /// Parameters:
  /// - [context]: Build context for accessing localization strings
  ///
  /// Returns a list of [ChooseLocation] objects, each containing:
  /// - Localized country name
  /// - Country flag emoji
  /// - Precise latitude and longitude coordinates
  ///
  /// The list includes an "Other" option with coordinates (0,0) for users
  /// whose location is not in the predefined list, allowing them to use
  /// automatic location detection or manual coordinate entry.
  ///
  /// Example usage:
  /// ```dart
  /// final locations = CountriesLocationManuallyUseCase.getCountriesCitiesLocationManually(context);
  /// final saudiArabia = locations.firstWhere((loc) => loc.countryName.contains('Saudi'));
  /// ```
  static List<ChooseLocation> getCountriesCitiesLocationManually(
    BuildContext context,
  ) {
    final localize = IslamMobLocalizations.of(context);

    return [
      ChooseLocation(
        countryName: localize.afghanistan,
        flag: "🇦🇫",
        latitude: 34.5553,
        longitude: 69.2075,
      ), // Kabul
      ChooseLocation(
        countryName: localize.albania,
        flag: "🇦🇱",
        latitude: 41.3275,
        longitude: 19.8189,
      ), // Tirana
      ChooseLocation(
        countryName: localize.algeria,
        flag: "🇩🇿",
        latitude: 36.7538,
        longitude: 3.0422,
      ), // Algiers
      ChooseLocation(
        countryName: localize.azerbaijan,
        flag: "🇦🇿",
        latitude: 40.4093,
        longitude: 49.8671,
      ), // Baku
      ChooseLocation(
        countryName: localize.bahrain,
        flag: "🇧🇭",
        latitude: 26.2285,
        longitude: 50.5860,
      ), // Manama
      ChooseLocation(
        countryName: localize.bangladesh,
        flag: "🇧🇩",
        latitude: 23.8103,
        longitude: 90.4125,
      ), // Dhaka
      ChooseLocation(
        countryName: localize.brunei,
        flag: "🇧🇳",
        latitude: 4.9031,
        longitude: 114.9398,
      ), // Bandar Seri Begawan
      ChooseLocation(
        countryName: localize.burkinaFaso,
        flag: "🇧🇫",
        latitude: 12.3686,
        longitude: -1.5276,
      ), // Ouagadougou
      ChooseLocation(
        countryName: localize.chad,
        flag: "🇹🇩",
        latitude: 12.1348,
        longitude: 15.0557,
      ), // N'Djamena
      ChooseLocation(
        countryName: localize.comoros,
        flag: "🇰🇲",
        latitude: -11.7172,
        longitude: 43.2473,
      ), // Moroni
      ChooseLocation(
        countryName: localize.djibouti,
        flag: "🇩🇯",
        latitude: 11.5721,
        longitude: 43.1456,
      ), // Djibouti City
      ChooseLocation(
        countryName: localize.egypt,
        flag: "🇪🇬",
        latitude: 30.0444,
        longitude: 31.2357,
      ), // Cairo
      ChooseLocation(
        countryName: localize.gambia,
        flag: "🇬🇲",
        latitude: 13.4549,
        longitude: -16.5790,
      ), // Banjul
      ChooseLocation(
        countryName: localize.guinea,
        flag: "🇬🇳",
        latitude: 9.6412,
        longitude: -13.5784,
      ), // Conakry
      ChooseLocation(
        countryName: localize.indonesia,
        flag: "🇮🇩",
        latitude: -6.2088,
        longitude: 106.8456,
      ), // Jakarta
      ChooseLocation(
        countryName: localize.iran,
        flag: "🇮🇷",
        latitude: 35.6892,
        longitude: 51.3890,
      ), // Tehran
      ChooseLocation(
        countryName: localize.iraq,
        flag: "🇮🇶",
        latitude: 33.3152,
        longitude: 44.3661,
      ), // Baghdad
      ChooseLocation(
        countryName: localize.jordan,
        flag: "🇯🇴",
        latitude: 31.9516,
        longitude: 35.9236,
      ), // Amman
      ChooseLocation(
        countryName: localize.kazakhstan,
        flag: "🇰🇿",
        latitude: 51.1694,
        longitude: 71.4491,
      ), // Astana
      ChooseLocation(
        countryName: localize.kuwait,
        flag: "🇰🇼",
        latitude: 29.3759,
        longitude: 47.9774,
      ), // Kuwait City
      ChooseLocation(
        countryName: localize.kyrgyzstan,
        flag: "🇰🇬",
        latitude: 42.8746,
        longitude: 74.5698,
      ), // Bishkek
      ChooseLocation(
        countryName: localize.lebanon,
        flag: "🇱🇧",
        latitude: 33.8938,
        longitude: 35.5018,
      ), // Beirut
      ChooseLocation(
        countryName: localize.libya,
        flag: "🇱🇾",
        latitude: 32.8872,
        longitude: 13.1913,
      ), // Tripoli
      ChooseLocation(
        countryName: localize.malaysia,
        flag: "🇲🇾",
        latitude: 3.1390,
        longitude: 101.6869,
      ), // Kuala Lumpur
      ChooseLocation(
        countryName: localize.maldives,
        flag: "🇲🇻",
        latitude: 4.1755,
        longitude: 73.5093,
      ), // Malé
      ChooseLocation(
        countryName: localize.mali,
        flag: "🇲🇱",
        latitude: 12.6392,
        longitude: -8.0029,
      ), // Bamako
      ChooseLocation(
        countryName: localize.mauritania,
        flag: "🇲🇷",
        latitude: 18.0735,
        longitude: -15.9582,
      ), // Nouakchott
      ChooseLocation(
        countryName: localize.morocco,
        flag: "🇲🇦",
        latitude: 33.5731,
        longitude: -7.5898,
      ), // Rabat
      ChooseLocation(
        countryName: localize.nigeria,
        flag: "🇳🇬",
        latitude: 9.0579,
        longitude: 7.4951,
      ), // Abuja
      ChooseLocation(
        countryName: localize.oman,
        flag: "🇴🇲",
        latitude: 23.5859,
        longitude: 58.4059,
      ), // Muscat
      ChooseLocation(
        countryName: localize.pakistan,
        flag: "🇵🇰",
        latitude: 33.6844,
        longitude: 73.0479,
      ), // Islamabad
      ChooseLocation(
        countryName: localize.palestine,
        flag: "🇵🇸",
        latitude: 31.7683,
        longitude: 35.2137,
      ), // Jerusalem (disputed)
      ChooseLocation(
        countryName: localize.qatar,
        flag: "🇶🇦",
        latitude: 25.2760,
        longitude: 51.5200,
      ), // Doha
      ChooseLocation(
        countryName: localize.saudiArabia,
        flag: "🇸🇦",
        latitude: 24.7136,
        longitude: 46.6753,
      ), // Riyadh
      ChooseLocation(
        countryName: localize.senegal,
        flag: "🇸🇳",
        latitude: 14.7167,
        longitude: -17.4677,
      ), // Dakar
      ChooseLocation(
        countryName: localize.somalia,
        flag: "🇸🇴",
        latitude: 2.0469,
        longitude: 45.3182,
      ), // Mogadishu
      ChooseLocation(
        countryName: localize.sudan,
        flag: "🇸🇩",
        latitude: 15.5007,
        longitude: 32.5599,
      ), // Khartoum
      ChooseLocation(
        countryName: localize.syria,
        flag: "🇸🇾",
        latitude: 33.5138,
        longitude: 36.2765,
      ), // Damascus
      ChooseLocation(
        countryName: localize.tajikistan,
        flag: "🇹🇯",
        latitude: 38.5598,
        longitude: 68.7870,
      ), // Dushanbe
      ChooseLocation(
        countryName: localize.tunisia,
        flag: "🇹🇳",
        latitude: 36.8065,
        longitude: 10.1815,
      ), // Tunis
      ChooseLocation(
        countryName: localize.turkey,
        flag: "🇹🇷",
        latitude: 39.9334,
        longitude: 32.8597,
      ), // Ankara
      ChooseLocation(
        countryName: localize.turkmenistan,
        flag: "🇹🇲",
        latitude: 37.9601,
        longitude: 58.3261,
      ), // Ashgabat
      ChooseLocation(
        countryName: localize.unitedArabEmirates,
        flag: "🇦🇪",
        latitude: 24.4539,
        longitude: 54.3773,
      ), // Abu Dhabi
      ChooseLocation(
        countryName: localize.uzbekistan,
        flag: "🇺🇿",
        latitude: 41.2995,
        longitude: 69.2401,
      ), // Tashkent
      ChooseLocation(
        countryName: localize.yemen,
        flag: "🇾🇪",
        latitude: 15.3694,
        longitude: 44.1910,
      ), // Sana'a
      ChooseLocation(
        countryName: localize.other,
        flag: "🌍",
        latitude: 0,
        longitude: 0,
      ),
    ];
  }
}
