import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/dialogs/share_app/share_dialog.dart';
import 'package:islam_app/shared_widgets/dialogs/support_us/support_dialog.dart';

class AboutIslamView extends StatelessWidget {
  /// Creates a [AboutIslamView] widget.
  const AboutIslamView({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildContainer(
            "assets/images/shareapp.png",
            localize.shareapp,
            localize.shareappDetails,
            () async {
              await FirebaseAnalyticsRepository.logEvent(
                name: "ShareAppFromHomeToolBar",
              );
              if (context.mounted) {
                await ShareDialog().dialog(context: context);
              }
            },
          ),
          const SizedBox(height: 16),
          _buildContainer(
            "assets/images/dontate.png",
            localize.donateapp,
            localize.donateappDetails,
            () async {
              await FirebaseAnalyticsRepository.logEvent(
                name: "SupportUsFromHomeToolBar",
              );
              if (context.mounted) {
                await SupportUsDialog().dialog(context: context);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildContainer(
    String imagePath,
    String title,
    String details,
    Function() onTap,
  ) {
    return Container(
      decoration: _containerDecoration(),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(child: Center(child: Image.asset(imagePath))),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: title,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    CustomText(
                      title: details,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: const Color(0xff292929),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: const Color(0xff292929).withValues(alpha: 0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // Shadow position
        ),
      ],
    );
  }
}
