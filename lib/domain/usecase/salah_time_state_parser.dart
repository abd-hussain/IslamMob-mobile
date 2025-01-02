import 'package:azkar/azkar.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';

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

  static NotificationTypeState getNextSalahNotificationType(
      SalahTimeState state) {
    switch (state) {
      case SalahTimeStateFajir():
        return const NotificationTypeState.fajir();
      case SalahTimeStateSunrise():
        return const NotificationTypeState.sunrise();
      case SalahTimeStateZhur():
        return const NotificationTypeState.zuhr();
      case SalahTimeStateAsr():
        return const NotificationTypeState.asr();
      case SalahTimeStateMaghrib():
        return const NotificationTypeState.maghrib();
      case SalahTimeStateIsha():
        return const NotificationTypeState.isha();
      case SalahTimeStateNone():
        return const NotificationTypeState.before15Minutes();
    }
  }
}
