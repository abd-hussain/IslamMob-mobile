import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/models/app_model/profile_options.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/about_us/bloc/about_us_bloc.dart';
import 'package:islam_app/screens/settings_tab/widgets/collection_list_option.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/utils/version.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context, rootNavigator: true);

    return BlocProvider(
      create: (context) => AboutUsBloc(),
      child: Scaffold(
        appBar: CustomAppBar(title: AppLocalizations.of(context)!.aboutus),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logoz/logo.png",
                      height: 100,
                      width: 150,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            title: AppLocalizations.of(context)!.appName,
                            fontSize: 20,
                            textColor: const Color(0xff292929),
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            title: AppLocalizations.of(context)!.appshortdesc,
                            fontSize: 12,
                            textColor: const Color(0xff292929),
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: CustomText(
                    title: AppLocalizations.of(context)!.appmaindesc,
                    fontSize: 14,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                    maxLins: 7,
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: CustomText(
                    title: AppLocalizations.of(context)!.about1,
                    fontSize: 14,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: CustomText(
                    title: AppLocalizations.of(context)!.about2,
                    fontSize: 14,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: CustomText(
                    title: AppLocalizations.of(context)!.about3,
                    fontSize: 14,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: CustomText(
                    title: AppLocalizations.of(context)!.about4,
                    fontSize: 14,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: CustomText(
                    title: AppLocalizations.of(context)!.about5,
                    fontSize: 14,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: CustomText(
                    title: AppLocalizations.of(context)!.about6,
                    fontSize: 14,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: CustomText(
                    title: AppLocalizations.of(context)!.about7,
                    fontSize: 14,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: CustomText(
                    title: AppLocalizations.of(context)!.appmaindesc2,
                    fontSize: 14,
                    textColor: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                    maxLins: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: BlocBuilder<AboutUsBloc, AboutUsState>(
                    buildWhen: (previous, current) {
                      return previous.rewardedAd != current.rewardedAd;
                    },
                    builder: (context, state) {
                      List<ProfileOptions> listOfOptions = [];

                      if (state.rewardedAd != null) {
                        listOfOptions.add(
                          ProfileOptions(
                            icon: Ionicons.fitness,
                            name: AppLocalizations.of(context)!.supportus,
                            onTap: () async {
                              if (state.rewardedAd != null) {
                                context
                                    .read<AboutUsBloc>()
                                    .showRewardedAd(state.rewardedAd!);
                              }
                            },
                          ),
                        );
                      }

                      listOfOptions.add(ProfileOptions(
                        icon: Ionicons.receipt,
                        name: AppLocalizations.of(context)!.privacypolicy,
                        onTap: () async => await navigator
                            .pushNamed(RoutesConstants.privacypolicyScreen),
                      ));

                      listOfOptions.add(ProfileOptions(
                        icon: Ionicons.reader,
                        name: AppLocalizations.of(context)!.termsandconditions,
                        onTap: () async => await navigator
                            .pushNamed(RoutesConstants.termsconditionScreen),
                      ));

                      return CollectionListOptionView(
                        listOfOptions: listOfOptions,
                      );
                    },
                  ),
                ),
                Center(
                  child: FutureBuilder<String>(
                      initialData: "",
                      future: Version().getApplicationVersion(),
                      builder: (context, snapshot) {
                        return CustomText(
                          title:
                              "${AppLocalizations.of(context)!.version} ${snapshot.data}",
                          fontSize: 14,
                          textColor: const Color(0xff292929),
                        );
                      }),
                ),
                const SizedBox(height: 5),
                Center(
                  child: CustomText(
                    title: AppLocalizations.of(context)!.rightsreserved,
                    fontSize: 10,
                    textColor: const Color(0xff707070),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
