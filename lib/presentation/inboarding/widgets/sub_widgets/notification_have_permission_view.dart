import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class NotificationHavePermissionView extends StatelessWidget {
  final Function() onConfirmationPress;

  const NotificationHavePermissionView(
      {super.key, required this.onConfirmationPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title:
                IslamMobLocalizations.of(context).notificationPermissionSuccses,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomButton(
          isEnabled: true,
          title: IslamMobLocalizations.of(context).startPreparingYourAccount,
          onTap: onConfirmationPress,
        ),
      ],
    );
  }
}
