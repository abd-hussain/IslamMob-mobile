import 'package:azkar/model/azkar_salah_time.dart';
import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/home_tab/widgets/toolbar_shortcut/toolbar_cell.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';
import 'package:islam_app/shared_widgets/dialogs/share_app/share_dialog.dart';
import 'package:islam_app/shared_widgets/dialogs/support_us/support_dialog.dart';

/// Widget for displaying the main toolbar with Islamic app shortcuts.
///
/// This widget provides Muslims with quick access to all major Islamic
/// features and content through an organized grid of shortcut buttons.
/// It features:
/// - **Comprehensive Islamic features** including Quran, prayer times, and Hajj guidance
/// - **Organized layout** with multiple rows of Islamic content shortcuts
/// - **Analytics tracking** for user engagement and feature usage monitoring
/// - **Navigation integration** with proper routing to Islamic screens
/// - **Visual consistency** with Islamic color scheme and styling
///
/// The toolbar is the central navigation hub for the Islamic app, providing
/// Muslims with immediate access to spiritual content including Quran reading,
/// Islamic calendar, Hisn Al-Muslim supplications, Tasbeeh counter, Hajj/Omrah
/// guidance, Istikharah prayer, and post-prayer Azkar.
class ToolbarShortcutView extends StatelessWidget {
  /// The current prayer time state for context-aware Azkar navigation.
  final AzkarSalahTimeState salahTime;

