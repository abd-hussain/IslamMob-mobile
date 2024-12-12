import 'package:islam_app/domain/repository/pray_manager.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';
import 'package:islam_mob_adhan/adhan.dart';

class NextPrayUsecase {
  final PrayManagerRepository prayManager;
  NextPrayUsecase(this.prayManager);

  DateTime? nextPrayerTime() {
    return prayManager.getNextPrayerWithTime().values.first;
  }

  SalahTimeState nextPrayerType() {
    final nextPrayer = prayManager.getNextPrayerWithTime().keys.first;

    switch (nextPrayer) {
      case Prayer.fajr:
        return const SalahTimeStateFajir();
      case Prayer.sunrise:
        return const SalahTimeStateSunrise();
      case Prayer.dhuhr:
        return const SalahTimeStateZhur();
      case Prayer.asr:
        return const SalahTimeStateAsr();
      case Prayer.maghrib:
        return const SalahTimeStateMaghrib();
      case Prayer.isha:
        return const SalahTimeStateIsha();
      case Prayer.none:
        return const SalahTimeStateNone();
    }
  }
}
