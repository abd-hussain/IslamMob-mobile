import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/open_mobile_settings.dart';

class NotificationNothavePermissionView extends StatelessWidget {
  final Function() skipButton;
  const NotificationNothavePermissionView(
      {super.key, required this.skipButton});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: AppLocalizations.of(context)!.whyyoushouldallownotification,
            fontSize: 18,
            textColor: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLins: 4,
          ),
        ),
        CustomText(
          title: AppLocalizations.of(context)!
              .whyyoushouldallownotificationdetails,
          fontSize: 14,
          textColor: const Color(0xff292929),
          textAlign: TextAlign.center,
          maxLins: 4,
        ),
        CustomButton(
          enableButton: true,
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          buttonTitle: AppLocalizations.of(context)!.nolocationPermissionButton,
          onTap: () async => await OpenMobileSettings().openAppSettings(),
        ),
        CustomButton(
          enableButton: true,
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          buttonTitle: AppLocalizations.of(context)!.notNowNotifications,
          buttonTitleColor: const Color(0xff292929),
          buttonColor: Colors.grey,
          onTap: () => skipButton(),
        ),
      ],
    );
  }
}
