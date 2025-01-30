import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/model/location.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/inboarding/bloc/location/location_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:location_manager/location_manager.dart';

class LocationIdleView extends StatelessWidget {
  const LocationIdleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: IslamMobLocalizations.of(context).mawaqeetalsalahdetails,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomText(
          title: IslamMobLocalizations.of(context).mawaqeetalsalahdetails2,
          fontSize: 14,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
        ),
        const Expanded(child: SizedBox()),
        CustomButton(
          isEnabled: true,
          title: IslamMobLocalizations.of(context).allowgetlocation,
          onTap: () async {
            if (await NetworkUseCase.checkInternetConeection() == false) {
              // ignore: use_build_context_synchronously
              showNoInternetConnection(context);
              return;
            }

            // ignore: use_build_context_synchronously
            final locationBloc = context.read<LocationBloc>();

            // Set state to loading
            locationBloc.add(
              const LocationEvent.changeLocationStatus(
                status: LocationProcessStateLoading(),
              ),
            );

            // Request location details
            final locationDetails =
                await LocationManagerBase().getLocationDetails();

            if (locationDetails.containsKey('error')) {
              /// Handles the case when location permission is not granted
              locationBloc.add(
                const LocationEvent.changeLocationStatus(
                  status: LocationProcessStateNoPermission(),
                ),
              );
            } else {
              final location = LocationModel(
                countryCode: locationDetails['isoCountryCode'] ?? "",
                country: locationDetails['country'] ?? "",
                city: locationDetails['city'] ?? "",
                subCity: locationDetails['subCity'] ?? "",
                street: locationDetails['street'] ?? "",
                latitude: locationDetails['latitude'] ?? "",
                longitude: locationDetails['longitude'] ?? "",
                thoroughfare: locationDetails['thoroughfare'] ?? "",
              );
              locationBloc.add(
                LocationEvent.setCountryAndCityNames(location: location),
              );

              locationBloc.add(
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

  void showNoInternetConnection(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.showSnackBar(
      SnackBar(
          content: Text(IslamMobLocalizations.of(context)
              .pleasecheckyourinternetconnection)),
    );
  }
}
