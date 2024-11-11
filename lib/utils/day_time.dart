import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DayTime {
  String gettheCorrentImageDependOnCurrentTime() {
    final currentTime = DateTime.now();
    if (currentTime.hour > 8 && currentTime.hour < 18) {
      return "assets/images/days/sun.png";
    }
    return "assets/images/days/moon.png";
  }

  String getCurrentTimeMelady() {
    final now = DateTime.now();
    return DateFormat('dd/MM/yyyy').format(now);
  }

  String getCurrentTimeHejri() {
    final now = HijriCalendar.now();
    final xx = now.toFormat("dd/MM/yyyy");
    return xx;
  }

  String getDayName(BuildContext context) {
    final now = DateTime.now();
    final today = DateFormat('EEEE').format(now);

    switch (today) {
      case "Sunday":
        return AppLocalizations.of(context)!.sunday;
      case "Monday":
        return AppLocalizations.of(context)!.monday;
      case "Tuesday":
        return AppLocalizations.of(context)!.tuesday;
      case "Wednesday":
        return AppLocalizations.of(context)!.wednesday;
      case "Thursday":
        return AppLocalizations.of(context)!.thursday;
      case "Friday":
        return AppLocalizations.of(context)!.friday;
      case "Saturday":
        return AppLocalizations.of(context)!.saturday;
      default:
        return AppLocalizations.of(context)!.sunday;
    }
  }
}
