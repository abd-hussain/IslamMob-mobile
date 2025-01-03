import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            title: AppLocalizations.of(context)!.notificationPermissionSuccses,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomButton(
          isEnabled: true,
          title: AppLocalizations.of(context)!.startPreparingYourAccount,
          onTap: () => onConfirmationPress(),
        ),
      ],
    );
  }
}
