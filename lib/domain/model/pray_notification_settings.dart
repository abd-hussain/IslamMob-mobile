import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';

class PrayerNotification {
  final String title;
  final bool Function(PrayNotificationSettingState state) notificationSelector;
  final PrayNotificationSettingEvent Function(bool value) eventCreator;
  const PrayerNotification({
    required this.title,
    required this.notificationSelector,
    required this.eventCreator,
  });
}
