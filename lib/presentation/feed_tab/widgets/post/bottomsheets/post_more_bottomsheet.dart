import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class PostMoreBottomsheet {
  Future<void> showBottomSheet({
    required BuildContext context,
    required bool isMarkedAsBookmark,
    required bool isPostReportedBefore,
    required Function() onReportPressed,
    required Function() onSharePressed,
    required Function() onBookMarkPressed,
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
                title: localize.post_more_option,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              _buildSettingsButton(
                context: context,
                title: isMarkedAsBookmark
                    ? localize.post_add_to_bookmark
                    : localize.post_remove_from_bookmark,
                color: const Color(0xff008480),
                onPressed: onBookMarkPressed,
              ),
              _buildSettingsButton(
                context: context,
                title: localize.post_share_via,
                color: const Color(0xff008480),
                onPressed: onSharePressed,
              ),
              if (isPostReportedBefore == false)
                _buildSettingsButton(
                  context: context,
                  title: localize.post_report,
                  color: Colors.redAccent,
                  onPressed: onReportPressed,
                )
              else
                const SizedBox(),
              _buildSettingsButton(
                context: context,
                title: localize.cancel,
                color: Colors.white,
                onPressed: () {},
              ),
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
    required Color color,
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
          style: OutlinedButton.styleFrom(side: BorderSide(color: color)),
          child: CustomText(
            title: title,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
