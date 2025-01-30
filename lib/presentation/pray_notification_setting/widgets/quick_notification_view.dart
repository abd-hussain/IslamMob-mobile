import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_enum.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/sub_widgets/notification_row_view.dart';

class QuickNotificationView extends StatelessWidget {
  const QuickNotificationView({super.key});

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
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 0.5,
          blurRadius: 5,
          offset: const Offset(0, 0.1),
        ),
      ],
    );
  }

  List<Widget> _buildNotificationRows(BuildContext context) {
    return [
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) =>
            previous.allNotificationForToday != current.allNotificationForToday,
        builder: (context, state) {
          return NotificationRowView(
            title:
                IslamMobLocalizations.of(context).notificationSettingTodayAll,
            value: state.allNotificationForToday,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
                      type: PrayNotificationType.allNotificationForToday,
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
        builder: (context, state) {
          return NotificationRowView(
            title: IslamMobLocalizations.of(context)
                .notificationSettingThreedayAll,
            value: state.allNotificationForThreeDay,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
                      type: PrayNotificationType.allNotificationForThreeDay,
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
        builder: (context, state) {
          return NotificationRowView(
            title: IslamMobLocalizations.of(context).notificationSettingWeekAll,
            value: state.allNotificationForWeekDay,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
                      type: PrayNotificationType.allNotificationForWeekDay,
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
