import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/location/bloc/location_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/services/general/location_service.dart';

class LocationIdleView extends StatelessWidget {
  const LocationIdleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: AppLocalizations.of(context)!.mawaqeetalsalahdetails,
            fontSize: 18,
            textColor: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLins: 4,
          ),
        ),
        CustomText(
          title: AppLocalizations.of(context)!.mawaqeetalsalahdetails2,
          fontSize: 14,
          textColor: const Color(0xff292929),
          textAlign: TextAlign.center,
        ),
        const Expanded(child: SizedBox()),
        CustomButton(
          enableButton: true,
          buttonTitle: AppLocalizations.of(context)!.allowgetlocation,
          onTap: () async {
            final mainContext = context.read<LocationBloc>();
            mainContext.add(
              const LocationEvent.changeLocationStatus(
                status: LocationProcessStateLoading(),
              ),
            );
            final locationDetails =
                await LocationService().getLocationDetails();

            if (locationDetails.containsKey('error')) {
              mainContext.add(
                const LocationEvent.changeLocationStatus(
                  status: LocationProcessStateNoPermission(),
                ),
              );
            } else {
              final countryName = locationDetails['country'] ?? "";
              final cityName = locationDetails['city'] ?? "";
              final subCityName = locationDetails['subCity'] ?? "";
              final street = locationDetails['street'] ?? "";
              final thoroughfare = locationDetails['thoroughfare'] ?? "";
              final latitude = locationDetails['latitude'] ?? "";
              final longitude = locationDetails['longitude'] ?? "";

              mainContext.add(
                LocationEvent.setCountryAndCityNames(
                  cityName: cityName,
                  countryName: countryName,
                  subCityName: subCityName,
                  street: street,
                  latitude: latitude,
                  longitude: longitude,
                  thoroughfare: thoroughfare,
                ),
              );

              mainContext.add(
                const LocationEvent.changeLocationStatus(
                  status: LocationProcessStateHavePermission(),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
