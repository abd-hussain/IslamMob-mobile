import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/other_notification_view.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/pray_notification_view.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/quick_notification_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays a comprehensive list of notification settings for the Islamic app.
///
/// This widget organizes notification settings into three main categories:
/// 1. **Quick Notifications** - Fast access to common notification toggles
/// 2. **Prayer Notifications** - Settings for the five daily prayer notifications
/// 3. **Other Notifications** - Additional Islamic reminders and notifications
///
/// Each section is clearly labeled with localized titles and contains relevant
/// notification controls. The widget uses a scrollable layout to accommodate
/// all settings comfortably on different screen sizes.
///
/// The widget requires localization data to display section titles and
/// notification labels in the user's preferred language.
class NotificationSettingsList extends StatelessWidget {
  /// The localization object containing translated strings for the UI.
  ///
  /// This object provides access to localized text for section titles,
  /// notification labels, and other UI elements displayed in the settings list.
  final IslamMobLocalizations localization;

  /// Creates a [NotificationSettingsList] widget.
  ///
  /// The [localization] parameter is required to provide translated text
  /// for the various sections and notification settings.
  const NotificationSettingsList({super.key, required this.localization});

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
