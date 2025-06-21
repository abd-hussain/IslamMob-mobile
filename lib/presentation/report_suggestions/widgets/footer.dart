import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A footer widget for the report and suggestion screen.
///
/// This widget displays footer text at the bottom of the report/suggestion
/// screen, providing additional context or instructions to users. The text
/// is centered, styled with a light gray color, and supports multiple lines
/// for longer messages.
class ReportSuggestionFooterView extends StatelessWidget {
  /// Creates a [ReportSuggestionFooterView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
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
