import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/pray_notification_settings.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/sub_widgets/notification_row_view.dart';

class NotificationView extends StatelessWidget {
  final List<PrayerNotification> prayerNotifications;
  const NotificationView({super.key, required this.prayerNotifications});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: _containerDecoration(),
      child: Column(
        children: _buildNotificationRows(),
      ),
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0.5,
          blurRadius: 5,
          offset: const Offset(0, 0.1),
        ),
      ],
    );
  }

  List<Widget> _buildNotificationRows() {
    return prayerNotifications
        .expand((prayerNotification) => [
              NotificationRowView(prayerNotification: prayerNotification),
              const Divider(height: 1, color: Colors.grey),
            ])
        .toList();
  }
}
