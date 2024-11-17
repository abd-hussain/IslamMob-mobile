import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/location/bloc/location_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocationNothavePermissionView extends StatelessWidget {
  const LocationNothavePermissionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: AppLocalizations.of(context)!.whyyoushouldallowlocation,
            fontSize: 18,
            textColor: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLins: 4,
          ),
        ),
        CustomText(
          title: AppLocalizations.of(context)!.whyyoushouldallowlocationdetails,
          fontSize: 14,
          textColor: const Color(0xff292929),
          textAlign: TextAlign.center,
          maxLins: 4,
        ),
        CustomButton(
          enableButton: true,
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          buttonTitle: AppLocalizations.of(context)!.nolocationPermissionButton,
          onTap: () async {
            final mainContext = context.read<LocationBloc>();
            await mainContext.openAppSettings();
          },
        ),
      ],
    );
  }
}
