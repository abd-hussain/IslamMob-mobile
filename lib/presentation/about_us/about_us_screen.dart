import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/models/profile_options.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/about_us/bloc/about_us_bloc.dart';
import 'package:islam_app/presentation/settings_tab/widgets/collection_list_option.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics.instance.logEvent(name: "AboutUsScreen");
    final navigator = Navigator.of(context, rootNavigator: true);

    return BlocProvider(
      create: (context) => AboutUsBloc()..add(AboutUsEvent.initializeRewardedAd()),
      child: Scaffold(
        appBar: CustomAppBar(title: AppLocalizations.of(context)!.aboutus),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                _buildAppDescriptions(context),
                const SizedBox(height: 8),
                _buildSecondaryDescription(context),
                _buildProfileOptions(context, navigator),
                _buildVersionInfo(context),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the header with logo and app information
  Widget _buildHeader(BuildContext context) {
    return Row(
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
                color: const Color(0xff292929),
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                title: AppLocalizations.of(context)!.appshortdesc,
                fontSize: 12,
                color: const Color(0xff292929),
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Builds the main app descriptions
  Widget _buildAppDescriptions(BuildContext context) {
    final descriptions = [
      AppLocalizations.of(context)!.appmaindesc,
      AppLocalizations.of(context)!.about1,
      AppLocalizations.of(context)!.about2,
      AppLocalizations.of(context)!.about3,
      AppLocalizations.of(context)!.about4,
      AppLocalizations.of(context)!.about5,
      AppLocalizations.of(context)!.about6,
      AppLocalizations.of(context)!.about7,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: descriptions
            .map((desc) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: CustomText(
                    title: desc,
                    fontSize: 14,
                    color: const Color(0xff292929),
                    fontWeight: FontWeight.bold,
                    maxLines: 8,
                  ),
                ))
            .toList(),
      ),
    );
  }

  /// Builds the secondary app description
  Widget _buildSecondaryDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomText(
        title: AppLocalizations.of(context)!.appmaindesc2,
        fontSize: 14,
        color: const Color(0xff292929),
        fontWeight: FontWeight.bold,
        maxLines: 3,
      ),
    );
  }

  /// Builds the profile options list
  Widget _buildProfileOptions(BuildContext context, NavigatorState navigator) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<AboutUsBloc, AboutUsState>(
        buildWhen: (previous, current) => previous.rewardedAd != current.rewardedAd,
        builder: (context, state) {
          final listOfOptions = <ProfileOptions>[
            if (state.rewardedAd != null)
              ProfileOptions(
                icon: Ionicons.fitness,
                name: AppLocalizations.of(context)!.supportus,
                onTap: () {
                  if (state.rewardedAd != null) {
                    context.read<AboutUsBloc>().showRewardedAd(state.rewardedAd!);
                  }
                },
              ),
            ProfileOptions(
              icon: Ionicons.receipt,
              name: AppLocalizations.of(context)!.privacypolicy,
              onTap: () async => await navigator.pushNamed(RoutesConstants.privacyPolicyScreen),
            ),
            ProfileOptions(
              icon: Ionicons.reader,
              name: AppLocalizations.of(context)!.termsandconditions,
              onTap: () async => await navigator.pushNamed(RoutesConstants.termsConditionScreen),
            ),
          ];

          return CollectionListOptionView(listOfOptions: listOfOptions);
        },
      ),
    );
  }

  /// Builds the version info and rights reserved text
  Widget _buildVersionInfo(BuildContext context) {
    return Column(
      children: [
        Center(
          child: FutureBuilder<String>(
            initialData: "",
            future: ApplicationVersionUsecase().getApplicationVersion(),
            builder: (context, snapshot) {
              return CustomText(
                title: "${AppLocalizations.of(context)!.version} ${snapshot.data}",
                fontSize: 14,
                color: const Color(0xff292929),
              );
            },
          ),
        ),
        const SizedBox(height: 5),
        Center(
          child: CustomText(
            title: AppLocalizations.of(context)!.rightsreserved,
            fontSize: 10,
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
