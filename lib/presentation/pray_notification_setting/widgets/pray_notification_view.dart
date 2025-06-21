import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_sealed.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/sub_widgets/notification_row_view.dart';

/// A widget that displays prayer notification settings for all five daily prayers.
///
/// This widget provides a list of notification settings for Fajr, Dhuhr, Asr,
/// Maghrib, and Isha prayers. Each prayer has its own toggle switch and sound
/// selection option. Users can enable/disable notifications and customize
/// notification sounds for each prayer individually.
class PrayNotificationView extends StatefulWidget {
  /// Creates a [PrayNotificationView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const PrayNotificationView({super.key});

  @override
  State<PrayNotificationView> createState() => _PrayNotificationViewState();
}

class _PrayNotificationViewState extends State<PrayNotificationView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: _containerDecoration(),
      child: Column(
        children: _buildNotificationRows(context),
      ),
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withValues(alpha: 0.5),
          spreadRadius: 0.5,
          blurRadius: 5,
          offset: const Offset(0, 0.1),
        ),
      ],
    );
  }

  List<Widget> _buildNotificationRows(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);
    return [
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) => previous.fajir != current.fajir,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingFajir,
            value: state.fajir,
            soundFileName:
                context.read<PrayNotificationSettingBloc>().getSoundName(
                      type: const NotificationTypeState.fajir(),
                      localization: localization,
                    ),
            description: "",
            onChangeSoundPresses: () async {
              await FirebaseAnalyticsRepository.logEvent(
                  name: "ChooseSoundScreen fajir");
              if (!mounted) return;
              if (!context.mounted) return;
              await Navigator.pushNamed(
                context,
                RoutesConstants.chooseSoundScreen,
                arguments: {
                  ArgumentConstant.notificationSettingType:
                      const NotificationTypeState.fajir(),
                },
              ).then((_) {
                if (mounted) setState(() {});
              });
            },
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const Fajir(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) => previous.duhir != current.duhir,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingDuher,
            value: state.duhir,
            soundFileName:
                context.read<PrayNotificationSettingBloc>().getSoundName(
                      type: const NotificationTypeState.zuhr(),
                      localization: localization,
                    ),
            description: "",
            onChangeSoundPresses: () async {
              await FirebaseAnalyticsRepository.logEvent(
                  name: "ChooseSoundScreen duhir");
              if (!mounted) return;
              if (!context.mounted) return;
              await Navigator.pushNamed(
                context,
                RoutesConstants.chooseSoundScreen,
                arguments: {
                  ArgumentConstant.notificationSettingType:
                      const NotificationTypeState.zuhr(),
                },
              ).then((_) {
                if (mounted) setState(() {});
              });
            },
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const Duhir(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) => previous.asr != current.asr,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingAsr,
            value: state.asr,
            soundFileName:
                context.read<PrayNotificationSettingBloc>().getSoundName(
                      type: const NotificationTypeState.asr(),
                      localization: localization,
                    ),
            description: "",
            onChangeSoundPresses: () async {
              await FirebaseAnalyticsRepository.logEvent(
                  name: "ChooseSoundScreen Asr");
              if (!mounted) return;
              if (!context.mounted) return;
              await Navigator.pushNamed(
                context,
                RoutesConstants.chooseSoundScreen,
                arguments: {
                  ArgumentConstant.notificationSettingType:
                      const NotificationTypeState.asr(),
                },
              ).then((_) {
                if (mounted) setState(() {});
              });
            },
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const Asr(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) => previous.magrieb != current.magrieb,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingMagrieb,
            value: state.magrieb,
            soundFileName:
                context.read<PrayNotificationSettingBloc>().getSoundName(
                      type: const NotificationTypeState.maghrib(),
                      localization: localization,
                    ),
            description: "",
            onChangeSoundPresses: () async {
              await FirebaseAnalyticsRepository.logEvent(
                  name: "ChooseSoundScreen Magrieb");
              if (!mounted) return;
              if (!context.mounted) return;
              await Navigator.pushNamed(
                context,
                RoutesConstants.chooseSoundScreen,
                arguments: {
                  ArgumentConstant.notificationSettingType:
                      const NotificationTypeState.maghrib(),
                },
              ).then((_) {
                if (mounted) setState(() {});
              });
            },
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const Magrieb(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) => previous.isha != current.isha,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingIsha,
            value: state.isha,
            soundFileName:
                context.read<PrayNotificationSettingBloc>().getSoundName(
                      type: const NotificationTypeState.isha(),
                      localization: localization,
                    ),
            description: "",
            onChangeSoundPresses: () async {
              await FirebaseAnalyticsRepository.logEvent(
                  name: "ChooseSoundScreen Isha");
              if (!mounted) return;
              if (!context.mounted) return;
              await Navigator.pushNamed(
                context,
                RoutesConstants.chooseSoundScreen,
                arguments: {
                  ArgumentConstant.notificationSettingType:
                      const NotificationTypeState.isha(),
                },
              ).then((_) {
                if (mounted) setState(() {});
              });
            },
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const Isha(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
    ];
  }
}
