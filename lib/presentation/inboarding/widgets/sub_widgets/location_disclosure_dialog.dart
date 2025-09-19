import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A prominent disclosure dialog that appears before requesting location permission.
///
/// This dialog provides clear, prominent disclosure about location data collection
/// and usage as required by Google Play Store policies. It explains:
/// - What location data is collected (GPS coordinates and address information)
/// - How it's used (prayer times, Qibla direction, Islamic calendar)
/// - Where it's stored (locally on device)
/// - That it's not shared with third parties
/// - Why it's essential for the app's functionality
///
/// This disclosure must be shown before requesting location permission to comply
/// with Google Play Store's Prominent Disclosure & Consent Requirement.
class LocationDisclosureDialog extends StatelessWidget {
  /// Creates a [LocationDisclosureDialog] widget.
  ///
  /// This dialog provides prominent disclosure about location data collection
  /// and usage before requesting location permission from the user.
  const LocationDisclosureDialog({
    super.key,
    required this.onAccept,
    required this.onDecline,
  });

  /// Callback when user accepts the location data collection disclosure.
  final VoidCallback onAccept;

  /// Callback when user declines the location data collection disclosure.
  final VoidCallback onDecline;

  /// Shows the location disclosure dialog.
  ///
  /// This method displays a modal dialog with prominent disclosure about
  /// location data collection and usage, providing clear information about
  /// what data is collected, how it's used, and where it's stored.
  static Future<void> show(
    BuildContext context, {
    required VoidCallback onAccept,
    required VoidCallback onDecline,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) =>
          LocationDisclosureDialog(onAccept: onAccept, onDecline: onDecline),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    return AlertDialog(
      title: Row(
        children: [
          const Icon(Icons.location_on, color: Color(0xff008480), size: 28),
          const SizedBox(width: 8),
          Expanded(
            child: CustomText(
              title: localization.allowLocations,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xff008480),
            ),
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Prominent disclosure header
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xff008480).withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xff008480).withValues(alpha: 0.3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: localization.location_privecy_title,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff008480),
                  ),
                  const SizedBox(height: 8),
                  CustomText(
                    title: localization.locationDataDisclosure,
                    fontSize: 14,
                    color: const Color(0xff444444),
                    maxLines: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Additional context about Islamic functionality
            CustomText(
              title: localization.location_why_location,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xff444444),
            ),
            const SizedBox(height: 8),
            _buildBulletPoint(localization.location_desc_one),
            _buildBulletPoint(localization.location_desc_two),
            _buildBulletPoint(localization.location_desc_three),
            const SizedBox(height: 16),
            CustomText(
              title: localization.privacy_protected,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xff444444),
            ),
            const SizedBox(height: 8),
            _buildBulletPoint(localization.privacy_protected_desc_one),
            _buildBulletPoint(localization.privacy_protected_desc_two),
            _buildBulletPoint(localization.privacy_protected_desc_three),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: onDecline,
          child: CustomText(
            title: localization.location_not_now,
            fontSize: 16,
            color: const Color(0xff666666),
          ),
        ),
        CustomButton(
          isEnabled: true,
          title: localization.allow_location,
          onTap: onAccept,
        ),
      ],
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            title: "• ",
            fontSize: 14,
            color: const Color(0xff008480),
            fontWeight: FontWeight.bold,
          ),
          Expanded(
            child: CustomText(
              title: text,
              fontSize: 14,
              color: const Color(0xff444444),
            ),
          ),
        ],
      ),
    );
  }
}
