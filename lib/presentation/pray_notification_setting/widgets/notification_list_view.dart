import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/other_notification_view.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/pray_notification_view.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/quick_notification_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class NotificationSettingsList extends StatelessWidget {
  final IslamMobLocalizations localization;

  const NotificationSettingsList({required this.localization});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 85),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          _SectionTitle(text: localization.notificationSettingQuick),
          const QuickNotificationView(),
          const SizedBox(height: 10),
          _SectionTitle(text: localization.notificationSettingPray),
          const PrayNotificationView(),
          const SizedBox(height: 10),
          _SectionTitle(text: localization.notificationSettingOther),
          const OtherNotificationView(),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;

  const _SectionTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: CustomText(
        title: text,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: const Color(0xff444444),
      ),
    );
  }
}
