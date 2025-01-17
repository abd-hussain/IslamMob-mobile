import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/open_mobile_setting_usecase.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocationErrorWidget extends StatelessWidget {
  const LocationErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const errorColor = Color(0xffb00020);

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
            title: AppLocalizations.of(context)!.allowLocations,
            fontSize: 16,
            color: const Color(0xffb00020),
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 8),
          _buildDescription(context),
          const SizedBox(height: 16),
          _buildSettingsButton(context),
        ],
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return CustomText(
      title: AppLocalizations.of(context)!.allowLocationDetails,
      fontSize: 14,
      color: const Color(0xffb00020),
      maxLines: 10,
      textAlign: TextAlign.center,
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
