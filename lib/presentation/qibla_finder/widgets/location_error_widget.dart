import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/open_mobile_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class LocationErrorWidget extends StatelessWidget {
  const LocationErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const errorColor = Color(0xffb00020);
    final localize = IslamMobLocalizations.of(context);

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(
            Icons.location_off,
            size: 150,
            color: errorColor,
          ),
          const SizedBox(height: 8),
          CustomText(
            title: localize.allowLocations,
            fontSize: 16,
            color: const Color(0xffb00020),
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 8),
          _buildDescription(context, localize),
          const SizedBox(height: 16),
          _buildSettingsButton(context, localize),
        ],
      ),
    );
  }

  Widget _buildDescription(
      BuildContext context, IslamMobLocalizations localize) {
    return CustomText(
      title: localize.allowLocationDetails,
      fontSize: 14,
      color: const Color(0xffb00020),
      maxLines: 10,
      textAlign: TextAlign.center,
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
