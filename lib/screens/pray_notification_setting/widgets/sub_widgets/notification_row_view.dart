import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/app_model/pray_notification_settings.dart';
import 'package:islam_app/screens/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/utils/custom_switch.dart';

class NotificationRowView extends StatelessWidget {
  final PrayerNotification prayerNotification;
  const NotificationRowView({super.key, required this.prayerNotification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            title: prayerNotification.title,
            fontSize: 16,
            textColor: const Color(0xff444444),
            fontWeight: FontWeight.bold,
          ),
          BlocBuilder<PrayNotificationSettingBloc,
              PrayNotificationSettingState>(
            buildWhen: (previous, current) =>
                prayerNotification.notificationSelector(previous) !=
                prayerNotification.notificationSelector(current),
            builder: (context, state) {
              final isEnabled = prayerNotification.notificationSelector(state);
              return CustomSwitch(
                value: isEnabled,
                backgroundColorOfSelection: isEnabled
                    ? const Color(0xff34C759)
                    : const Color(0xffE74C4C),
                onChanged: (value) {
                  context.read<PrayNotificationSettingBloc>().add(
                        prayerNotification.eventCreator(value),
                      );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
