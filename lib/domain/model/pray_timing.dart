class PrayTimingModel {
  String fajir;
  String sunrise;
  String dhuhr;
  String asr;
  String maghrib;
  String isha;
  String middleOfTheNight;
  String lastThirdOfTheNight;
  PrayTimingModel({
    required this.fajir,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
    required this.middleOfTheNight,
    required this.lastThirdOfTheNight,
  });
}

class PrayTimingDateTimeModel {
  DateTime fajir;
  DateTime sunrise;
  DateTime dhuhr;
  DateTime asr;
  DateTime maghrib;
  DateTime isha;
  DateTime middleOfTheNight;
  DateTime lastThirdOfTheNight;
  PrayTimingDateTimeModel({
    required this.fajir,
    required this.sunrise,
    required this.dhuhr,
    required this.asr,
    required this.maghrib,
    required this.isha,
    required this.middleOfTheNight,
    required this.lastThirdOfTheNight,
  });
}
