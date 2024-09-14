import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class TitleTableWidget extends StatelessWidget {
  const TitleTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        // child: Column(
        //   children: [Text("Hello"), Text("World"), Text("Goodbye")].animate(interval: 400.ms).fade(duration: 300.ms),
        // )
        child: CustomText(
          title: AppLocalizations.of(context)!.selectLanguage,
          fontSize: 15,
          textColor: const Color(0xff034061),
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ).animate().fade(duration: 300.ms),
      ),
    );
  }
}
