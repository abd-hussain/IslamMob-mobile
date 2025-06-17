import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_sealed.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/sub_widgets/notification_row_view.dart';

class QuickNotificationView extends StatelessWidget {
  const QuickNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            previous.allNotificationForToday != current.allNotificationForToday,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingTodayAll,
            value: state.allNotificationForToday,
            description: "", //TODO
            soundFileName: "",
            onChangeSoundPresses: null,
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const AllNotificationForToday(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) =>
            previous.allNotificationForThreeDay !=
            current.allNotificationForThreeDay,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingThreedayAll,
            value: state.allNotificationForThreeDay,
            soundFileName: "",
            description: "", //TODO
            onChangeSoundPresses: null,
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const AllNotificationForThreeDay(),
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) =>
            previous.allNotificationForWeekDay !=
            current.allNotificationForWeekDay,
        builder: (builderContext, state) {
          return NotificationRowView(
            title: localization.notificationSettingWeekAll,
            value: state.allNotificationForWeekDay,
            soundFileName: "",
            description: "", //TODO
            onChangeSoundPresses: null,
            onChanged: (value) {
              builderContext.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: const AllNotificationForWeekDay(),
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
