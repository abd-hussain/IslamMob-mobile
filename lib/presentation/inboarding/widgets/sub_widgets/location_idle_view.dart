import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/location.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/presentation/inboarding/bloc/location/location_bloc.dart';
import 'package:islam_app/domain/repository/network_info.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/domain/repository/location.dart';

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
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomText(
          title: AppLocalizations.of(context)!.mawaqeetalsalahdetails2,
          fontSize: 14,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
        ),
        const Expanded(child: SizedBox()),
        CustomButton(
          isEnabled: true,
          title: AppLocalizations.of(context)!.allowgetlocation,
          onTap: () async {
            if (await locator<NetworkInfoRepository>().checkConnectivityOnLaunch() == false) {
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
            final locationDetails = await LocationRepository().getLocationDetails();

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
      SnackBar(content: Text(AppLocalizations.of(context)!.pleasecheckyourinternetconnection)),
    );
  }
}
