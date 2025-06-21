import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_sealed.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/sub_widgets/notification_row_view.dart';

/// A widget that displays additional Islamic notification settings beyond the five daily prayers.
///
/// This widget provides a list of supplementary notification options including:
/// - Sunrise time notifications
/// - Friday (Jumu'ah) Al-Kahf (The Cave) chapter reminder
/// - Friday (Jumu'ah) Du'a (supplication) reminder
/// - Qiyam al-Layl (night prayer) reminder
/// - 15-minute prayer reminder before each prayer
///
/// Each notification type is presented as a toggle-able row with localized titles.
/// The widget uses BLoC pattern to manage the state of each notification setting
/// and automatically saves changes to the user's preferences.
///
/// The widget is styled with a white background and subtle shadow for visual separation.
class OtherNotificationView extends StatelessWidget {
  /// Creates an [OtherNotificationView] widget.
  const OtherNotificationView({super.key});

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
        buildWhen: (previous, current) =>
            previous.sunriseTime != current.sunriseTime,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingSunriseTime,
            soundFileName: "",
            description: "",
            value: state.sunriseTime,
            onChangeSoundPresses: null,
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const SunriseTime(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) =>
            previous.jom3aAlkahf != current.jom3aAlkahf,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingJomAlkahf,
            value: state.jom3aAlkahf,
            soundFileName: "",
            onChangeSoundPresses: null,
            description: "",
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const Jom3aAlkahf(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) =>
            previous.jom3aDo3aa != current.jom3aDo3aa,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingJom3aDoaa,
            value: state.jom3aDo3aa,
            soundFileName: "",
            description: "",
            onChangeSoundPresses: null,
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const Jom3aDo3aa(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) =>
            previous.qeyamAlLayel != current.qeyamAlLayel,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingQeyamAlLayel,
            value: state.qeyamAlLayel,
            soundFileName: "",
            description: "",
            onChangeSoundPresses: null,
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const QeyamAlLayel(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) =>
            previous.before15Min != current.before15Min,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationBeforeSalah15Minutes,
            value: state.before15Min,
            soundFileName: "",
            description: "",
            onChangeSoundPresses: null,
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const Before15Min(),
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
