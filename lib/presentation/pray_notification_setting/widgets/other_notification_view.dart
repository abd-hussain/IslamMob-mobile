import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_enum.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/sub_widgets/notification_row_view.dart';

class OtherNotificationView extends StatelessWidget {
  const OtherNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: _containerDecoration(),
      child: Column(
        children: _buildNotificationRows(),
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

  List<Widget> _buildNotificationRows() {
    return [
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) =>
            previous.sunriseTime != current.sunriseTime,
        builder: (context, state) {
          return NotificationRowView(
            title: AppLocalizations.of(context)!.notificationSettingSunriseTime,
            value: state.sunriseTime,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: PrayNotificationType.sunriseTime,
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) =>
            previous.sunrisePray != current.sunrisePray,
        builder: (context, state) {
          return NotificationRowView(
            title:
                AppLocalizations.of(context)!.notificationSettingSunrisePrayer,
            value: state.sunrisePray,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: PrayNotificationType.sunrisePray,
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
        builder: (context, state) {
          return NotificationRowView(
            title:
                AppLocalizations.of(context)!.notificationBeforeSalah15Minutes,
            value: state.before15Min,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: PrayNotificationType.before15Min,
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) =>
            previous.applicationNotification != current.applicationNotification,
        builder: (context, state) {
          return NotificationRowView(
            title: AppLocalizations.of(context)!.notificationSettingApplication,
            value: state.applicationNotification,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      type: PrayNotificationType.pushNotification,
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
