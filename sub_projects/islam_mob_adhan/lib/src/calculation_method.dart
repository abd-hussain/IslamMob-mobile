import 'calculation_parameters.dart';
import 'prayer_adjustments.dart';

/// Standard calculation methods for calculating prayer times
enum CalculationMethod {
  /// Muslim World League
  /// Uses Fajr angle of 18 and an Isha angle of 17
  muslimWorldLeague,

  /// Islamic Society of North America (ISNA)
  /// Uses a Fajr angle of 15 and an Isha angle of 15.
  northAmerica,

  /// Egyptian General Authority of Survey
  /// Uses Fajr angle of 19.5 and an Isha angle of 17.5
  egyptian,

  /// Umm Al-Qura University, Makkah
  /// Uses a Fajr angle of 18.5 and an Isha angle of 90 min.
  /// Note: You should add a +30 minute custom adjustment of Isha during Ramadan.
  ummAlQura,

  /// University of Islamic Sciences, Karachi
  /// Uses Fajr angle of 18 and an Isha angle of 18
  karachi,

  /// Institute of Geophysics, University of Tehran
  /// Uses Fajr angle 17.7 , and Isha angles of 14 degrees.
  /// Maghrib: 4.5 , Midnight: JAFARI
  tehran,

  /// Shia Ithna-Ashari, Leva Institute, Qum
  /// Uses Fajr angle 16 , and Isha angles of 14 degrees.
  /// Maghrib: 4 , Midnight: JAFARI
  jafari,

  /// Gulf Region
  /// Uses Fajr angle 19.5 , and Isha angles of 90 min
  gulfRegion,

  /// Kuwait
  /// Uses a Fajr angle of 18 and an Isha angle of 17.5
  kuwait,

  /// Qatar
  /// Uses a Fajr angle of 18 and an Isha angle of 90 min
  qatar,

  /// Majlis Ugama Islam Singapura, Singapore
  /// Uses a Fajr angle of 20 and an Isha angle of 18
  singapore,

  /// Union Organization Islamic de France
  /// Uses a Fajr angle of 12 and an Isha angle of 12
  france,

  /// Diyanet İşleri Başkanlığı, Turkey (experimental)
  /// Uses a Fajr angle of 18 and an Isha angle of 17
  turkey,

  /// Spiritual Administration of Muslims of Russia
  /// Uses a Fajr angle of 16 and an Isha angle of 15
  russia,

  /// Dubai
  /// Uses Fajr and Isha angles of 18.2 degrees.
  dubai,

  /// Jabatan Kemajuan Islam Malaysia (JAKIM)
  /// Uses a Fajr angle of 20 and an Isha angle of 18
  jakim,

  /// TUNISIA
  /// Uses a Fajr angle of 20 and an Isha angle of 18
  tunisia,

  /// ALGERIA
  /// Uses a Fajr angle of 18 and an Isha angle of 17
  algeria,

  /// KEMENAG: Kementerian Agama Republik Indonesia
  /// Uses a Fajr angle of 20 and an Isha angle of 18
  kemenag,

  /// MOROCCO:
  /// Uses a Fajr angle of 19 and an Isha angle of 17
  morocco,

  /// PORTUGAL: Comunidade Islamica de Lisboa
  /// Uses a Fajr angle of 18 , Maghrib: 3 min and Isha: 77 min
  portugal,

  /// JORDAN: Ministry of Awqaf, Islamic Affairs and Holy Places, Jordan
  /// Uses a Fajr angle of 18 , Maghrib: 5 min and Isha: 18
  jordan,

  /// Moonsighting Committee Worldwide (Moonsighting.com)
  moonSightingCommittee,

  /// The default value for [CalculationParameters.method] when initializing a
  /// [CalculationParameters] object. Sets a Fajr angle of 0 and an Isha angle of 0.
  other
}

