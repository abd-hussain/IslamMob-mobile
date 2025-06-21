import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:location_manager/location_manager.dart';

/// A widget displayed when location permission is granted during onboarding.
///
/// This widget shows the detected location information to the user and
/// allows them to confirm that the location is correct. It displays
/// the country, city, subcity, and street information obtained from
/// the device's location services.
class LocationHavePermissionView extends StatelessWidget {
  /// The location model containing the detected location information.
  ///
  /// This includes details such as country, city, subcity, street,
  /// and coordinates obtained from the device's location services.
  final LocationModel locationModel;

  /// Callback function called when the user confirms the location.
  ///
  /// This function is invoked when the user taps the confirmation
  /// button to accept the detected location and proceed with setup.
  final Function() onConfirmationPress;

  /// Creates a [LocationHavePermissionView] widget.
  ///
  /// Both [locationModel] and [onConfirmationPress] are required.
  /// The [locationModel] contains the detected location data to display,
  /// and [onConfirmationPress] will be called when the user confirms the location.
  const LocationHavePermissionView({
    super.key,
    required this.locationModel,
    required this.onConfirmationPress,
  });

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: localization.locationPermissionSuccses,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomText(
          title: "${locationModel.country} - ${locationModel.city}",
          fontSize: 16,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
        ),
        if (locationModel.subCity != "")
          CustomText(
            title: locationModel.subCity ?? "",
            fontSize: 16,
            color: const Color(0xff292929),
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            maxLines: 2,
          )
        else
          const SizedBox.shrink(),
        CustomText(
          title: locationModel.thoroughfare ?? "",
          fontSize: 16,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
        ),
        CustomButton(
          isEnabled: true,
          title: localization.locationPermissionSuccsesButton,
          onTap: onConfirmationPress,
        ),
      ],
    );
  }
}
