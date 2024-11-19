import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/models/app_model/profile_options.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/settings_tab/widgets/collection_list_option.dart';
import 'package:islam_app/screens/settings_tab/widgets/footer.dart';
import 'package:islam_app/screens/settings_tab/widgets/profile_header.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/screens/settings_tab/widgets/title_view.dart';
import 'package:islam_app/shared_widgets/admob_banner.dart';
import 'package:islam_app/utils/constants/app_constant.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:share_plus/share_plus.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context, rootNavigator: true);

    return Column(
      children: [
        const ProfileHeader(),
        Expanded(
          child: ListView(
            children: [
              TitleView(title: AppLocalizations.of(context)!.generalsettings),
              CollectionListOptionView(listOfOptions: [
                ProfileOptions(
                  icon: Icons.translate,
                  name: AppLocalizations.of(context)!.changeSelectedLanguage,
                  onTap: () async => await navigator
                      .pushNamed(RoutesConstants.changeLanguageScreen),
                ),
                ProfileOptions(
                  icon: Icons.notification_important,
                  name: AppLocalizations.of(context)!.notificationSettings,
                  onTap: () async => await navigator
                      .pushNamed(RoutesConstants.prayNotificationSettingScreen),
                ),
                ProfileOptions(
                  icon: Icons.settings,
                  name: AppLocalizations.of(context)!.prayCalculationSettings,
                  onTap: () async => await navigator
                      .pushNamed(RoutesConstants.prayCalculationSettingScreen),
                ),
              ]),
              TitleView(title: AppLocalizations.of(context)!.reachouttous),
              CollectionListOptionView(listOfOptions: [
                ProfileOptions(
                  icon: Icons.bug_report,
                  name: AppLocalizations.of(context)!.reportOrSuggestion,
                  onTap: () async => await navigator
                      .pushNamed(RoutesConstants.reportOrSuggestionScreen),
                ),
              ]),
              TitleView(title: AppLocalizations.of(context)!.support),
              CollectionListOptionView(listOfOptions: [
                ProfileOptions(
                    icon: Ionicons.sparkles,
                    name: AppLocalizations.of(context)!.rateapp,
                    onTap: () {
                      RateMyApp rateMyApp = RateMyApp(
                        googlePlayIdentifier: "com.islammob.app",
                        appStoreIdentifier: "id6670502375",
                      );

                      rateMyApp.init().then((_) {
                        WidgetsBinding.instance.addPostFrameCallback((_) async {
                          await rateMyApp.showRateDialog(
                            context,
                            title: AppLocalizations.of(context)!.rateapponstore,
                            message: AppLocalizations.of(context)!
                                .rateapponstoremessage,
                            rateButton: AppLocalizations.of(context)!.rateapp,
                            laterButton: AppLocalizations.of(context)!.later,
                            noButton: AppLocalizations.of(context)!.close,
                          );
                        });
                      });
                    }),
                ProfileOptions(
                  icon: Ionicons.color_palette,
                  name: AppLocalizations.of(context)!.aboutus,
                  onTap: () async =>
                      await navigator.pushNamed(RoutesConstants.aboutUsScreen),
                ),
                ProfileOptions(
                  icon: Icons.share,
                  name: AppLocalizations.of(context)!.shareapp,
                  onTap: () async {
                    await Share.share(
                        "${AppLocalizations.of(context)!.shareMessageBody} \n Android : ${AppConstant.androidAppLink} \n iOS : ${AppConstant.iOSAppLink}",
                        subject:
                            AppLocalizations.of(context)!.shareMessageTitle);
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
