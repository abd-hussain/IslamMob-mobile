import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:islam_app/models/location.dart';
import 'package:islam_app/models/quran_copy.dart';
import 'package:islam_app/domain/usecase/pray_country_setting_usecase.dart';
import 'package:islam_app/models/high_latitude_method.dart';
import 'package:islam_app/models/madhab.dart';
import 'package:islam_app/models/pray_calculation_method.dart';

class SetupUserSettingUseCase {
  final Box _userBox = Hive.box(DatabaseBoxConstant.userInfo);
  final PrayCountrySettingUsecase prayCountrySettingUsecase =
      PrayCountrySettingUsecase();

  Future<void> setupHighLatitudeRule() async {
    final countryCode = _userBox.get(
      DatabaseFieldLocationConstant.selectedCountryCode,
      defaultValue: "JO",
    ) as String;

    PrayHightLatitudeCaluclationState calculationMethod =
        prayCountrySettingUsecase
            .setupPraySettingByCountryCode(countryCode)
            .hightLatitudeCaluclationState;

    await _updateMultipleStorage({
      DatabaseFieldPrayCalculationConstant.selectedHighLatitude:
          calculationMethod.toString(),
    });
  }

  Future<void> setupPrayCalculationMethod() async {
    final countryCode = _userBox.get(
      DatabaseFieldLocationConstant.selectedCountryCode,
      defaultValue: "JO",
    ) as String;

    PrayCalculationMethodState calculationMethod = prayCountrySettingUsecase
        .setupPraySettingByCountryCode(countryCode)
        .calculationMethod;

    await _updateMultipleStorage({
      DatabaseFieldPrayCalculationConstant.selectedCalculationMethod:
          calculationMethod.toString(),
    });
  }

  Future<void> setupMadhabByCountryCode() async {
    final countryCode = _userBox.get(
      DatabaseFieldLocationConstant.selectedCountryCode,
      defaultValue: "JO",
    ) as String;

    MadhabState calculationMethod = prayCountrySettingUsecase
        .setupPraySettingByCountryCode(countryCode)
        .madhab;

    await _updateMultipleStorage({
      DatabaseFieldPrayCalculationConstant.selectedMadhab:
          calculationMethod.toString(),
    });
  }

  /// Updates UTC Offset in storage
  Future<void> setupUTCOffset() async {
    // Get the current DateTime
    final now = DateTime.now();

    // Get the UTC offset
    final Duration offset = now.timeZoneOffset;

    // Convert to hours and minutes
    final int hours = offset.inHours;
    final int minutes = offset.inMinutes.remainder(60);

    debugPrint('Current UTC Offset: hours: $hours, minutes: $minutes');

    await _updateMultipleStorage({
      DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour:
          hours.toString(),
      DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin:
          minutes.toString()
    });
  }

  /// Updates the notification token in storage
  Future<void> setNotificationToken(String token) async {
    await _updateMultipleStorage(
        {DatabaseFieldConstant.notificationToken: token});
  }

  /// Updates location details in storage
  Future<void> setQuranCopy(QuranCopy copyName) async {
    final copyData = {
      DatabaseFieldQuranCopyConstant.quranKaremPrintNameToUse:
          copyName.filePath,
      DatabaseFieldQuranCopyConstant.quranKaremLastPageNumber:
          copyName.lastPageNumber.toString(),
      DatabaseFieldQuranCopyConstant.quranKaremJuz2ToPageNumbers:
          copyName.juz2ToPageNumbers,
      DatabaseFieldQuranCopyConstant.quranKaremSorahToPageNumbers:
          copyName.sorahToPageNumbers,
    };
    await _updateMultipleStorage(copyData);
  }

  /// Updates location details in storage
  Future<void> setLocation(LocationModel location) async {
    final locationData = {
      DatabaseFieldLocationConstant.selectedCountryCode: location.countryCode,
      DatabaseFieldLocationConstant.selectedCountry: location.country,
      DatabaseFieldLocationConstant.selectedCity: location.city,
      DatabaseFieldLocationConstant.selectedSubCity: location.subCity,
      DatabaseFieldLocationConstant.selectedStreet: location.street,
      DatabaseFieldLocationConstant.selectedLatitude: location.latitude,
      DatabaseFieldLocationConstant.selectedLongitude: location.longitude,
      DatabaseFieldLocationConstant.selectedThoroughfare: location.thoroughfare,
    };

    await _updateMultipleStorage(locationData);
  }

  /// Updates the selected language in storage and rebuilds the app
  Future<void> setLanguage(String langCode) async {
    await _updateMultipleStorage(
        {DatabaseFieldConstant.userLanguageCode: langCode});
  }

  /// Updates multiple values in Hive storage
  Future<void> _updateMultipleStorage(Map<String, dynamic> data) async {
    for (var entry in data.entries) {
      await _userBox.put(entry.key, entry.value);
    }
  }
}
