import 'package:islam_mob_adhan/src/data/calendar_util.dart';

import 'calculation_parameters.dart';
import 'coordinates.dart';
import 'data/date_components.dart';
import 'data/time_components.dart';
import 'internal/solar_time.dart';
import 'madhab.dart';
import 'prayer.dart';

/// Represents prayer times for a given location and date.
class PrayerTimes {
  /// Coordinates of the location.
  final Coordinates coordinates;

  /// Parameters used for calculating prayer times.
  final CalculationParameters calculationParameters;

  /// UTC offset to adjust the calculated prayer times.
  final Duration? utcOffset;

  late DateComponents _dateComponents;

  late DateTime _fajr, _sunrise, _dhuhr, _asr, _maghrib, _isha;

  /// Time for Fajr prayer.
  DateTime get fajr => _fajr;

  /// Time for Sunrise.
  DateTime get sunrise => _sunrise;

  /// Time for Dhuhr (noon) prayer.
  DateTime get dhuhr => _dhuhr;

  /// Time for Asr prayer.
  DateTime get asr => _asr;

  /// Time for Maghrib prayer.
  DateTime get maghrib => _maghrib;

  /// Time for Isha prayer.
  DateTime get isha => _isha;

  /// Date components of the calculation.
  DateComponents get dateComponents => _dateComponents;

  /// Factory constructor for calculating prayer times for a specific date and UTC offset.
  /// [coordinates] the coordinates of the location
  /// [dateComponents] the date components for that location
  /// [calculationParameters] the parameters for the calculation
  factory PrayerTimes(
    Coordinates coordinates,
    DateComponents dateComponents,
    CalculationParameters calculationParameters, {
    Duration? utcOffset,
  }) {
    return PrayerTimes._(
      coordinates,
      CalendarUtil.resolveTimeByDateComponents(dateComponents),
      calculationParameters,
      utcOffset: utcOffset,
    );
  }

  /// Factory constructor for calculating today's prayer times.
  /// If you provide utcOffset then it will Output UTC with Offset Applied Times.
  /// [coordinates] the coordinates of the location
  /// [calculationParameters] the parameters for the calculation
  factory PrayerTimes.today(
    Coordinates coordinates,
    CalculationParameters calculationParameters, {
    Duration? utcOffset,
  }) {
    return PrayerTimes._(
      coordinates,
      CalendarUtil.resolveTimeByDateComponents(DateComponents.from(DateTime.now())),
      calculationParameters,
      utcOffset: utcOffset,
    );
  }

  /// Factory constructor for calculating prayer times in UTC.
  /// [coordinates] the coordinates of the location
  /// [dateComponents] the date components for that location
  /// [calculationParameters] the parameters for the calculation
  factory PrayerTimes.utc(
    Coordinates coordinates,
    DateComponents dateComponents,
    CalculationParameters calculationParameters,
  ) {
    return PrayerTimes._(
      coordinates,
      CalendarUtil.resolveTimeByDateComponents(dateComponents),
      calculationParameters,
      utcOffset: const Duration(),
    );
  }

  /// Factory constructor for calculating prayer times with a specified UTC offset.
  /// [coordinates] the coordinates of the location
  /// [dateComponents] the date components for that location
  /// [calculationParameters] the parameters for the calculation
  factory PrayerTimes.utcOffset(
    Coordinates coordinates,
    DateComponents dateComponents,
    CalculationParameters calculationParameters,
    Duration utcOffset,
  ) {
    return PrayerTimes._(
      coordinates,
      CalendarUtil.resolveTimeByDateComponents(dateComponents),
      calculationParameters,
      utcOffset: utcOffset,
    );
  }

  PrayerTimes._(
    this.coordinates,
    DateTime date,
    this.calculationParameters, {
    this.utcOffset,
  }) {
    _initializeTimes(date.toUtc());
  }

  /// Initializes prayer times based on solar time and calculation parameters.
  void _initializeTimes(DateTime date) {
    final solarTime = SolarTime(date, coordinates);
    _dateComponents = DateComponents.from(date);

    final transit = _calculateTransit(solarTime, date);
    final sunrise = _calculateSunrise(solarTime, date);
    final sunset = _calculateSunset(solarTime, date);
    final dhuhr = transit;
    final asr = _calculateAsr(solarTime, date);
    final fajr = _calculateFajr(solarTime, date, sunrise, sunset);
    final maghrib = _calculateMaghrib(solarTime, date, sunset);
    final isha = _calculateIsha(solarTime, date, sunset, sunrise);

    _applyAdjustments(fajr, sunrise, dhuhr, asr, maghrib, isha);
  }

