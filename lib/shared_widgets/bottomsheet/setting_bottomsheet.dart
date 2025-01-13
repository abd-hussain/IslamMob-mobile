import 'package:flutter/material.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingBottomSheet {
  Future<void> showBottomSheet({required BuildContext context}) {
    final localize = AppLocalizations.of(context)!;
    final navigator = Navigator.of(context, rootNavigator: true);

    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      enableDrag: true,
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
                onPressed: () async => await navigator
                    .pushNamed(RoutesConstants.prayCalculationSettingScreen),
              ),
              _buildSettingsButton(
                context: context,
                title: localize.notificationSettings,
                color: const Color(0xff008480),
                onPressed: () async => await navigator
                    .pushNamed(RoutesConstants.prayNotificationSettingScreen),
              ),
              _buildSettingsButton(
                context: context,
                title: localize.cancel,
                color: Colors.redAccent,
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
