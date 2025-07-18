import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:permission_handler/permission_handler.dart'
    as OpenMobileSettingUseCase;

class InternetConnectionView extends StatelessWidget {
  const InternetConnectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: _buildInternetContainer(context),
    );
  }

  Widget _buildInternetContainer(BuildContext context) {
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
        const Icon(Icons.location_pin),
        const SizedBox(width: 4),
        CustomText(
          title: localize.internetconnection,
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  Widget _buildDescription(
    BuildContext context,
    IslamMobLocalizations localize,
  ) {
    return CustomText(
      title: localize.internetConnectionDisableCanGiveWrongTimes,
      fontSize: 14,
      color: const Color(0xff444444),
      maxLines: 10,
      fontWeight: FontWeight.bold,
    );
  }

  Widget _buildSettingsButton(
    BuildContext context,
    IslamMobLocalizations localize,
  ) {
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
