import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';

/// A save button widget for prayer notification settings.
///
/// This widget displays a save button that allows users to save their
/// prayer notification settings. When tapped, it triggers the save event
/// in the prayer notification settings BLoC.
class NotificationListSaveButton extends StatelessWidget {
  /// The localization instance for accessing localized strings.
  ///
  /// This provides access to localized text for the save button
  /// and other UI elements in the user's preferred language.
  final IslamMobLocalizations localization;

  /// Creates a [NotificationListSaveButton] widget.
  ///
  /// The [localization] parameter is required to provide localized
  /// text for the save button.
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
