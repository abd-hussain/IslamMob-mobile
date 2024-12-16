import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/open_mobile_setting_usecase.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotificationPermissionView extends StatelessWidget {
  const NotificationPermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: _buildNotificationContainer(context),
    );
  }

  Widget _buildNotificationContainer(BuildContext context) {
    return Container(
      decoration: _containerDecoration(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _buildHeader(context),
            const SizedBox(height: 4),
            _buildDescription(context),
            _buildSettingsButton(context),
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
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // Shadow position
        ),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.notifications_active_outlined),
        const SizedBox(width: 4),
        CustomText(
          title: AppLocalizations.of(context)!.allowNotifications,
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  Widget _buildDescription(BuildContext context) {
    return CustomText(
      title: AppLocalizations.of(context)!.allowSendingNotificationsdetails,
      fontSize: 14,
      color: const Color(0xff444444),
      maxLines: 10,
      fontWeight: FontWeight.bold,
    );
  }

  Widget _buildSettingsButton(BuildContext context) {
    return CustomButton(
      isEnabled: true,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
      title: AppLocalizations.of(context)!.nolocationPermissionButton,
      onTap: () async {
        await OpenMobileSettingUseCase().openAppSettings();
      },
    );
  }
}
