import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/quran_copy.dart';
import 'package:islam_app/domain/sealed/high_latitude_method.dart';
import 'package:islam_app/domain/sealed/madhab.dart';
import 'package:islam_app/domain/sealed/pray_calculation_method.dart';
import 'package:islam_app/domain/usecase/pray_country_setting_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:location_manager/location_manager.dart';
import 'package:preferences/preferences.dart';

/// A use case class that handles initial user setting configuration.
///
/// This class provides functionality to:
/// - Set up prayer calculation settings based on country
/// - Configure high latitude calculation rules
/// - Set up madhab (Islamic school of jurisprudence) preferences
/// - Configure UTC timezone offset
/// - Manage notification tokens
/// - Set up Quran copy preferences and page mappings
/// - Configure location settings
/// - Set user language preferences
///
/// All settings are automatically determined based on the user's country
/// code and stored in the local database for future use.
class SetupUserSettingUseCase {
  /// Sets up the high latitude calculation rule based on the user's country.
  ///
  /// This method retrieves the user's country code from the database,
  /// determines the appropriate high latitude calculation method for that
  /// country, and saves it to the database.
  ///
  /// High latitude rules are used for locations where normal prayer time
  /// calculations may not work properly due to extreme daylight variations
  /// (e.g., countries near the poles).
  ///
  /// Defaults to Jordan ("JO") if no country code is found.
  static Future<void> setupHighLatitudeRule() async {
    final countryCode = locator<IslamPreferences>().getValue(
      key: DatabaseFieldLocationConstant.selectedCountryCode,
      defaultValue: "JO",
    );

    final PrayHightLatitudeCaluclationState calculationMethod =
        PrayCountrySettingUsecase.setupPraySettingByCountryCode(
          countryCode,
        ).hightLatitudeCaluclationState;

    await locator<IslamPreferences>().setValue(
      key: DatabaseFieldPrayCalculationConstant.selectedHighLatitude,
      value: calculationMethod.toString(),
    );
  }

  /// Sets up the prayer calculation method based on the user's country.
  ///
  /// This method retrieves the user's country code from the database,
  /// determines the appropriate Islamic prayer calculation method for that
  /// country, and saves it to the database.
  ///
  /// Different countries and regions use different calculation methods
  /// (e.g., Muslim World League, Egyptian, Karachi, etc.) based on local
  /// Islamic authorities and geographical considerations.
  ///
  /// Defaults to Jordan ("JO") if no country code is found.
  static Future<void> setupPrayCalculationMethod() async {
    final countryCode = locator<IslamPreferences>().getValue(
      key: DatabaseFieldLocationConstant.selectedCountryCode,
      defaultValue: "JO",
    );

    final PrayCalculationMethodState calculationMethod =
        PrayCountrySettingUsecase.setupPraySettingByCountryCode(
          countryCode,
        ).calculationMethod;

    await locator<IslamPreferences>().setValue(
      key: DatabaseFieldPrayCalculationConstant.selectedCalculationMethod,
      value: calculationMethod.toString(),
    );
  }

  /// Sets up the madhab (Islamic school of jurisprudence) based on the user's country.
  ///
  /// This method retrieves the user's country code from the database,
  /// determines the appropriate madhab for that country, and saves it
  /// to the database.
  ///
  /// The madhab affects certain prayer time calculations, particularly
  /// the Asr prayer time. Common madhabs include Hanafi and Shafi.
  /// Different countries typically follow different madhabs based on
  /// their Islamic scholarly traditions.
  ///
  /// Defaults to Jordan ("JO") if no country code is found.
  static Future<void> setupMadhabByCountryCode() async {
    final countryCode = locator<IslamPreferences>().getValue(
      key: DatabaseFieldLocationConstant.selectedCountryCode,
      defaultValue: "JO",
    );

    final MadhabState calculationMethod =
        PrayCountrySettingUsecase.setupPraySettingByCountryCode(
          countryCode,
        ).madhab;

    await locator<IslamPreferences>().setValue(
      key: DatabaseFieldPrayCalculationConstant.selectedMadhab,
      value: calculationMethod.toString(),
    );
  }

  /// Updates UTC Offset in storage
  static Future<void> setupUTCOffset() async {
    // Get the current DateTime
    final now = DateTime.now();

    // Get the UTC offset
    final Duration offset = now.timeZoneOffset;

    // Convert to hours and minutes
    final int hours = offset.inHours;
    final int minutes = offset.inMinutes.remainder(60);

    debugPrint('Current UTC Offset: hours: $hours, minutes: $minutes');

    await locator<IslamPreferences>().saveMultiValue(
      data: {
        DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour:
            hours.toString(),
        DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin:
            minutes.toString(),
      },
    );
  }

  /// Updates the notification token in storage
  static Future<void> setNotificationToken(String token) async {
    await locator<IslamPreferences>().setValue(
      key: DatabaseFieldConstant.notificationToken,
      value: token,
    );
  }

  /// Updates location details in storage
  static Future<void> setQuranCopyInDB(QuranCopy copyName) async {
    final copyData = {
      DatabaseFieldQuranCopyConstant.quranKaremPrintNameToUse:
          copyName.fileName,
      DatabaseFieldQuranCopyConstant.quranKaremLastPageNumber:
          copyName.lastPageNumber,
      DatabaseFieldQuranCopyConstant.quranKaremJuz2ToPageNumbers:
          copyName.juz2ToPageNumbers,
      DatabaseFieldQuranCopyConstant.quranKaremSorahToPageNumbers:
          copyName.sorahToPageNumbers,
    };
    return locator<IslamPreferences>().saveMultiValue(data: copyData);
  }

  /// Updates location details in storage
  static Future<void> setLocation(LocationModel location) async {
    final locationData = {
      DatabaseFieldLocationConstant.selectedCountryCode: location.countryCode,
      DatabaseFieldLocationConstant.selectedCountry: location.country,
      DatabaseFieldLocationConstant.selectedCity: location.city,
      DatabaseFieldLocationConstant.selectedSubCity: location.subCity,
      DatabaseFieldLocationConstant.selectedStreet: location.street,
      DatabaseFieldLocationConstant.selectedLat: location.latitude,
      DatabaseFieldLocationConstant.selectedLong: location.longitude,
      DatabaseFieldLocationConstant.selectedThoroughfare: location.thoroughfare,
    };

    await locator<IslamPreferences>().saveMultiValue(data: locationData);
  }

  /// Updates the selected language in storage and rebuilds the app
  static Future<void> setLanguage(String langCode) async {
    await locator<IslamPreferences>().setValue(
      key: DatabaseFieldConstant.userLanguageCode,
      value: langCode,
    );
  }
}
