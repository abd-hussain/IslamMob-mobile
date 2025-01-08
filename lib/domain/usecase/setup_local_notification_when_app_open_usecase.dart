import 'package:islam_app/domain/repository/local_notifications.dart';

class SetupLocalNotificationWhenAppOpenUseCase {
  final LocalNotificationRepository _localNotificationRepository =
      LocalNotificationRepository();
  Future<void> call() async {
    await _localNotificationRepository.cancelAllNotifications();
  }
}
