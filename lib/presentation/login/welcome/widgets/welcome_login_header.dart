import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class WelcomeLoginHeader extends StatelessWidget {
  const WelcomeLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/logoz/logo.png", height: 150, width: 150),
        Center(
          child: CustomText(
            title: localizations.appName,
            fontSize: 20,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
          ),
        ),
        Center(
          child: CustomText(
            title: localizations.appshortdesc,
            fontSize: 15,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
