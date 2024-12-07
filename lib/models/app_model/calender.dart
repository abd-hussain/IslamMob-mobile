class CalenderModel {
  final String dayName;
  final String dateHijri;
  final String dateMilady;
  final String fajirTime;
  final String sunriseTime;
  final String zhurTime;
  final String asrTime;
  final String magribTime;
  final String ishaTime;

  CalenderModel(
      {required this.dayName,
      required this.dateHijri,
      required this.dateMilady,
      required this.fajirTime,
      required this.sunriseTime,
      required this.zhurTime,
      required this.asrTime,
      required this.magribTime,
      required this.ishaTime});
}
