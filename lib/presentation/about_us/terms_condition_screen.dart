import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/about_us/widgets/section_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsRepository.logEvent(name: "TermsConditionScreen");
    final localization = IslamMobLocalizations.of(context);

    return Scaffold(
      appBar: CustomAppBar(title: localization.termsandconditions),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionView(
                title: localization.termstitle1,
                descriptions: [localization.termsdesc1],
              ),
              SectionView(
                title: localization.termstitle2,
                descriptions: [localization.termsdesc2],
              ),
              SectionView(
                title: localization.termstitle3,
                descriptions: [
                  localization.termsdesc31,
                  localization.termsdesc32,
                  localization.termsdesc33,
                ],
              ),
              SectionView(
                title: localization.termstitle4,
                descriptions: [localization.termsdesc4],
              ),
              SectionView(
                title: localization.termstitle5,
                descriptions: [localization.termsdesc5],
              ),
              SectionView(
                title: localization.termstitle6,
                descriptions: [
                  localization.termsdesc61,
                  localization.termsdesc62,
                  localization.termsdesc63,
                  localization.termsdesc64,
                ],
              ),
              SectionView(
                title: localization.termstitle7,
                descriptions: [localization.termsdesc7],
              ),
              SectionView(
                title: localization.termstitle8,
                descriptions: [localization.termsdesc8],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
