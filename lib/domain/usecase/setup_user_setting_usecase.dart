import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/location.dart';
import 'package:islam_app/domain/model/quran_copy.dart';
import 'package:islam_app/domain/sealed/high_latitude_method.dart';
import 'package:islam_app/domain/sealed/madhab.dart';
import 'package:islam_app/domain/sealed/pray_calculation_method.dart';
import 'package:islam_app/domain/usecase/pray_country_setting_usecase.dart';

class SetupUserSettingUseCase {
  final PrayCountrySettingUsecase _prayCountrySettingUsecase = PrayCountrySettingUsecase();

  Future<void> setupHighLatitudeRule() async {
    final countryCode = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldLocationConstant.selectedCountryCode,
      defaultValue: "JO",
    );

    final PrayHightLatitudeCaluclationState calculationMethod =
        _prayCountrySettingUsecase.setupPraySettingByCountryCode(countryCode).hightLatitudeCaluclationState;

    await DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldPrayCalculationConstant.selectedHighLatitude, value: calculationMethod.toString());
  }

  Future<void> setupPrayCalculationMethod() async {
    final countryCode = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldLocationConstant.selectedCountryCode,
      defaultValue: "JO",
    );

    final PrayCalculationMethodState calculationMethod =
        _prayCountrySettingUsecase.setupPraySettingByCountryCode(countryCode).calculationMethod;

    await DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldPrayCalculationConstant.selectedCalculationMethod, value: calculationMethod.toString());
  }

  Future<void> setupMadhabByCountryCode() async {
    final countryCode = DataBaseManagerBase.getFromDatabase(
      key: DatabaseFieldLocationConstant.selectedCountryCode,
      defaultValue: "JO",
    );

    final MadhabState calculationMethod = _prayCountrySettingUsecase.setupPraySettingByCountryCode(countryCode).madhab;

    await DataBaseManagerBase.saveInDatabase(
        key: DatabaseFieldPrayCalculationConstant.selectedMadhab, value: calculationMethod.toString());
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

    await DataBaseManagerBase.saveMultipleInDatabase(data: {
      DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCHour: hours.toString(),
      DatabaseFieldPrayCalculationConstant.selectedDifferenceWithUTCMin: minutes.toString()
    });
  }

  /// Updates the notification token in storage
  Future<void> setNotificationToken(String token) async {
    await DataBaseManagerBase.saveInDatabase(key: DatabaseFieldConstant.notificationToken, value: token);
  }

  /// Updates location details in storage
  Future<void> setQuranCopyInDB(QuranCopy copyName) async {
    final copyData = {
      DatabaseFieldQuranCopyConstant.quranKaremPrintNameToUse: copyName.fileName,
      DatabaseFieldQuranCopyConstant.quranKaremLastPageNumber: copyName.lastPageNumber,
      DatabaseFieldQuranCopyConstant.quranKaremJuz2ToPageNumbers: copyName.juz2ToPageNumbers,
      DatabaseFieldQuranCopyConstant.quranKaremSorahToPageNumbers: copyName.sorahToPageNumbers,
    };
    return DataBaseManagerBase.saveMultipleInDatabase(data: copyData);
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

    await DataBaseManagerBase.saveMultipleInDatabase(data: locationData);
  }

  /// Updates the selected language in storage and rebuilds the app
  Future<void> setLanguage(String langCode) async {
    await DataBaseManagerBase.saveInDatabase(key: DatabaseFieldConstant.userLanguageCode, value: langCode);
  }
}
