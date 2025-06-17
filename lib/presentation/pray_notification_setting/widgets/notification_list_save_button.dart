import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';

class NotificationListSaveButton extends StatelessWidget {
  final IslamMobLocalizations localization;

  const NotificationListSaveButton({super.key, required this.localization});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: CustomButton(
          title: localization.save,
          isEnabled: true,
          onTap: () {
            context.read<PrayNotificationSettingBloc>().add(
                  PrayNotificationSettingEvent.savePrayNotificationSettings(
                    context: context,
                  ),
                );
          },
        ),
      ),
    );
  }
}
