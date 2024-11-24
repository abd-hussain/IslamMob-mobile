import 'package:flutter/material.dart';
import 'package:islam_app/models/app_model/pray_notification_settings.dart';
import 'package:islam_app/screens/pray_notification_setting/widgets/sub_widgets/notification_row_view.dart';

class NotificationView extends StatelessWidget {
  final List<PrayerNotification> prayerNotifications;
  const NotificationView({super.key, required this.prayerNotifications});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: const Offset(0, 0.1),
          ),
        ],
      ),
      child: Column(
        children: [
          for (final prayerNotification in prayerNotifications) ...[
            NotificationRowView(prayerNotification: prayerNotification),
            const Divider(height: 1, color: Colors.grey),
          ],
        ],
      ),
    );
  }
}
