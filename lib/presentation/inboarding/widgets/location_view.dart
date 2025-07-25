import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/inboarding/bloc/location/location_bloc.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/location_have_permission_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/location_idle_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/location_nothave_permission_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/location_select_manual_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:location_manager/location_manager.dart';
import 'package:lottie/lottie.dart';

/// A widget that displays the location setup screen during onboarding.
///
/// This widget handles location permission requests and allows users to
/// either grant location access for automatic prayer time calculations
/// or manually select their location. It manages different states including
/// idle, loading, permission denied, and location selection.
class LocationInBoardingView extends StatelessWidget {
  /// Callback function called when the user completes location setup.
  ///
  /// This function is invoked after the user either grants location permission
  /// and confirms their location, or manually selects their location.
  final Function() doneSelection;

  /// Creates a [LocationInBoardingView] widget.
  ///
  /// The [doneSelection] callback is required and will be called when
  /// the user successfully completes the location setup process.
  const LocationInBoardingView({super.key, required this.doneSelection});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationBloc(),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            _buildAnimation(),
            const SizedBox(height: 20),
            _buildHeader(context),
            _buildStateView(context),
          ],
        ),
      ),
    );
  }

  /// Builds the header animation
  Widget _buildAnimation() {
    return Center(
      child: Lottie.asset(
        'assets/lottie/Animation - 1731435312091.json',
        width: 200,
      ),
    );
  }

  /// Builds the header text
  Widget _buildHeader(BuildContext context) {
    return CustomText(
      title: IslamMobLocalizations.of(context).mawaqeetalsalah,
      fontSize: 20,
      color: const Color(0xff008480),
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the view based on the current location state
  Widget _buildStateView(BuildContext context) {
    return Expanded(
      child: BlocBuilder<LocationBloc, LocationState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: _buildStateContent,
      ),
    );
  }

  /// Returns the content based on the state status
  Widget _buildStateContent(BuildContext context, LocationState state) {
    switch (state.status) {
      case LocationProcessStateIdl():
        return const LocationIdleView();
      case LocationProcessStateLoading():
        return const Center(
          child: CircularProgressIndicator(color: Color(0xff008480)),
        );
      case LocationProcessStateNoPermission():
        return LocationNothavePermissionView(
          openManualSelection: () => context.read<LocationBloc>().add(
            const LocationEvent.changeLocationStatus(
              status: LocationProcessStateLocationManually(),
            ),
          ),
        );
      case LocationProcessStateLocationManually():
        return LocationSelectManualView(
          onSelectManualLocation: (countryName, lat, long) {
            context.read<LocationBloc>().add(
              LocationEvent.setCountryAndCityNames(
                location: LocationModel(
                  countryCode: "",
                  country: countryName,
                  city: countryName,
                  subCity: countryName,
                  street: "",
                  latitude: lat,
                  longitude: long,
                  thoroughfare: "",
                ),
              ),
            );
            context.read<LocationBloc>().add(
              const LocationEvent.setupLocation(),
            );
            doneSelection();
          },
        );
      case LocationProcessStateHavePermission():
        return LocationHavePermissionView(
          locationModel: state.location!,
          onConfirmationPress: () {
            context.read<LocationBloc>().add(
              const LocationEvent.setupLocation(),
            );
            doneSelection();
          },
        );
    }
  }
}
