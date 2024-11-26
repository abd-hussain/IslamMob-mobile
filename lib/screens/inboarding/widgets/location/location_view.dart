import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/app_model/location.dart';
import 'package:islam_app/screens/inboarding/widgets/location/bloc/location_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/sub_widgets/location_have_permission_view.dart';
import 'package:islam_app/screens/inboarding/widgets/sub_widgets/location_idle_view.dart';
import 'package:islam_app/screens/inboarding/widgets/sub_widgets/location_nothave_permission_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocationInBoardingView extends StatelessWidget {
  final Function(LocationModel locationModel) onSelectLocation;

  const LocationInBoardingView({super.key, required this.onSelectLocation});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationBloc(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
      title: AppLocalizations.of(context)!.mawaqeetalsalah,
      fontSize: 20,
      color: const Color(0xff007F37),
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the view based on the current location state
  Widget _buildStateView(BuildContext context) {
    return Expanded(
      child: BlocBuilder<LocationBloc, LocationState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          return _buildStateContent(state);
        },
      ),
    );
  }

  /// Returns the content based on the state status
  Widget _buildStateContent(LocationState state) {
    switch (state.status) {
      case LocationProcessStateIdl():
        return const LocationIdleView();
      case LocationProcessStateLoading():
        return const Center(
          child: CircularProgressIndicator(color: Color(0xff007F37)),
        );
      case LocationProcessStateNoPermission():
        return const LocationNothavePermissionView();
      case LocationProcessStateHavePermission():
        final modelState = LocationModel(
            country: state.countryName,
            city: state.cityName,
            subCity: state.subCityName,
            latitude: state.latitude,
            longitude: state.longitude,
            street: state.street,
            thoroughfare: state.thoroughfare);
        return LocationHavePermissionView(
          locationModel: modelState,
          onConfirmationPress: () => onSelectLocation(modelState),
        );
      default:
        return const SizedBox.shrink(); // Fallback in case of unknown state
    }
  }
}
