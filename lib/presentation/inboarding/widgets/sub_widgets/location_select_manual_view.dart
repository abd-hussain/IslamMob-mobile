import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/countries_location_manually_usecase.dart';
import 'package:islam_app/domain/usecase/open_mobile_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/select_location_tile_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class LocationSelectManualView extends StatelessWidget {
  final Function(String countryName, String lat, String long)
      onSelectManualLocation;
  const LocationSelectManualView(
      {super.key, required this.onSelectManualLocation});

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    final countriesCitiesLocationManually =
        CountriesLocationManuallyUseCase.getCountriesCitiesLocationManually(
            context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: localization.selectLocationManually,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
        CustomText(
          title: localization.selectLocationManuallyDetails,
          fontSize: 14,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
          maxLines: 4,
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
              itemCount: countriesCitiesLocationManually.length,
              itemBuilder: (listContext, index) {
                return SelectLocationTileView(
                  chooseLocation: countriesCitiesLocationManually[index],
                  onTap: onSelectManualLocation,
                );
              }),
        ),
        TextButton(
          onPressed: () async => OpenMobileSettingUseCase.openAppSettings(),
          child: CustomText(
              title: localization.nolocationPermissionButton,
              fontSize: 16,
              color: Colors.blue),
        ),
      ],
    );
  }
}
