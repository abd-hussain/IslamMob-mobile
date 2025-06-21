import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/open_mobile_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget displayed when location permission is denied during onboarding.
///
/// This widget explains why location access is important for the app and
/// provides two options: opening device settings to grant permission or
/// proceeding with manual location selection. It shows educational content
/// about the benefits of allowing location access for prayer time calculations.
class LocationNothavePermissionView extends StatelessWidget {
  /// Callback function to open manual location selection.
  ///
  /// This function is called when the user chooses to manually select
  /// their location instead of granting location permission.
  final Function() openManualSelection;

  /// Creates a [LocationNothavePermissionView] widget.
  ///
  /// The [openManualSelection] callback is required and will be called
  /// when the user opts to manually select their location.
  const LocationNothavePermissionView({
    super.key,
    required this.openManualSelection,
  });

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: localization.whyyoushouldallowlocation,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomText(
          title: localization.whyyoushouldallowlocationdetails,
          fontSize: 14,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
          maxLines: 4,
        ),
        CustomButton(
          isEnabled: true,
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          title: localization.nolocationPermissionButton,
          onTap: () async => OpenMobileSettingUseCase.openAppSettings(),
        ),
        CustomButton(
          isEnabled: true,
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          title: localization.selectLocationManually,
          onTap: openManualSelection,
        ),
      ],
    );
  }
}
