import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/open_mobile_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class LocationNothavePermissionView extends StatelessWidget {
  const LocationNothavePermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: IslamMobLocalizations.of(context).whyyoushouldallowlocation,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomText(
          title: IslamMobLocalizations.of(context).whyyoushouldallowlocationdetails,
          fontSize: 14,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
          maxLines: 4,
        ),
        CustomButton(
          isEnabled: true,
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          title: IslamMobLocalizations.of(context).nolocationPermissionButton,
          onTap: () async => OpenMobileSettingUseCase().openAppSettings(),
        ),
      ],
    );
  }
}
