import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/models/app_model/profile_options.dart';
import 'package:islam_app/screens/settings_tab/bloc/setting_bloc.dart';
import 'package:islam_app/screens/settings_tab/widgets/collection_list_option.dart';
import 'package:islam_app/screens/settings_tab/widgets/footer.dart';
import 'package:islam_app/screens/settings_tab/widgets/profile_header.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/screens/settings_tab/widgets/title_view.dart';
import 'package:islam_app/shared_widgets/admob_banner.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingBloc(),
      child: Column(
        children: [
          const ProfileHeader(),
          Expanded(
            child: ListView(
              children: [
                TitleView(title: AppLocalizations.of(context)!.generalsettings),
                CollectionListOptionView(listOfOptions: [
                  // ProfileOptions(
                  //     icon: Icons.translate,
                  //     name: AppLocalizations.of(context)!.quranSettingLanguage,
                  //     selectedItem: context.read<SettingBloc>().box.get(DatabaseFieldConstant.selectedLanguage) == "en"
                  //         ? "English"
                  //         : "العربية",
                  //     onTap: () {}
                  //     //             //  _changeLanguage(context),
                  //     )
                ]),
                TitleView(title: AppLocalizations.of(context)!.reachouttous),
                CollectionListOptionView(listOfOptions: [
                  ProfileOptions(
                      icon: Icons.bug_report,
                      name: AppLocalizations.of(context)!.quranSettingReport,
                      onTap: () {
                        //  Navigator.of(context, rootNavigator: true).pushNamed(RoutesConstants.reportScreen, arguments: {
                        //   AppConstant.reportType: ReportPageType.issue,
                        // }),
                      }),
                ]),
                TitleView(title: AppLocalizations.of(context)!.support),
                CollectionListOptionView(listOfOptions: [
                  ProfileOptions(
                      icon: Ionicons.color_palette,
                      name: AppLocalizations.of(context)!.aboutus,
                      onTap: () {
                        // _openAboutUs(context),
                      })
                ]),
                const SizedBox(height: 8),
                if (kIsWeb) const SizedBox() else const AddMobBanner(),
                const FooterView(),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
