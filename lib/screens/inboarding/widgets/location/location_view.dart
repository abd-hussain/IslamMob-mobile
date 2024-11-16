import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/location/bloc/location_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/utils/location_service.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocationInBoardingView extends StatelessWidget {
  final Function() onSelectLocation;

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
                final locationService = LocationService();

                final String location =
                    await locationService.getCurrentCountryCode();

                print(location);
              },
            )
          ],
        ),
      ),
    );
  }
}
