import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:custom_widgets/widgets/custom_text.dart';

class ReportSuggestionFooterView extends StatelessWidget {
  const ReportSuggestionFooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: CustomText(
          title: AppLocalizations.of(context)!.reportFooterText,
          fontSize: 10,
          maxLines: 2,
          textAlign: TextAlign.center,
          color: const Color(0xffBFBFBF),
        ),
      ),
    );
  }
}
