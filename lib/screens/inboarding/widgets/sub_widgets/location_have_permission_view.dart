import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocationHavePermissionView extends StatelessWidget {
  final String countryName;
  final String cityName;
  final String subCityName;
  final String street;
  final String thoroughfare;
  final String latitude;
  final String longitude;

  final Function() onConfirmationPress;

  const LocationHavePermissionView({
    super.key,
    required this.countryName,
    required this.cityName,
    required this.subCityName,
    required this.onConfirmationPress,
    required this.street,
    required this.thoroughfare,
    required this.latitude,
    required this.longitude,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: AppLocalizations.of(context)!.locationPermissionSuccses,
            fontSize: 18,
            textColor: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLins: 4,
          ),
        ),
        CustomText(
          title: "$countryName - $cityName",
          fontSize: 16,
          textColor: const Color(0xff292929),
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
        ),
        subCityName != ""
            ? CustomText(
                title: subCityName,
                fontSize: 16,
                textColor: const Color(0xff292929),
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                maxLins: 2,
              )
            : const SizedBox.shrink(),
        CustomText(
          title: thoroughfare,
          fontSize: 16,
          textColor: const Color(0xff292929),
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          title: "$latitude - $longitude",
          fontSize: 10,
          textColor: const Color(0xff292929),
          textAlign: TextAlign.center,
        ),
        CustomButton(
          enableButton: true,
          buttonTitle:
              AppLocalizations.of(context)!.locationPermissionSuccsesButton,
          onTap: () => onConfirmationPress(),
        ),
      ],
    );
  }
}
