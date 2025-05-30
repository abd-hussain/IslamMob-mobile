import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_sealed.dart';
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
          color: Colors.grey.withValues(alpha: 0.5),
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
            title: IslamMobLocalizations.of(context)
                .notificationSettingSunriseTime,
            value: state.sunriseTime,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
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
        builder: (context, state) {
          return NotificationRowView(
            title:
                IslamMobLocalizations.of(context).notificationSettingJomAlkahf,
            value: state.jom3aAlkahf,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
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
        builder: (context, state) {
          return NotificationRowView(
            title:
                IslamMobLocalizations.of(context).notificationSettingJom3aDoaa,
            value: state.jom3aDo3aa,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
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
        builder: (context, state) {
          return NotificationRowView(
            title: IslamMobLocalizations.of(context)
                .notificationSettingQeyamAlLayel,
            value: state.qeyamAlLayel,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
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
        builder: (context, state) {
          return NotificationRowView(
            title: IslamMobLocalizations.of(context)
                .notificationBeforeSalah15Minutes,
            value: state.before15Min,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
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