  /// Calculates the transit (Dhuhr) time.
  /// Transit time is the time when the sun is at its highest point in the sky.
  /// - [solarTime]: The solar time for the given date.
  /// - [date]: The date for which the transit is calculated.
  DateTime _calculateTransit(SolarTime solarTime, DateTime date) {
    final timeComponents = TimeComponents.fromDouble(solarTime.transit);
    return timeComponents.applyToDate(date);
  }

  /// Calculates the time for Sunrise.
  DateTime _calculateSunrise(SolarTime solarTime, DateTime date) {
    final timeComponents = TimeComponents.fromDouble(solarTime.sunrise);
    return timeComponents.applyToDate(date);
  }

  /// Calculates the time for Sunset.
  DateTime _calculateSunset(SolarTime solarTime, DateTime date) {
    final timeComponents = TimeComponents.fromDouble(solarTime.sunset);
    return timeComponents.applyToDate(date);
  }

  /// Calculates the time for Asr prayer.
  DateTime _calculateAsr(SolarTime solarTime, DateTime date) {
    final shadowLength = calculationParameters.madhab.shadowLength;
    final timeComponents = TimeComponents.fromDouble(solarTime.afternoon(shadowLength));
    return timeComponents.applyToDate(date);
  }

  /// Calculates the time for Fajr prayer.
  DateTime _calculateFajr(SolarTime solarTime, DateTime date, DateTime sunrise, DateTime sunset) {
    final fajrAngle = -calculationParameters.fajrAngle;
    final value = solarTime.hourAngle(fajrAngle, false);

    if (value.isFinite) {
      final timeComponents = TimeComponents.fromDouble(value);
      return timeComponents.applyToDate(date);
    }

    // High-latitude adjustments if Fajr time is invalid.
    final nightPortions = calculationParameters.nightPortions();
    final nightLength = sunrise.millisecondsSinceEpoch - sunset.millisecondsSinceEpoch;
    final nightFraction = (nightLength * nightPortions.fajr).toInt();

    return sunrise.add(Duration(milliseconds: -nightFraction));
  }

  /// Calculates the time for Maghrib prayer.
  DateTime _calculateMaghrib(SolarTime solarTime, DateTime date, DateTime sunset) {
    if (calculationParameters.maghribAngle != null) {
      final angleBasedMaghrib = TimeComponents.fromDouble(
        solarTime.hourAngle(-calculationParameters.maghribAngle!, true),
      ).applyToDate(date);
      if (angleBasedMaghrib.isAfter(sunset)) {
        return angleBasedMaghrib;
      }
    }
    return sunset;
  }

  /// Calculates the time for Isha prayer.
  DateTime _calculateIsha(SolarTime solarTime, DateTime date, DateTime sunset, DateTime sunrise) {
    if (calculationParameters.ishaInterval > 0) {
      return sunset.add(Duration(minutes: calculationParameters.ishaInterval));
    }

    final ishaAngle = -calculationParameters.ishaAngle!;
    final value = solarTime.hourAngle(ishaAngle, true);

    if (value.isFinite) {
      final timeComponents = TimeComponents.fromDouble(value);
      return timeComponents.applyToDate(date);
    }

    // High-latitude adjustments if Isha time is invalid.
    final nightPortions = calculationParameters.nightPortions();
    final nightLength = sunrise.millisecondsSinceEpoch - sunset.millisecondsSinceEpoch;
    final nightFraction = (nightLength * nightPortions.isha).toInt();

    return sunset.add(Duration(milliseconds: nightFraction));
  }

  /// Applies adjustments to calculated prayer times.
  void _applyAdjustments(
      DateTime fajr, DateTime sunrise, DateTime dhuhr, DateTime asr, DateTime maghrib, DateTime isha) {
    _fajr = _adjustTime(fajr, calculationParameters.adjustments.fajr, calculationParameters.methodAdjustments.fajr);
    _sunrise = _adjustTime(
        sunrise, calculationParameters.adjustments.sunrise, calculationParameters.methodAdjustments.sunrise);
    _dhuhr = _adjustTime(dhuhr, calculationParameters.adjustments.dhuhr, calculationParameters.methodAdjustments.dhuhr);
    _asr = _adjustTime(asr, calculationParameters.adjustments.asr, calculationParameters.methodAdjustments.asr);
    _maghrib = _adjustTime(
        maghrib, calculationParameters.adjustments.maghrib, calculationParameters.methodAdjustments.maghrib);
    _isha = _adjustTime(isha, calculationParameters.adjustments.isha, calculationParameters.methodAdjustments.isha);

    if (utcOffset != null) {
      _applyUtcOffset();
    }
  }

