import 'package:islam_mob_adhan/src/calculation_parameters.dart';
import 'package:islam_mob_adhan/src/prayer_adjustments.dart';

/// Standard calculation methods for calculating prayer times.
enum CalculationMethod {
  /// Muslim World League (MWL).
  /// Fajr angle: 18° | Isha angle: 17°
  muslimWorldLeague,

  /// Islamic Society of North America (ISNA).
  /// Fajr angle: 15° | Isha angle: 15°
  northAmerica,

  /// Egyptian General Authority of Survey.
  /// Fajr angle: 19.5° | Isha angle: 17.5°
  egyptian,

  /// Umm Al-Qura University, Makkah.
  /// Fajr angle: 18.5° | Isha interval: 90 min.
  ummAlQura,

  /// University of Islamic Sciences, Karachi.
  /// Fajr angle: 18° | Isha angle: 18°
  karachi,

  /// Institute of Geophysics, University of Tehran.
  /// Fajr angle: 17.7° | Isha angle: 14° | Maghrib: 4.5 min.
  tehran,

  /// Shia Ithna-Ashari, Leva Institute, Qum.
  /// Fajr angle: 16° | Isha angle: 14° | Maghrib: 4 min.
  jafari,

  /// Gulf Region.
  /// Fajr angle: 19.5° | Isha interval: 90 min.
  gulfRegion,

  /// Kuwait.
  /// Fajr angle: 18° | Isha angle: 17.5°
  kuwait,

  /// Qatar.
  /// Fajr angle: 18° | Isha interval: 90 min.
  qatar,

  /// Singapore.
  /// Fajr angle: 20° | Isha angle: 18°
  singapore,

  /// France (Union Organization Islamic de France).
  /// Fajr angle: 12° | Isha angle: 12°
  france,

  /// Turkey (Diyanet İşleri Başkanlığı).
  /// Fajr angle: 18° | Isha angle: 17°
  turkey,

  /// Russia (Spiritual Administration of Muslims of Russia).
  /// Fajr angle: 16° | Isha angle: 15°
  russia,

  /// Dubai.
  /// Fajr and Isha angles: 18.2°
  dubai,

  /// Malaysia (JAKIM).
  /// Fajr angle: 20° | Isha angle: 18°
  jakim,

  /// Tunisia.
  /// Fajr angle: 18° | Isha angle: 18°
  tunisia,

  /// Algeria.
  /// Fajr angle: 18° | Isha angle: 17°
  algeria,

  /// Indonesia (KEMENAG).
  /// Fajr angle: 20° | Isha angle: 18°
  kemenag,

  /// Morocco.
  /// Fajr angle: 19° | Isha angle: 17°
  morocco,

  /// Portugal (Comunidade Islamica de Lisboa).
  /// Fajr angle: 18° | Maghrib: +3 min | Isha interval: 77 min.
  portugal,

  /// Jordan (Ministry of Awqaf, Islamic Affairs and Holy Places).
  /// Fajr angle: 18° | Maghrib: +5 min | Isha angle: 18°
  jordan,

  /// Moonsighting Committee Worldwide (Moonsighting.com).
  /// Fajr angle: 18° | Isha angle: 18°.
  moonSightingCommittee,

  /// Default value for custom parameters.
  /// Fajr angle: 0° | Isha angle: 0°
  other
}

