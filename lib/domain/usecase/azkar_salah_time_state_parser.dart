import 'package:azkar/azkar.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';

class AzkarSalahTimeStateParser {
  static AzkarSalahTimeState getSalahTimeState(SalahTimeState prayType) {
    switch (prayType) {
      case SalahTimeStateFajir():
        return const AzkarSalahTimeState.fajir();
      case SalahTimeStateSunrise():
        return const AzkarSalahTimeState.sunrise();
      case SalahTimeStateZhur():
        return const AzkarSalahTimeState.zhur();
      case SalahTimeStateAsr():
        return const AzkarSalahTimeState.asr();
      case SalahTimeStateMaghrib():
        return const AzkarSalahTimeState.maghrib();
      case SalahTimeStateIsha():
        return const AzkarSalahTimeState.isha();
      case SalahTimeStateNone():
        return const AzkarSalahTimeState.none();
    }
  }
}
