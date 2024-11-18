import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/open_mobile_settings.dart';

class NotificationPermissionView extends StatelessWidget {
  const NotificationPermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.notifications_active_outlined),
                  const SizedBox(width: 4),
                  CustomText(
                    title: AppLocalizations.of(context)!.allowNotifications,
                    fontSize: 16,
                    textColor: const Color(0xff444444),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!
                    .allowSendingNotificationsdetails,
                fontSize: 14,
                textColor: const Color(0xff444444),
                maxLins: 10,
                fontWeight: FontWeight.bold,
              ),
              CustomButton(
                enableButton: true,
                padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                buttonTitle:
                    AppLocalizations.of(context)!.nolocationPermissionButton,
                onTap: () async => await OpenMobileSettings().openAppSettings(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