extension CalculationMethodExtensions on CalculationMethod {
  /// Returns the [CalculationParameters] for the given calculation method.
  CalculationParameters getParameters() {
    switch (this) {
      case CalculationMethod.muslimWorldLeague:
        return CalculationParameters(fajrAngle: 18, ishaAngle: 17, method: this)
            .withMethodAdjustments(const PrayerAdjustments(dhuhr: 1));
      case CalculationMethod.northAmerica:
        return CalculationParameters(fajrAngle: 15, ishaAngle: 15, method: this)
            .withMethodAdjustments(const PrayerAdjustments(dhuhr: 1));
      case CalculationMethod.egyptian:
        return CalculationParameters(
                fajrAngle: 19.5, ishaAngle: 17.5, method: this)
            .withMethodAdjustments(const PrayerAdjustments(dhuhr: 1));
      case CalculationMethod.ummAlQura:
        return CalculationParameters(
            fajrAngle: 18.5, ishaInterval: 90, method: this);
      case CalculationMethod.karachi:
        return CalculationParameters(fajrAngle: 18, ishaAngle: 18, method: this)
            .withMethodAdjustments(const PrayerAdjustments(dhuhr: 1));
      case CalculationMethod.tehran:
        return CalculationParameters(
            fajrAngle: 17.7, ishaAngle: 14, maghribAngle: 4.5, method: this);
      case CalculationMethod.jafari:
        return CalculationParameters(
            fajrAngle: 16, ishaAngle: 14, maghribAngle: 4, method: this);
      case CalculationMethod.gulfRegion:
        return CalculationParameters(
            fajrAngle: 19.5, ishaInterval: 90, method: this);
      case CalculationMethod.kuwait:
        return CalculationParameters(
            fajrAngle: 18, ishaAngle: 17.5, method: this);
      case CalculationMethod.qatar:
        return CalculationParameters(
            fajrAngle: 18, ishaInterval: 90, method: this);
      case CalculationMethod.singapore:
        return CalculationParameters(fajrAngle: 20, ishaAngle: 18, method: this)
            .withMethodAdjustments(const PrayerAdjustments(dhuhr: 1));
      case CalculationMethod.france:
        return CalculationParameters(
            fajrAngle: 12, ishaAngle: 12, method: this);
      case CalculationMethod.turkey:
        return CalculationParameters(fajrAngle: 18, ishaAngle: 17, method: this)
            .withMethodAdjustments(const PrayerAdjustments(
                sunrise: -7, dhuhr: 5, asr: 4, maghrib: 7));
      case CalculationMethod.russia:
        return CalculationParameters(fajrAngle: 16, ishaAngle: 15, method: this)
            .withMethodAdjustments(const PrayerAdjustments(
                sunrise: -7, dhuhr: 5, asr: 4, maghrib: 7));
      case CalculationMethod.dubai:
        return CalculationParameters(
                fajrAngle: 18.2, ishaAngle: 18.2, method: this)
            .withMethodAdjustments(const PrayerAdjustments(
                sunrise: -3, dhuhr: 3, asr: 3, maghrib: 3));
      case CalculationMethod.jakim:
        return CalculationParameters(fajrAngle: 20, ishaAngle: 18, method: this)
            .withMethodAdjustments(const PrayerAdjustments(
                sunrise: -3, dhuhr: 3, asr: 3, maghrib: 3));
      case CalculationMethod.tunisia:
        return CalculationParameters(
            fajrAngle: 18, ishaAngle: 18, method: this);
      case CalculationMethod.algeria:
        return CalculationParameters(
            fajrAngle: 18, ishaAngle: 17, method: this);
      case CalculationMethod.kemenag:
        return CalculationParameters(
            fajrAngle: 20, ishaAngle: 18, method: this);
      case CalculationMethod.morocco:
        return CalculationParameters(
            fajrAngle: 19, ishaAngle: 17, method: this);
      case CalculationMethod.portugal:
        return CalculationParameters(
                fajrAngle: 18, ishaInterval: 77, method: this)
            .withMethodAdjustments(const PrayerAdjustments(maghrib: 3));
      case CalculationMethod.jordan:
        return CalculationParameters(fajrAngle: 18, ishaAngle: 18, method: this)
            .withMethodAdjustments(const PrayerAdjustments(maghrib: 5));
      case CalculationMethod.moonSightingCommittee:
        return CalculationParameters(fajrAngle: 18, ishaAngle: 18, method: this)
            .withMethodAdjustments(
                const PrayerAdjustments(dhuhr: 5, maghrib: 3));
      case CalculationMethod.other:
        return CalculationParameters(fajrAngle: 0, ishaAngle: 0, method: this);
    }
  }
}
