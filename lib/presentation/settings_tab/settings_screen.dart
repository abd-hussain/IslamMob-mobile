import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/domain/model/profile_options.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/settings_tab/widgets/collection_list_option.dart';
import 'package:islam_app/presentation/settings_tab/widgets/footer.dart';
import 'package:islam_app/presentation/settings_tab/widgets/profile_header.dart';
import 'package:islam_app/presentation/settings_tab/widgets/title_view.dart';
import 'package:islam_app/shared_widgets/dialogs/share_app/share_dialog.dart';
import 'package:islam_app/shared_widgets/no_internet_toast.dart';
import 'package:rate_my_app/rate_my_app.dart';

/// The main settings screen that provides access to various app configurations.
///
/// This screen displays a comprehensive list of settings options organized into
/// categories including general settings (calendar, language, notifications,
/// prayer calculations), reach out options (bug reports), and support features
/// (rate app, about us, share app). It includes a profile header, categorized
/// option lists, and a footer with version information.
class SettingsScreen extends StatefulWidget {
  /// Creates a [SettingsScreen] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context, rootNavigator: true);
    final localize = IslamMobLocalizations.of(context);

    return Column(
      children: [
        const ProfileHeader(),
        Expanded(
          child: ListView(
            children: [
              TitleView(title: localize.generalsettings),
              CollectionListOptionView(listOfOptions: [
                ProfileOptions(
                  icon: Icons.calendar_month,
                  name: localize.calenderSettings,
                  onTap: () async {
                    await FirebaseAnalyticsRepository.logEvent(
                        name: "CalenderScreenFromSettingsScreen");
                    await navigator.pushNamed(RoutesConstants.calenderScreen);
                  },
                ),
                ProfileOptions(
                  icon: Icons.translate,
                  name: localize.changeSelectedLanguage,
                  onTap: () async =>
                      navigator.pushNamed(RoutesConstants.changeLanguageScreen),
                ),
                ProfileOptions(
                  icon: Icons.notification_important,
                  name: localize.notificationSettings,
                  onTap: () async => navigator
                      .pushNamed(RoutesConstants.prayNotificationSettingScreen),
                ),
                ProfileOptions(
                  icon: Icons.settings,
                  name: localize.prayCalculationSettings,
                  onTap: () async => navigator
                      .pushNamed(RoutesConstants.prayCalculationSettingScreen),
                ),
              ]),
              TitleView(title: localize.reachouttous),
              CollectionListOptionView(listOfOptions: [
                ProfileOptions(
                  icon: Icons.bug_report,
                  name: localize.reportOrSuggestion,
                  onTap: () async => navigator
                      .pushNamed(RoutesConstants.reportOrSuggestionScreen),
                ),
              ]),
              TitleView(title: localize.support),
              CollectionListOptionView(listOfOptions: [
                ProfileOptions(
                    icon: Ionicons.sparkles,
                    name: localize.rateapp,
                    onTap: () async {
                      final bool internetStatus =
                          await NetworkUseCase.checkInternetConeection();

                      if (internetStatus == false) {
                        if (context.mounted) {
                          NoInternetToast.show(context);
                        }
                        return;
                      }

                      final RateMyApp rateMyApp = RateMyApp(
                        googlePlayIdentifier: "com.islammob.app",
                        appStoreIdentifier: "id6670502375",
                      );

                      await rateMyApp.init().then((_) {
                        WidgetsBinding.instance.addPostFrameCallback((_) async {
                          await rateMyApp.showRateDialog(
                            context,
                            title: localize.rateapponstore,
                            message: localize.rateapponstoremessage,
                            rateButton: localize.rateapp,
                            laterButton: localize.later,
                            noButton: localize.close,
                          );
                        });
                      });
                    }),
                ProfileOptions(
                  icon: Ionicons.color_palette,
                  name: localize.aboutus,
                  onTap: () async =>
                      navigator.pushNamed(RoutesConstants.aboutUsScreen),
                ),
                ProfileOptions(
                  icon: Icons.share,
                  name: localize.shareapp,
                  onTap: () async {
                    await FirebaseAnalyticsRepository.logEvent(
                        name: "ShareAppFromSettingsScreen");
                    if (context.mounted) {
                      await ShareDialog().dialog(context: context);
                    }
                  },
                ),
              ]),
              const SizedBox(height: 8),
              if (kIsWeb) const SizedBox() else const AddMobBanner(),
              const FooterView(),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ],
    );
  }
}
