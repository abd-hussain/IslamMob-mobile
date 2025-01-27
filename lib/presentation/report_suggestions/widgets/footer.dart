import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class ReportSuggestionFooterView extends StatelessWidget {
  const ReportSuggestionFooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: CustomText(
          title: IslamMobLocalizations.of(context).reportFooterText,
          fontSize: 10,
          maxLines: 2,
          textAlign: TextAlign.center,
          color: const Color(0xffBFBFBF),
        ),
      ),
    );
  }
}
