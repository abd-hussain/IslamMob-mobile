import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:database_manager/database_manager.dart';
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
import 'package:islam_app/presentation/settings_tab/widgets/login_header.dart';
import 'package:islam_app/presentation/settings_tab/widgets/title_view.dart';
import 'package:islam_app/presentation/settings_tab/widgets/welcoming_header.dart';
import 'package:islam_app/shared_widgets/bottomsheet/are_you_sure_bottomsheet.dart';
import 'package:islam_app/shared_widgets/dialogs/share_app/share_dialog.dart';
import 'package:islam_app/shared_widgets/show_toast.dart';
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
    final bool isUserLoggedIn =
        DataBaseManagerBase.getFromDatabase(
          key: DatabaseUserCredentials.isUserLoggedIn,
          defaultValue: "",
        ) !=
        "";

    return Column(
      children: [
        const WelcomingHeader(),
        const SizedBox(height: 4),
        if (isUserLoggedIn)
          const SizedBox()
        else
          LoginHeader(
            onPress: () async {
              await FirebaseAnalyticsRepository.logEvent(
                name: "welcomeLoginScreenFromSettingsScreen",
              );
              await navigator.pushNamed(RoutesConstants.welcomeLoginScreen);
            },
          ),
        Expanded(
          child: ListView(
            children: [
              TitleView(title: localize.generalsettings),
              CollectionListOptionView(
                listOfOptions: [
                  ProfileOptions(
                    icon: Icons.calendar_month,
                    name: localize.calenderSettings,
                    onTap: () async {
                      await FirebaseAnalyticsRepository.logEvent(
                        name: "CalenderScreenFromSettingsScreen",
                      );
                      await navigator.pushNamed(RoutesConstants.calenderScreen);
                    },
                  ),
                  ProfileOptions(
                    icon: Icons.translate,
                    name: localize.changeSelectedLanguage,
                    onTap: () async => navigator.pushNamed(
                      RoutesConstants.changeLanguageScreen,
                    ),
                  ),
                  ProfileOptions(
                    icon: Icons.notification_important,
                    name: localize.notificationSettings,
                    onTap: () async => navigator.pushNamed(
                      RoutesConstants.prayNotificationSettingScreen,
                    ),
                  ),
                  ProfileOptions(
                    icon: Icons.settings,
                    name: localize.prayCalculationSettings,
                    onTap: () async => navigator.pushNamed(
                      RoutesConstants.prayCalculationSettingScreen,
                    ),
                  ),
                ],
              ),
              if (isUserLoggedIn)
                TitleView(title: localize.account_settings)
              else
                const SizedBox(),
              if (isUserLoggedIn)
                CollectionListOptionView(
                  listOfOptions: [
                    ProfileOptions(
                      icon: Icons.account_box,
                      name: localize.edit_profile,
                      onTap: () async => navigator.pushNamed(
                        RoutesConstants.editProfileScreen,
                      ),
                    ),

                    if (DataBaseManagerBase.getFromDatabase(
                          key: DatabaseUserCredentials.isSocialLogin,
                          defaultValue: true,
                        ) ==
                        false)
                      ProfileOptions(
                        icon: Icons.password,
                        name: localize.changePassword,
                        onTap: () async => navigator.pushNamed(
                          RoutesConstants.changePasswordScreen,
                        ),
                      ),
                    ProfileOptions(
                      icon: Icons.logout_outlined,
                      name: localize.logout,
                      onTap: () {
                        AreYouSureBottomsheet().buttomSheet(
                          context: context,
                          message: localize.areYouSureLogout,
                          sure: () async {
                            await FirebaseAuthRepository.signOut().then((
                              value,
                            ) async {
                              if (!value) {
                                return;
                              }

                              final mapToSave = {
                                DatabaseUserCredentials.isUserLoggedIn: "",
                                DatabaseUserCredentials.userEmail: "",
                                DatabaseUserCredentials.userPassword: "",
                                DatabaseUserCredentials.accessToken: "",
                              };
                              await DataBaseManagerBase.saveMultipleInDatabase(
                                data: mapToSave,
                              );
                              if (context.mounted) {
                                await Navigator.of(
                                  context,
                                  rootNavigator: true,
                                ).pushNamedAndRemoveUntil(
                                  RoutesConstants.mainContainer,
                                  (Route<dynamic> route) => false,
                                );
                              }
                            });
                          },
                        );
                      },
                    ),
                    ProfileOptions(
                      icon: Icons.delete_forever,
                      name: localize.delete_account,
                      onTap: () {
                        AreYouSureBottomsheet().buttomSheet(
                          context: context,
                          message: localize.areyousuredeleteaccount,
                          sure: () {
                            AreYouSureBottomsheet().buttomSheet(
                              context: context,
                              message: localize.accountInformationwillbedeleted,
                              sure: () async {
                                final String email =
                                    DataBaseManagerBase.getFromDatabase(
                                          key:
                                              DatabaseUserCredentials.userEmail,
                                          defaultValue: "",
                                        )
                                        as String;

                                final String password =
                                    DataBaseManagerBase.getFromDatabase(
                                          key: DatabaseUserCredentials
                                              .userPassword,
                                          defaultValue: "",
                                        )
                                        as String;

                                await FirebaseAuthRepository.deleteAccount(
                                  email: email,
                                  password: password,
                                ).then((value) async {
                                  if (!value) {
                                    return;
                                  }

                                  final mapToSave = {
                                    DatabaseUserCredentials.isUserLoggedIn: "",
                                    DatabaseUserCredentials.userEmail: "",
                                    DatabaseUserCredentials.userPassword: "",
                                    DatabaseUserCredentials.accessToken: "",
                                  };
                                  await DataBaseManagerBase.saveMultipleInDatabase(
                                    data: mapToSave,
                                  );
                                  if (context.mounted) {
                                    await Navigator.of(
                                      context,
                                      rootNavigator: true,
                                    ).pushNamedAndRemoveUntil(
                                      RoutesConstants.mainContainer,
                                      (Route<dynamic> route) => false,
                                    );
                                  }
                                });
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
                )
              else
                const SizedBox(),
              TitleView(title: localize.reachouttous),
              CollectionListOptionView(
                listOfOptions: [
                  ProfileOptions(
                    icon: Icons.bug_report,
                    name: localize.reportOrSuggestion,
                    onTap: () async => navigator.pushNamed(
                      RoutesConstants.reportOrSuggestionScreen,
                    ),
                  ),
                ],
              ),
              TitleView(title: localize.support),
              CollectionListOptionView(
                listOfOptions: [
                  ProfileOptions(
                    icon: Ionicons.sparkles,
                    name: localize.rateapp,
                    onTap: () async {
                      final bool internetStatus =
                          await NetworkUseCase.checkInternetConnection();

                      if (internetStatus == false) {
                        if (context.mounted) {
                          ShowToast.showInternetRequired(context);
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
                    },
                  ),
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
                        name: "ShareAppFromSettingsScreen",
                      );
                      if (context.mounted) {
                        await ShareDialog().dialog(context: context);
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 8),
              if (kIsWeb) const SizedBox() else const AddMobBanner(),
              const FooterView(),
              const SizedBox(height: 75),
            ],
          ),
        ),
      ],
    );
  }
}
