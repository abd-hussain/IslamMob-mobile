import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays a success view when notification permissions are granted.
///
/// This widget shows a confirmation message indicating that notification permissions
/// have been successfully granted and provides a button to proceed with account setup.
class NotificationHavePermissionView extends StatelessWidget {
  /// Callback function to be executed when the confirmation button is pressed.
  final Function() onConfirmationPress;

  /// Creates a [NotificationHavePermissionView] widget.
  ///
  /// The [onConfirmationPress] parameter is required and defines the action to take
  /// when the user confirms they want to proceed with account setup.
  const NotificationHavePermissionView(
      {super.key, required this.onConfirmationPress});

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: localization.notificationPermissionSuccses,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomButton(
          isEnabled: true,
          title: localization.startPreparingYourAccount,
          onTap: onConfirmationPress,
        ),
      ],
    );
  }
}