  /// Adjusts a prayer time with specified adjustments.
  DateTime _adjustTime(DateTime time, int adjustment, int methodAdjustment) {
    return CalendarUtil.roundedMinute(time.add(Duration(minutes: adjustment + methodAdjustment))).toLocal();
  }

  /// Applies the UTC offset to all prayer times.
  void _applyUtcOffset() {
    _fajr = _fajr.toUtc().add(utcOffset!);
    _sunrise = _sunrise.toUtc().add(utcOffset!);
    _dhuhr = _dhuhr.toUtc().add(utcOffset!);
    _asr = _asr.toUtc().add(utcOffset!);
    _maghrib = _maghrib.toUtc().add(utcOffset!);
    _isha = _isha.toUtc().add(utcOffset!);
  }

  /// Returns the current prayer based on the current time.
  Prayer currentPrayer() => currentPrayerByDateTime(DateTime.now());

  /// Returns the current prayer at the specified [time].
  Prayer currentPrayerByDateTime(DateTime time) {
    final when = time.millisecondsSinceEpoch;
    if (isha.millisecondsSinceEpoch <= when) return Prayer.isha;
    if (maghrib.millisecondsSinceEpoch <= when) return Prayer.maghrib;
    if (asr.millisecondsSinceEpoch <= when) return Prayer.asr;
    if (dhuhr.millisecondsSinceEpoch <= when) return Prayer.dhuhr;
    if (sunrise.millisecondsSinceEpoch <= when) return Prayer.sunrise;
    if (fajr.millisecondsSinceEpoch <= when) {
      return Prayer.sunrise;
    }
    return Prayer.fajr;
  }

  /// Returns the next prayer based on the current time.
  Prayer nextPrayer({required DateTime currentTimeInUTC}) {
    if (currentTimeInUTC.isBefore(fajr)) return Prayer.fajr;
    if (currentTimeInUTC.isBefore(sunrise)) return Prayer.sunrise;
    if (currentTimeInUTC.isBefore(dhuhr)) return Prayer.dhuhr;
    if (currentTimeInUTC.isBefore(asr)) return Prayer.asr;
    if (currentTimeInUTC.isBefore(maghrib)) return Prayer.maghrib;
    if (currentTimeInUTC.isBefore(isha)) return Prayer.isha;
    return Prayer.none;
  }

  /// Returns the next prayer at the specified [time] UTC.
  Prayer nextPrayerByDateTime({required DateTime currentTimeInUTC}) {
    // Compare times directly using isBefore and isAfter
    if (currentTimeInUTC.isBefore(fajr)) {
      return Prayer.fajr; // Current time is before Fajr
    }

    if (currentTimeInUTC.isBefore(sunrise)) {
      return Prayer.sunrise; // Current time is before Sunrise
    }
    if (currentTimeInUTC.isBefore(dhuhr)) {
      return Prayer.dhuhr; // Current time is before Dhuhr
    }
    if (currentTimeInUTC.isBefore(asr)) {
      return Prayer.asr; // Current time is before Asr
    }
    if (currentTimeInUTC.isBefore(maghrib)) {
      return Prayer.maghrib; // Current time is before Maghrib
    }
    if (currentTimeInUTC.isBefore(isha)) {
      return Prayer.isha; // Current time is before Isha
    }

    return Prayer.none;
  }

  /// Returns the time for the specified [prayer].
  DateTime? timeForPrayer(Prayer prayer) {
    switch (prayer) {
      case Prayer.fajr:
        return fajr;
      case Prayer.sunrise:
        return sunrise;
      case Prayer.dhuhr:
        return dhuhr;
      case Prayer.asr:
        return asr;
      case Prayer.maghrib:
        return maghrib;
      case Prayer.isha:
        return isha;
      case Prayer.none:
        return null;
    }
  }
}
