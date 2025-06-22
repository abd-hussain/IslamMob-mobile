/// Constants for location-related database field keys.
///
/// This class provides string constants for storing and retrieving location
/// information in the database, including country, city, coordinates, and
/// address details used for prayer time calculations and location services.
class DatabaseFieldLocationConstant {
  /// Key for storing the selected country code (e.g., "US", "EG").
  static const String selectedCountryCode = "selectedCountryCode";

  /// Key for storing the selected country name.
  static const String selectedCountry = "selectedCountry";

  /// Key for storing the selected city name.
  static const String selectedCity = "selectedCity";

  /// Key for storing the selected sub-city or district name.
  static const String selectedSubCity = "selectedSubCity";

  /// Key for storing the selected street name.
  static const String selectedStreet = "selectedStreet";

  /// Key for storing the selected latitude coordinate.
  static const String selectedLat = "selectedLat";

  /// Key for storing the selected longitude coordinate.
  static const String selectedLong = "selectedLong";

  /// Key for storing the selected thoroughfare (main road or street).
  static const String selectedThoroughfare = "selectedThoroughfare";
}
