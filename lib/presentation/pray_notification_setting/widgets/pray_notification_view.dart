import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_enum.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/sub_widgets/notification_row_view.dart';

class PrayNotificationView extends StatelessWidget {
  const PrayNotificationView({super.key});

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
        buildWhen: (previous, current) => previous.fajir != current.fajir,
        builder: (context, state) {
          return NotificationRowView(
            title: IslamMobLocalizations.of(context).notificationSettingFajir,
            value: state.fajir,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
                      type: PrayNotificationType.fajir,
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) => previous.duhir != current.duhir,
        builder: (context, state) {
          return NotificationRowView(
            title: IslamMobLocalizations.of(context).notificationSettingDuher,
            value: state.duhir,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
                      type: PrayNotificationType.duhir,
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) => previous.asr != current.asr,
        builder: (context, state) {
          return NotificationRowView(
            title: IslamMobLocalizations.of(context).notificationSettingAsr,
            value: state.asr,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
                      type: PrayNotificationType.asr,
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) => previous.magrieb != current.magrieb,
        builder: (context, state) {
          return NotificationRowView(
            title: IslamMobLocalizations.of(context).notificationSettingMagrieb,
            value: state.magrieb,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
                      type: PrayNotificationType.magrieb,
                    ),
                  );
            },
          );
        },
      ),
      const Divider(height: 1, color: Colors.grey),
      BlocBuilder<PrayNotificationSettingBloc, PrayNotificationSettingState>(
        buildWhen: (previous, current) => previous.isha != current.isha,
        builder: (context, state) {
          return NotificationRowView(
            title: IslamMobLocalizations.of(context).notificationSettingIsha,
            value: state.isha,
            onChanged: (value) {
              context.read<PrayNotificationSettingBloc>().add(
                    PrayNotificationSettingEvent.changePrayNotificationSettings(
                      status: value,
                      context: context,
                      type: PrayNotificationType.isha,
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
