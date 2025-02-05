import 'package:flutter/material.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

class SalahBoxUseCase {
  /// Returns the localized name of the Salah based on its type.
  static String getSalahName(BuildContext context, SalahTimeState salahType) {
    final localization = IslamMobLocalizations.of(context);

    switch (salahType) {
      case SalahTimeStateFajir():
        return localization.fajr;
      case SalahTimeStateSunrise():
        return localization.sherooq;
      case SalahTimeStateZhur():
        return localization.zhur;
      case SalahTimeStateAsr():
        return localization.asr;
      case SalahTimeStateMaghrib():
        return localization.maghrib;
      case SalahTimeStateIsha():
        return localization.isha;
      case SalahTimeStateNone():
        return "";
    }
  }

  /// Returns the image path for the Salah type.
  static String getSalahImage(SalahTimeState salahType) {
    switch (salahType) {
      case SalahTimeStateFajir():
        return "assets/images/days/fajr.png";
      case SalahTimeStateSunrise():
        return "assets/images/days/sunrise.png";
      case SalahTimeStateZhur():
        return "assets/images/days/zhur.png";
      case SalahTimeStateAsr():
        return "assets/images/days/asr.png";
      case SalahTimeStateMaghrib():
        return "assets/images/days/maghrib.png";
      case SalahTimeStateIsha():
        return "assets/images/days/isha.png";
      case SalahTimeStateNone():
        return "";
    }
  }

  static String getTitleOfTheDay(BuildContext context, int index) {
    final localization = IslamMobLocalizations.of(context);

    final titles = {
      0: localization.threedaybefore,
      1: localization.twodaybefore,
      2: localization.yesterday,
      3: localization.today,
      4: localization.tomorrow,
      5: localization.aftertwoday,
      6: localization.afterthreeday,
    };

    return titles[index] ?? '';
  }
}
