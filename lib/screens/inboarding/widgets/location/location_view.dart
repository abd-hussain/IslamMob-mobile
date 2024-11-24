import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/location/bloc/location_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/sub_widgets/location_have_permission_view.dart';
import 'package:islam_app/screens/inboarding/widgets/sub_widgets/location_idle_view.dart';
import 'package:islam_app/screens/inboarding/widgets/sub_widgets/location_nothave_permission_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocationInBoardingView extends StatelessWidget {
  final Function({
    required String country,
    required String city,
    required String subCity,
    required String street,
    required String latitude,
    required String longitude,
    required String thoroughfare,
  }) onSelectLocation;

  const LocationInBoardingView({super.key, required this.onSelectLocation});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationBloc(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Lottie.asset(
                'assets/lottie/Animation - 1731435312091.json',
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            CustomText(
              title: AppLocalizations.of(context)!.mawaqeetalsalah,
              fontSize: 20,
              textColor: const Color(0xff007F37),
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: BlocBuilder<LocationBloc, LocationState>(
                buildWhen: (previous, current) =>
                    previous.status != current.status,
                builder: (context, state) {
                  switch (state.status) {
                    case LocationProcessStateIdl():
                      return const LocationIdleView();
                    case LocationProcessStateLoading():
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xff007F37),
                        ),
                      );
                    case LocationProcessStateNoPermission():
                      return const LocationNothavePermissionView();
                    case LocationProcessStateHavePermission():
                      return LocationHavePermissionView(
                        countryName: state.countryName,
                        cityName: state.cityName,
                        subCityName: state.subCityName,
                        street: state.street,
                        thoroughfare: state.thoroughfare,
                        latitude: state.latitude,
                        longitude: state.longitude,
                        onConfirmationPress: () => onSelectLocation(
                          country: state.countryName,
                          city: state.cityName,
                          subCity: state.subCityName,
                          latitude: state.latitude,
                          longitude: state.longitude,
                          street: state.street,
                          thoroughfare: state.thoroughfare,
                        ),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
