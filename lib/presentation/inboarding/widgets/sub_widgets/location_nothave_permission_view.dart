import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/open_mobile_settings.dart';

class LocationNothavePermissionView extends StatelessWidget {
  const LocationNothavePermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: AppLocalizations.of(context)!.whyyoushouldallowlocation,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomText(
          title: AppLocalizations.of(context)!.whyyoushouldallowlocationdetails,
          fontSize: 14,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
          maxLines: 4,
        ),
        CustomButton(
          isEnabled: true,
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          title: AppLocalizations.of(context)!.nolocationPermissionButton,
          onTap: () async => await OpenMobileSettings().openAppSettings(),
        ),
      ],
    );
  }
}
