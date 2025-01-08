import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/domain/usecase/next_salah_notifcation_counter_usecase.dart';
import 'package:islam_app/domain/model/profile_options.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/settings_tab/widgets/collection_list_option.dart';
import 'package:islam_app/presentation/settings_tab/widgets/footer.dart';
import 'package:islam_app/presentation/settings_tab/widgets/profile_header.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/presentation/settings_tab/widgets/title_view.dart';
import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
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
                  icon: Icons.textsms_sharp,
                  name: "Test Notification Countdown",
                  onTap: () async {
                    await NextSalahNotificationCounterUsecase()
                        .handleNextSalahNotification(context);
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification before 15 min",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.before15Minutes(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification Fajir",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.fajir(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification Sunrise",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.sunrise(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification Zhur",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.zuhr(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification asr",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.asr(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification maghrib",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.maghrib(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification isha",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.isha(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification Reminder 1",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.reminderToOpenTheApp1(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification Reminder 2",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.reminderToOpenTheApp2(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification Midnight",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.midnight(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification Jom3a alkahf",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState
                          .jom3aSoratAlKahfReminder(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.textsms_sharp,
                  name: "Test Notification Jom3a reminder",
                  onTap: () async {
                    //add code execution
                    DateTime scheduledDate =
                        DateTime.now().add(const Duration(seconds: 5));
                    await LocalNotificationRepository().scheduleNotification(
                      id: 0,
                      scheduledTime: scheduledDate,
                      type: const NotificationTypeState.jom3aLastHourForDoaa(),
                      context: context,
                    );
                  },
                ),
                ProfileOptions(
                  icon: Icons.calendar_month,
                  name: AppLocalizations.of(context)!.calenderSettings,
                  onTap: () async =>
                      await navigator.pushNamed(RoutesConstants.calenderScreen),
                ),
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
                    onTap: () async {
                      final bool internetStatus =
                          await NetworkUseCase.checkInternetConeection();

                      if (internetStatus == false) {
                        if (context.mounted) {
                          showNoInternetConnection(context);
                        }
                        return;
                      }

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

  void showNoInternetConnection(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Text(
            AppLocalizations.of(context)!.pleasecheckyourinternetconnection),
      ),
    );
  }
}
