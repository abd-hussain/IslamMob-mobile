import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/about_us/widgets/section_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';

/// Screen displaying the privacy policy for the Islam Mob application.
///
/// This screen presents the comprehensive privacy policy that explains how
/// the Islam Mob app collects, uses, and protects user data. It covers:
/// - **Data collection practices** for Islamic app functionality
/// - **User privacy protection** measures and commitments
/// - **Islamic content usage** and attribution policies
/// - **Third-party service integration** and data sharing
/// - **User rights** regarding their personal information
/// - **Contact information** for privacy-related inquiries
///
/// The privacy policy is essential for transparency and compliance with
/// privacy regulations while maintaining trust with the Muslim community
/// that uses the app for religious purposes.
class PrivacyPolicyScreen extends StatelessWidget {
  /// Creates a [PrivacyPolicyScreen] widget.
  ///
  /// This screen displays the complete privacy policy with organized
  /// sections covering all aspects of data handling and user privacy.
  const PrivacyPolicyScreen({super.key});

  /// Builds the privacy policy screen with sectioned content.
  ///
  /// This method constructs the privacy policy interface with:
  /// - Organized sections for different privacy topics
  /// - Scrollable content for comprehensive policy coverage
  /// - Localized text supporting multiple languages
  /// - Clear formatting for easy reading and understanding
  ///
  /// The content is structured to provide transparency about how the
  /// Islam Mob app handles user data while providing Islamic services.
  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsRepository.logEvent(name: "PrivacyPolicyScreen");
    final localization = IslamMobLocalizations.of(context);

    return Scaffold(
      appBar: CustomAppBar(title: localization.privacypolicy),
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
                title: localization.location_privecy_title,
                descriptions: [localization.locationDataDisclosure],
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
