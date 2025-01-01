import 'package:azkar/azkar.dart';
import 'package:islam_app/domain/model/salah_time_state.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';

class SalahTimeStateParser {
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

  static NotificationType getNextSalahNotificationType(SalahTimeState state) {
    switch (state) {
      case SalahTimeStateFajir():
        return NotificationType.fajir;
      case SalahTimeStateSunrise():
        return NotificationType.sunrise;
      case SalahTimeStateZhur():
        return NotificationType.zuhr;
      case SalahTimeStateAsr():
        return NotificationType.asr;
      case SalahTimeStateMaghrib():
        return NotificationType.maghrib;
      case SalahTimeStateIsha():
        return NotificationType.isha;
      case SalahTimeStateNone():
        return NotificationType.before15Minutes;
    }
  }
}
