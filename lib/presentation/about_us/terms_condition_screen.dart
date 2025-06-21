import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/about_us/widgets/section_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';

/// Screen displaying the terms and conditions for the Islam Mob application.
///
/// This screen presents the comprehensive terms and conditions that govern
/// the use of the Islam Mob app. It covers:
/// - **Usage guidelines** for Islamic content and features
/// - **User responsibilities** when using religious content
/// - **Content accuracy** disclaimers for Islamic information
/// - **Intellectual property** rights for Islamic texts and resources
/// - **Service availability** and technical limitations
/// - **User conduct** expectations within the Islamic community context
/// - **Liability limitations** and legal protections
///
/// The terms and conditions ensure proper use of Islamic content while
/// protecting both users and developers, maintaining the integrity of
/// religious information provided through the application.
class TermsConditionScreen extends StatelessWidget {
  /// Creates a [TermsConditionScreen] widget.
  ///
  /// This screen displays the complete terms and conditions with organized
  /// sections covering all aspects of app usage and legal agreements.
  const TermsConditionScreen({super.key});

  /// Builds the terms and conditions screen with sectioned content.
  ///
  /// This method constructs the terms and conditions interface with:
  /// - Organized sections for different legal and usage topics
  /// - Scrollable content for comprehensive terms coverage
  /// - Localized text supporting multiple languages
  /// - Clear formatting for legal clarity and understanding
  ///
  /// The content is structured to provide clear guidelines for using
  /// the Islam Mob app's Islamic features and content responsibly.
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
