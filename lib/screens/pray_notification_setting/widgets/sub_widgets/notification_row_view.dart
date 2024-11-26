import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/app_model/pray_notification_settings.dart';
import 'package:islam_app/screens/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/custom_switch.dart';

class NotificationRowView extends StatelessWidget {
  final PrayerNotification prayerNotification;
  const NotificationRowView({super.key, required this.prayerNotification});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PrayNotificationSettingBloc>();
    final isRtl = _isRtlLanguage(bloc.getLanguage());

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNotificationTitle(),
          _buildNotificationSwitch(context, isRtl),
        ],
      ),
    );
  }

  Widget _buildNotificationTitle() {
    return CustomText(
      title: prayerNotification.title,
      fontSize: 16,
      color: const Color(0xff444444),
      fontWeight: FontWeight.bold,
    );
  }

  Widget _buildNotificationSwitch(BuildContext context, bool isRtl) {
    return BlocBuilder<PrayNotificationSettingBloc,
        PrayNotificationSettingState>(
      buildWhen: (previous, current) =>
          prayerNotification.notificationSelector(previous) !=
          prayerNotification.notificationSelector(current),
      builder: (context, state) {
        final isEnabled = prayerNotification.notificationSelector(state);

        return CustomSwitch(
          value: isEnabled,
          direction: isRtl ? Direction.rtl : Direction.ltr,
          onChanged: (value) {
            context.read<PrayNotificationSettingBloc>().add(
                  prayerNotification.eventCreator(value),
                );
          },
        );
      },
    );
  }

  bool _isRtlLanguage(String languageCode) {
    return languageCode == "ar" || languageCode == "fa";
  }
}
