import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/inboarding/bloc/location/location_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/show_toast.dart';
import 'package:location_manager/location_manager.dart';

/// A widget that displays the initial location permission request interface during onboarding.
///
/// This widget is shown when the app needs to request location permission from the user
/// for prayer time calculations. It provides:
/// - Explanatory text about why location access is needed for prayer times
/// - A button to trigger the location permission request
/// - Internet connectivity checking before attempting location access
/// - Integration with LocationBloc for state management
/// - Proper error handling for permission denial scenarios
///
/// The widget explains to users that location access is required for accurate
/// prayer time calculations based on their geographical position, which is
/// essential for Islamic prayer observance.
class LocationIdleView extends StatelessWidget {
  /// Creates a [LocationIdleView] widget.
  ///
  /// This widget is typically used during the onboarding flow when the app
  /// needs to request location permission for prayer time calculations.
  const LocationIdleView({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: localization.mawaqeetalsalahdetails,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomText(
          title: localization.mawaqeetalsalahdetails2,
          fontSize: 14,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
        ),
        const Expanded(child: SizedBox()),
        CustomButton(
          isEnabled: true,
          title: localization.allowgetlocation,
          onTap: () async {
            if (await NetworkUseCase.checkInternetConnection() == false) {
              if (context.mounted) {
                ShowToast.showInternetRequired(context);
              }
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
            final locationDetails = await LocationManagerBase()
                .getLocationDetails();

            if (locationDetails.containsKey('error')) {
              /// Handles the case when location permission is not granted
              locationBloc.add(
                const LocationEvent.changeLocationStatus(
                  status: LocationProcessStateNoPermission(),
                ),
              );
            } else {
              final location = LocationModel(
                countryCode:
                    (locationDetails['isoCountryCode'] as String?) ?? "",
                country: (locationDetails['country'] as String?) ?? "",
                city: (locationDetails['city'] as String?) ?? "",
                subCity: (locationDetails['subCity'] as String?) ?? "",
                street: (locationDetails['street'] as String?) ?? "",
                latitude: (locationDetails['latitude'] as double?) ?? 0.0,
                longitude: (locationDetails['longitude'] as double?) ?? 0.0,
                thoroughfare:
                    (locationDetails['thoroughfare'] as String?) ?? "",
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
}
