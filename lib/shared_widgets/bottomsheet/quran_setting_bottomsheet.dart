import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class QuranSettingBottomsheet {
  Future<void> showBottomSheet({
    required BuildContext context,
    required void Function() showAdsCallback,
    required void Function() brigtnessCallback,
    required void Function() masaheefCallback,
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
                  title: localize.quransettings,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                _buildQuranSettingsButton(
                  context: context,
                  icon: Icons.sunny,
                  title: localize.quranSettingLighting,
                  onPressed: brigtnessCallback,
                ),
                const Divider(color: Colors.white),
                _buildQuranSettingsButton(
                  context: context,
                  icon: Icons.library_books,
                  title: localize.quranSettingMushaf,
                  onPressed: masaheefCallback,
                ),
                const Divider(color: Colors.white),
                _buildQuranSettingsButton(
                  context: context,
                  icon: Icons.ads_click,
                  title: localize.quranSettingSupportUs,
                  onPressed: showAdsCallback,
                ),
                const Divider(color: Colors.white),
              ],
            ),
          );
        });
  }

  /// Builds a settings button with common styling
  Widget _buildQuranSettingsButton({
    required BuildContext context,
    required String title,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: CustomText(
        title: title,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 15,
        color: Colors.white,
      ),
      onTap: () {
        Navigator.pop(context);
        onPressed();
      },
    );
  }
}
