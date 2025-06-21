import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/open_mobile_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for requesting notification permission for Islamic prayer reminders.
///
/// This widget displays a permission request interface that explains to
/// Muslims why notification access is essential for prayer time reminders
/// and Islamic spiritual practices. It features:
/// - **Clear explanation** of why notifications are needed for Islamic practice
/// - **Direct settings access** for easy permission management
/// - **Islamic context** explaining the importance of prayer time reminders
/// - **User-friendly interface** with proper visual styling
///
/// Notification permission is crucial for Islamic apps as it enables prayer
/// time reminders, helping Muslims maintain their spiritual obligations
/// throughout the day. This widget helps Muslims understand the religious
/// importance of enabling notifications for their Islamic practice.
class NotificationPermissionView extends StatelessWidget {
  /// Creates a [NotificationPermissionView] widget.
  ///
  /// This widget displays the notification permission request interface with
  /// Islamic context and direct access to device settings for permission management.
  const NotificationPermissionView({super.key});

  /// Builds the notification permission request interface.
  ///
  /// This method constructs a permission request view featuring:
  /// - Header with notification icon and permission request title
  /// - Detailed explanation of why notifications are needed for prayer reminders
  /// - Settings button for direct access to permission management
  /// - Proper visual styling with shadows and rounded corners
  ///
  /// The interface helps Muslims understand the Islamic importance of
  /// prayer time notifications for maintaining their spiritual schedule.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: _buildNotificationContainer(context),
    );
  }

  Widget _buildNotificationContainer(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Container(
      decoration: _containerDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            _buildHeader(context, localize),
            const SizedBox(height: 4),
            _buildDescription(context, localize),
            _buildSettingsButton(context, localize),
          ],
        ),
      ),
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withValues(alpha: 0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // Shadow position
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context, IslamMobLocalizations localize) {
    return Row(
      children: [
        const Icon(Icons.notifications_active_outlined),
        const SizedBox(width: 4),
        CustomText(
          title: localize.allowNotifications,
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  Widget _buildDescription(
      BuildContext context, IslamMobLocalizations localize) {
    return CustomText(
      title: localize.allowSendingNotificationsdetails,
      fontSize: 14,
      color: const Color(0xff444444),
      maxLines: 10,
      fontWeight: FontWeight.bold,
    );
  }

  Widget _buildSettingsButton(
      BuildContext context, IslamMobLocalizations localize) {
    return CustomButton(
      isEnabled: true,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      title: localize.nolocationPermissionButton,
      onTap: () async {
        await OpenMobileSettingUseCase.openAppSettings();
      },
    );
  }
}
