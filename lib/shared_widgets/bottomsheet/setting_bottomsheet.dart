import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:preferences/preferences.dart';

/// A utility class for displaying a settings bottom sheet.
///
/// This class provides functionality to show a modal bottom sheet with
/// quick access to various app settings including prayer calculation settings,
/// notification settings, location change, and cancel option. The bottom sheet
/// has a dark theme with rounded corners and provides navigation to different
/// settings screens.
class SettingBottomSheet {
  /// Displays the settings bottom sheet.
  ///
  /// Shows a modal bottom sheet with quick settings options including:
  /// - Prayer calculation settings
  /// - Notification settings
  /// - Change location settings (resets onboarding)
  /// - Cancel option
  ///
  /// The bottom sheet uses root navigator and has a dark background with
  /// rounded top corners. Each option navigates to the appropriate screen
  /// or performs the related action.
  ///
  /// The [context] parameter is required for showing the bottom sheet.
  Future<void> showBottomSheet({required BuildContext context}) {
    final localize = IslamMobLocalizations.of(context);
    final navigator = Navigator.of(context, rootNavigator: true);

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
                title: localize.quicksettings,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              _buildSettingsButton(
                context: context,
                title: localize.prayCalculationSettings,
                color: const Color(0xff008480),
                onPressed: () async => navigator.pushNamed(
                  RoutesConstants.prayCalculationSettingScreen,
                ),
              ),
              _buildSettingsButton(
                context: context,
                title: localize.notificationSettings,
                color: const Color(0xff008480),
                onPressed: () async => navigator.pushNamed(
                  RoutesConstants.prayNotificationSettingScreen,
                ),
              ),
              _buildSettingsButton(
                context: context,
                title: localize.changeLocationSettings,
                color: const Color(0xff008480),
                onPressed: () async {
                  final navigator = Navigator.of(context, rootNavigator: true);
                  await locator<IslamPreferences>().saveMultiValue(
                    data: {
                      DatabaseFieldInBoardingStageConstant.finishInBoarding:
                          null,
                      DatabaseFieldInBoardingStageConstant.inBoardingStage: 0,
                    },
                  );
                  await navigator.pushNamedAndRemoveUntil(
                    RoutesConstants.inBoardingScreen,
                    (Route<dynamic> route) => false,
                  );
                },
              ),
              _buildSettingsButton(
                context: context,
                title: localize.cancel,
                color: Colors.redAccent,
                onPressed: () {},
              ),
              const SizedBox(height: 25),
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
