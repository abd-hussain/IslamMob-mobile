import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/domain/model/profile_options.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/presentation/about_us/bloc/about_us_bloc.dart';
import 'package:islam_app/presentation/settings_tab/widgets/collection_list_option.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Screen displaying information about the Islam Mob application.
///
/// This screen provides comprehensive information about the Islam Mob app,
/// including its purpose, features, and Islamic mission. It serves as:
/// - **App introduction** explaining the Islamic features and benefits
/// - **Mission statement** about serving the Muslim community
/// - **Feature overview** highlighting prayer times, Quran, and Islamic tools
/// - **Legal information** with links to privacy policy and terms
/// - **Support options** including rewarded ads to support development
/// - **Version information** for user reference and support
///
/// The screen emphasizes the app's commitment to providing authentic Islamic
/// content and tools for Muslim users worldwide, with proper attribution
/// and transparency about the app's development and mission.
class AboutUsScreen extends StatelessWidget {
  /// Creates an [AboutUsScreen] widget.
  ///
  /// This screen displays comprehensive information about the Islam Mob
  /// application, its Islamic mission, features, and legal information.
  const AboutUsScreen({super.key});

  /// Builds the About Us screen with comprehensive app information.
  ///
  /// This method constructs the complete About Us interface including:
  /// - App logo and basic information header
  /// - Detailed descriptions of Islamic features and mission
  /// - Navigation options for privacy policy and terms
  /// - Support options through rewarded advertisements
  /// - Current app version and copyright information
  ///
  /// The screen uses BLoC pattern for state management, particularly for
  /// handling rewarded ad availability and display logic.
  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsRepository.logEvent(name: "AboutUsScreen");
    final navigator = Navigator.of(context, rootNavigator: true);
    final localize = IslamMobLocalizations.of(context);

    return BlocProvider(
      create: (context) =>
          AboutUsBloc()..add(AboutUsEvent.initializeRewardedAd()),
      child: Scaffold(
        appBar: CustomAppBar(title: localize.aboutus),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context, localize),
                _buildAppDescriptions(context, localize),
                const SizedBox(height: 8),
                _buildSecondaryDescription(context, localize),
                _buildProfileOptions(context, navigator, localize),
                _buildVersionInfo(context, localize),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Builds the header with logo and app information
  Widget _buildHeader(BuildContext context, IslamMobLocalizations localize) {
    return Row(
      children: [
        Image.asset("assets/images/logoz/logo.png", height: 100, width: 150),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: localize.appName,
                fontSize: 20,
                color: const Color(0xff292929),
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                title: localize.appshortdesc,
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
  Widget _buildAppDescriptions(
    BuildContext context,
    IslamMobLocalizations localize,
  ) {
    final descriptions = [
      localize.appmaindesc,
      localize.about1,
      localize.about2,
      localize.about3,
      localize.about4,
      localize.about5,
      localize.about6,
      localize.about7,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: descriptions
            .map(
              (desc) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: CustomText(
                  title: desc,
                  fontSize: 14,
                  color: const Color(0xff292929),
                  fontWeight: FontWeight.bold,
                  maxLines: 8,
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  /// Builds the secondary app description
  Widget _buildSecondaryDescription(
    BuildContext context,
    IslamMobLocalizations localize,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomText(
        title: localize.appmaindesc2,
        fontSize: 14,
        color: const Color(0xff292929),
        fontWeight: FontWeight.bold,
        maxLines: 3,
      ),
    );
  }

  /// Builds the profile options list
  Widget _buildProfileOptions(
    BuildContext context,
    NavigatorState navigator,
    IslamMobLocalizations localize,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BlocBuilder<AboutUsBloc, AboutUsState>(
        buildWhen: (previous, current) =>
            previous.rewardedAdExsist != current.rewardedAdExsist,
        builder: (context, state) {
          final bloc = context.read<AboutUsBloc>();

          final listOfOptions = <ProfileOptions>[
            if (state.rewardedAdExsist)
              ProfileOptions(
                icon: Ionicons.fitness,
                name: localize.supportus,
                onTap: () async {
                  await FirebaseAnalyticsRepository.logEvent(
                    name: "showRewardedAdFromAboutScreen",
                  );
                  await RewarderAds.showRewardedAd();
                  bloc.add(
                    AboutUsEvent.updateRewardedAd(
                      RewarderAds.mainRewardedAd != null,
                    ),
                  );
                },
              ),
            ProfileOptions(
              icon: Ionicons.receipt,
              name: localize.privacypolicy,
              onTap: () async =>
                  navigator.pushNamed(RoutesConstants.privacyPolicyScreen),
            ),
            ProfileOptions(
              icon: Ionicons.reader,
              name: localize.termsandconditions,
              onTap: () async =>
                  navigator.pushNamed(RoutesConstants.termsConditionScreen),
            ),
          ];

          return CollectionListOptionView(listOfOptions: listOfOptions);
        },
      ),
    );
  }

  /// Builds the version info and rights reserved text
  Widget _buildVersionInfo(
    BuildContext context,
    IslamMobLocalizations localize,
  ) {
    return Column(
      children: [
        Center(
          child: FutureBuilder<String>(
            initialData: "",
            future: locator<ApplicationVersionUsecase>()
                .getApplicationVersion(),
            builder: (context, snapshot) {
              return CustomText(
                title: "${localize.version} ${snapshot.data}",
                fontSize: 14,
                color: const Color(0xff292929),
              );
            },
          ),
        ),
        const SizedBox(height: 5),
        Center(
          child: CustomText(
            title: localize.rightsreserved,
            fontSize: 10,
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
