import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class PostReportBottomsheet {
  Future<void> showBottomSheet({
    required BuildContext context,
    required Function(String value) reportMessage,
  }) {
    final localize = IslamMobLocalizations.of(context);
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      useRootNavigator: true,
      backgroundColor: const Color(0xff292929),
      context: context,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomText(
                title: localize.post_report_content,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              _buildSettingsButton(
                context: context,
                title: localize.post_report_title_spam,
                description: localize.post_report_description_spam,
                onPressed: () => reportMessage(localize.post_report_title_spam),
              ),
              _buildSettingsButton(
                context: context,
                title: localize.post_report_title_hateSpeech,
                description: localize.post_report_description_hateSpeech,
                onPressed: () =>
                    reportMessage(localize.post_report_title_hateSpeech),
              ),
              _buildSettingsButton(
                context: context,
                title: localize.post_report_title_AdultContent,
                description: localize.post_report_description_AdultContent,
                onPressed: () =>
                    reportMessage(localize.post_report_title_AdultContent),
              ),
              _buildSettingsButton(
                context: context,
                title: localize.post_report_title_HarmfulContent,
                description: localize.post_report_description_HarmfulContent,
                onPressed: () =>
                    reportMessage(localize.post_report_title_HarmfulContent),
              ),
              _buildSettingsButton(
                context: context,
                title: localize.post_report_title_other,
                description: localize.post_report_description_other,
                onPressed: () =>
                    reportMessage(localize.post_report_title_other),
              ),
              _buildSettingsButton(
                context: context,
                title: localize.cancel,
                description: "",
                onPressed: () {},
              ),
              const SizedBox(height: 28),
            ],
          ),
        );
      },
    );
  }

  /// Builds a settings button with common styling
  Widget _buildSettingsButton({
    required BuildContext context,
    required String title,
    required String description,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
            onPressed();
          },
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white),
          ),
          child: Column(
            children: [
              CustomText(
                title: title,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              CustomText(title: description, fontSize: 12),
            ],
          ),
        ),
      ),
    );
  }
}