  /// Creates a [ToolbarShortcutView] widget for Islamic app navigation.
  ///
  /// Parameters:
  /// - [salahTime]: Current prayer time state for appropriate Azkar content
  const ToolbarShortcutView({super.key, required this.salahTime});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);
    final navigator = Navigator.of(context, rootNavigator: true);
    final bool isUserLoggedIn =
        DataBaseManagerBase.getFromDatabase(
          key: DatabaseUserCredentials.isUserLoggedIn,
          defaultValue: "",
        ) !=
        "";

    return Container(
      decoration: _containerDecoration(),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ToolbarCell(
                    title: localize.qurankareem,
                    imagePath: "assets/images/toolbar/quran.png",
                    onTap: () => context.read<MainContainerBloc>().add(
                      MainContainerEvent.changeSelectedIndex(1),
                    ),
                  ),
                ),
                Expanded(
                  child: ToolbarCell(
                    title: localize.calenderSettings,
                    imagePath: "assets/images/toolbar/calender.png",
                    onTap: () async {
                      await FirebaseAnalyticsRepository.logEvent(
                        name: "CalenderScreenFromHomeToolBar",
                      );
                      await navigator.pushNamed(RoutesConstants.calenderScreen);
                    },
                  ),
                ),
                Expanded(
                  child: ToolbarCell(
                    title: localize.hesenAlMuslim,
                    imagePath: "assets/images/toolbar/hesenAlMuslim.png",
                    onTap: () async {
                      await FirebaseAnalyticsRepository.logEvent(
                        name: "hisnAlMuslimListScreenFromHomeToolBar",
                      );
                      await navigator.pushNamed(
                        RoutesConstants.hisnAlMuslimListScreen,
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ToolbarCell(
                    title: localize.shareapp,
                    imagePath: "assets/images/toolbar/share.png",
                    onTap: () async {
                      await FirebaseAnalyticsRepository.logEvent(
                        name: "ShareAppFromHomeToolBar",
                      );
                      if (context.mounted) {
                        await ShareDialog().dialog(context: context);
                      }
                    },
                  ),
                ),
                Expanded(
                  child: ToolbarCell(
                    title: localize.quranSettingSupportUs,
                    imagePath: "assets/images/toolbar/donate.png",
                    onTap: () async {
                      await FirebaseAnalyticsRepository.logEvent(
                        name: "SupportUsFromHomeToolBar",
                      );
                      if (context.mounted) {
                        await SupportUsDialog().dialog(context: context);
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ToolbarCell(
                    title: localize.tasbeeh,
                    imagePath: "assets/images/toolbar/tasbeeh.png",
                    onTap: () async {
                      await FirebaseAnalyticsRepository.logEvent(
                        name: "tasbeehScreenFromHomeToolBar",
                      );
                      await navigator.pushNamed(RoutesConstants.tasbeehScreen);
                    },
                  ),
                ),
                Expanded(
                  child: ToolbarCell(
                    title: localize.omrahTitle,
                    imagePath: "assets/images/toolbar/omra.png",
                    onTap: () async {
                      await FirebaseAnalyticsRepository.logEvent(
                        name: "OmrahScreenFromHomeToolBar",
                      );
                      await navigator.pushNamed(
                        RoutesConstants.hajjOmrahScreen,
                        arguments: {ArgumentConstant.hajjOmrahType: "omrah"},
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ToolbarCell(
                    title: localize.alhajjTitle,
                    imagePath: "assets/images/toolbar/hajj.png",
                    onTap: () async {
                      await FirebaseAnalyticsRepository.logEvent(
                        name: "HajjScreenFromHomeToolBar",
                      );
                      await navigator.pushNamed(
                        RoutesConstants.hajjOmrahScreen,
                        arguments: {ArgumentConstant.hajjOmrahType: "hajj"},
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ToolbarCell(
                    title: localize.estekaraTitle,
                    imagePath: "assets/images/toolbar/estekara.png",
                    onTap: () async {
                      await FirebaseAnalyticsRepository.logEvent(
                        name: "EstekaraScreenFromHomeToolBar",
                      );
                      await navigator.pushNamed(RoutesConstants.estekaraScreen);
                    },
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ToolbarCell(
                    title: localize.azkarTitle,
                    imagePath: "assets/images/toolbar/azkar_after_salah.png",
                    onTap: () async {
                      await FirebaseAnalyticsRepository.logEvent(
                        name: "AzkarAfterSalahScreenFromHomeToolBar",
                      );
                      await navigator.pushNamed(
                        RoutesConstants.azkarAfterSalahScreen,
                        arguments: {ArgumentConstant.salahTime: salahTime},
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ToolbarCell(
                    title: isUserLoggedIn
                        ? localize.edit_profile
                        : localize.login,
                    imagePath: "assets/images/toolbar/login.png",
                    onTap: () async {
                      if (isUserLoggedIn) {
                        await FirebaseAnalyticsRepository.logEvent(
                          name: "EditProfileScreenFromHomeScreen",
                        );
                        await navigator.pushNamed(
                          RoutesConstants.editProfileScreen,
                        );
                      } else {
                        await FirebaseAnalyticsRepository.logEvent(
                          name: "LoginScreenFromHomeScreen",
                        );
                        await navigator.pushNamed(RoutesConstants.loginScreen);
                      }
                    },
                  ),
                ),
                //     Expanded(
                //       child: ToolbarCell(
                //         title: "tracker",
                //         imagePath: "assets/images/toolbar/tracker.png",
                //         onTap: () async {
                //           // await FirebaseAnalyticsRepository.logEvent(
                //           //     name: "QiblaFinderScreenFromHomeToolBar");
                //           // await navigator.pushNamed(RoutesConstants.qiblaFinderScreen);
                //         },
                //       ),
                //     ),
                // Expanded(
                //   child: ToolbarCell(
                //     title: "Doaa",
                //     imagePath: "assets/images/toolbar/doaa.png",
                //     onTap: () async {
                //       // await FirebaseAnalyticsRepository.logEvent(
                //       //     name: "QiblaFinderScreenFromHomeToolBar");
                //       // await navigator.pushNamed(RoutesConstants.qiblaFinderScreen);
                //     },
                //   ),
                // ),
                //     Expanded(
                //       child: ToolbarCell(
                //         title: "hadeeth",
                //         imagePath: "assets/images/toolbar/hadeeth.png",
                //         onTap: () async {
                //           // await FirebaseAnalyticsRepository.logEvent(
                //           //     name: "QiblaFinderScreenFromHomeToolBar");
                //           // await navigator.pushNamed(RoutesConstants.qiblaFinderScreen);
                //         },
                //       ),
                //     ),
                //     Expanded(
                //       child: ToolbarCell(
                //         title: "seyam",
                //         imagePath: "assets/images/toolbar/seyam.png",
                //         onTap: () async {
                //           // await FirebaseAnalyticsRepository.logEvent(
                //           //     name: "QiblaFinderScreenFromHomeToolBar");
                //           // await navigator.pushNamed(RoutesConstants.qiblaFinderScreen);
                //         },
                //       ),
                //     ),

                //     Expanded(
                //       child: ToolbarCell(
                //         title: "library",
                //         imagePath: "assets/images/toolbar/library.png",
                //         onTap: () async {
                //           // await FirebaseAnalyticsRepository.logEvent(
                //           //     name: "QiblaFinderScreenFromHomeToolBar");
                //           // await navigator.pushNamed(RoutesConstants.qiblaFinderScreen);
                //         },
                //       ),
                //     ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: const Color(0xff292929),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
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