extension CalculationMethodExtensions on CalculationMethod {
  /// Returns the CalculationParameters for the given method.
  CalculationParameters getParameters() {
    switch (this) {
      case CalculationMethod.muslimWorldLeague:
        return CalculationParameters(
                fajrAngle: 18.0, ishaAngle: 17.0, method: this)
            .withMethodAdjustments(PrayerAdjustments(
                fajr: 0, sunrise: 0, dhuhr: 1, asr: 0, maghrib: 0, isha: 0));
      case CalculationMethod.northAmerica:
        return CalculationParameters(
                fajrAngle: 15.0, ishaAngle: 15.0, method: this)
            .withMethodAdjustments(PrayerAdjustments(
                fajr: 0, sunrise: 0, dhuhr: 1, asr: 0, maghrib: 0, isha: 0));
      case CalculationMethod.egyptian:
        return CalculationParameters(
                fajrAngle: 19.5, ishaAngle: 17.5, method: this)
            .withMethodAdjustments(PrayerAdjustments(
                fajr: 0, sunrise: 0, dhuhr: 1, asr: 0, maghrib: 0, isha: 0));
      case CalculationMethod.ummAlQura:
        return CalculationParameters(
            fajrAngle: 18.5, ishaInterval: 90, method: this);
      case CalculationMethod.karachi:
        return CalculationParameters(
                fajrAngle: 18.0, ishaAngle: 18.0, method: this)
            .withMethodAdjustments(PrayerAdjustments(
                fajr: 0, sunrise: 0, dhuhr: 1, asr: 0, maghrib: 0, isha: 0));
      case CalculationMethod.tehran:
        return CalculationParameters(
            fajrAngle: 17.7, ishaAngle: 14, maghribAngle: 4.5, method: this);
      case CalculationMethod.jafari:
        return CalculationParameters(
            fajrAngle: 16, ishaAngle: 14, maghribAngle: 4, method: this);
      case CalculationMethod.gulfRegion:
        return CalculationParameters(
            fajrAngle: 19.5, ishaAngle: 90, method: this);
      case CalculationMethod.kuwait:
        return CalculationParameters(
            fajrAngle: 18.0, ishaAngle: 17.5, method: this);
      case CalculationMethod.qatar:
        return CalculationParameters(
            fajrAngle: 18.0, ishaInterval: 90, method: this);
      case CalculationMethod.singapore:
        return CalculationParameters(
                fajrAngle: 20.0, ishaAngle: 18.0, method: this)
            .withMethodAdjustments(PrayerAdjustments(
                fajr: 0, sunrise: 0, dhuhr: 1, asr: 0, maghrib: 0, isha: 0));
      case CalculationMethod.france:
        return CalculationParameters(
            fajrAngle: 12.0, ishaAngle: 12.0, method: this);
      case CalculationMethod.turkey:
        return CalculationParameters(
                fajrAngle: 18.0, ishaAngle: 17.0, method: this)
            .withMethodAdjustments(PrayerAdjustments(
                fajr: 0, sunrise: -7, dhuhr: 5, asr: 4, maghrib: 7, isha: 0));
      case CalculationMethod.russia:
        return CalculationParameters(
                fajrAngle: 16.0, ishaAngle: 15.0, method: this)
            .withMethodAdjustments(PrayerAdjustments(
                fajr: 0, sunrise: -7, dhuhr: 5, asr: 4, maghrib: 7, isha: 0));
      case CalculationMethod.dubai:
        return CalculationParameters(
                fajrAngle: 18.2, ishaAngle: 18.2, method: this)
            .withMethodAdjustments(PrayerAdjustments(
                fajr: 0, sunrise: -3, dhuhr: 3, asr: 3, maghrib: 3, isha: 0));
      case CalculationMethod.jakim:
        return CalculationParameters(
                fajrAngle: 20.0, ishaAngle: 18.0, method: this)
            .withMethodAdjustments(PrayerAdjustments(
                fajr: 0, sunrise: -3, dhuhr: 3, asr: 3, maghrib: 3, isha: 0));
      case CalculationMethod.tunisia:
        return CalculationParameters(
            fajrAngle: 18.0, ishaAngle: 18, method: this);
      case CalculationMethod.algeria:
        return CalculationParameters(
            fajrAngle: 18.0, ishaAngle: 17.0, method: this);
      case CalculationMethod.kemenag:
        return CalculationParameters(
            fajrAngle: 20.0, ishaAngle: 18.0, method: this);
      case CalculationMethod.morocco:
        return CalculationParameters(
            fajrAngle: 19.0, ishaAngle: 17.0, method: this);
      case CalculationMethod.portugal:
        return CalculationParameters(
                fajrAngle: 18.0, ishaInterval: 77, method: this)
            .withMethodAdjustments(PrayerAdjustments(maghrib: 3));
      case CalculationMethod.jordan:
        return CalculationParameters(
                fajrAngle: 18.0, ishaAngle: 18.0, method: this)
            .withMethodAdjustments(PrayerAdjustments(maghrib: 5));
      case CalculationMethod.moonSightingCommittee:
        return CalculationParameters(
                fajrAngle: 18.0, ishaAngle: 18.0, method: this)
            .withMethodAdjustments(PrayerAdjustments(
                fajr: 0, sunrise: 0, dhuhr: 5, asr: 0, maghrib: 3, isha: 0));
      case CalculationMethod.other:
        return CalculationParameters(
            fajrAngle: 0.0, ishaAngle: 0.0, method: this);
    }
  }
}
