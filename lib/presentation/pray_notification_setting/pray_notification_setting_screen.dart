import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/notification_list_save_button.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/notification_list_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';

/// A screen for managing prayer notification settings.
///
/// This screen allows users to configure notification settings for all five
/// daily prayers (Fajr, Dhuhr, Asr, Maghrib, Isha). Users can enable/disable
/// notifications for each prayer and customize notification sounds. The screen
/// includes a save button that persists the settings and automatically
/// dismisses the screen upon successful save.
class PrayNotificationSettingScreen extends StatelessWidget {
  /// Creates a [PrayNotificationSettingScreen].
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const PrayNotificationSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsRepository.logEvent(name: "PrayNotificationSettingScreen");
    final localization = IslamMobLocalizations.of(context);

    return BlocProvider(
      create: (context) => PrayNotificationSettingBloc()
        ..add(
          const PrayNotificationSettingEvent.initialPrayNotificationSettings(),
        ),
      child:
          BlocListener<
            PrayNotificationSettingBloc,
            PrayNotificationSettingState
          >(
            listenWhen: (previous, current) =>
                previous.loadingStatus != current.loadingStatus,
            listener: (context, state) {
              if (state.loadingStatus ==
                  const PrayNotificationSettingProcessState.settingSaved()) {
                Navigator.of(context).pop(); // 👈 dismiss the screen after save
              }
            },
            child: Scaffold(
              appBar: CustomAppBar(title: localization.notificationSettings),
              body: SafeArea(
                child:
                    BlocBuilder<
                      PrayNotificationSettingBloc,
                      PrayNotificationSettingState
                    >(
                      buildWhen: (previous, current) =>
                          previous.loadingStatus != current.loadingStatus,
                      builder: (blocContext, state) {
                        if (state.loadingStatus ==
                            const PrayNotificationSettingProcessState.loading()) {
                          return const Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xff292929),
                              ),
                            ),
                          );
                        }
                        return Stack(
                          children: [
                            NotificationSettingsList(
                              localization: localization,
                            ),
                            NotificationListSaveButton(
                              localization: localization,
                            ),
                          ],
                        );
                      },
                    ),
              ),
            ),
          ),
    );
  }
}
