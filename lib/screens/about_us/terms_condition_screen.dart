import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppBar(title: AppLocalizations.of(context)!.termsandconditions),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: AppLocalizations.of(context)!.termstitle1,
                fontSize: 16,
                textColor: const Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc1,
                fontSize: 16,
                maxLins: 5,
                textColor: const Color(0xff444444),
              ),
              const SizedBox(height: 20),
              CustomText(
                title: AppLocalizations.of(context)!.termstitle2,
                fontSize: 16,
                textColor: const Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc2,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 5,
              ),
              const SizedBox(height: 20),
              CustomText(
                title: AppLocalizations.of(context)!.termstitle3,
                fontSize: 16,
                textColor: const Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc31,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 5,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc32,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 5,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc33,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 5,
              ),
              const SizedBox(height: 20),
              CustomText(
                title: AppLocalizations.of(context)!.termstitle4,
                fontSize: 16,
                textColor: const Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc4,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 5,
              ),
              const SizedBox(height: 20),
              CustomText(
                title: AppLocalizations.of(context)!.termstitle5,
                fontSize: 16,
                textColor: const Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc5,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 5,
              ),
              const SizedBox(height: 20),
              CustomText(
                title: AppLocalizations.of(context)!.termstitle6,
                fontSize: 16,
                textColor: const Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc61,
                fontSize: 16,
                textColor: const Color(0xff444444),
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc62,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 3,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc63,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 3,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc64,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 3,
              ),
              const SizedBox(height: 20),
              CustomText(
                title: AppLocalizations.of(context)!.termstitle7,
                fontSize: 16,
                textColor: const Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc7,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 5,
              ),
              const SizedBox(height: 20),
              CustomText(
                title: AppLocalizations.of(context)!.termstitle8,
                fontSize: 16,
                textColor: const Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 4),
              CustomText(
                title: AppLocalizations.of(context)!.termsdesc8,
                fontSize: 16,
                textColor: const Color(0xff444444),
                maxLins: 5,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
