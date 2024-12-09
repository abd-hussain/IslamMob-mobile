import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/location.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocationHavePermissionView extends StatelessWidget {
  final LocationModel locationModel;
  final Function() onConfirmationPress;

  const LocationHavePermissionView({
    super.key,
    required this.locationModel,
    required this.onConfirmationPress,
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
        locationModel.subCity != ""
            ? CustomText(
                title: locationModel.subCity,
                fontSize: 16,
                color: const Color(0xff292929),
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                maxLines: 2,
              )
            : const SizedBox.shrink(),
        CustomText(
          title: locationModel.thoroughfare,
          fontSize: 16,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
        ),
        CustomButton(
          isEnabled: true,
          title: AppLocalizations.of(context)!.locationPermissionSuccsesButton,
          onTap: () => onConfirmationPress(),
        ),
      ],
    );
  }
}
