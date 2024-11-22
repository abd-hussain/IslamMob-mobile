import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TimeZoneView extends StatelessWidget {
  const TimeZoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomText(
            title: AppLocalizations.of(context)!.timezone,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            textColor: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: AppLocalizations.of(context)!.timezoneDetails,
            fontSize: 14,
            textColor: const Color(0xff444444),
            textAlign: TextAlign.center,
            maxLins: 2,
          ),
          //TODO
        ],
      ),
    );
  }
}
