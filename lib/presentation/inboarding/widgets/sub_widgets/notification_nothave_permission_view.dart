import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/open_mobile_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays a view when notification permissions are not granted.
///
/// This widget shows information about why notification permissions should be allowed
/// and provides options to either open app settings or skip the permission request.
class NotificationNothavePermissionView extends StatelessWidget {
  /// Callback function to be executed when the skip button is pressed.
  final Function() skipButton;

  /// Creates a [NotificationNothavePermissionView] widget.
  ///
  /// The [skipButton] parameter is required and defines the action to take
  /// when the user chooses to skip granting notification permissions.
  const NotificationNothavePermissionView(
      {super.key, required this.skipButton});

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title: localization.whyyoushouldallownotification,
            fontSize: 18,
            color: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLines: 4,
          ),
        ),
        CustomText(
          title: localization.whyyoushouldallownotificationdetails,
          fontSize: 14,
          color: const Color(0xff292929),
          textAlign: TextAlign.center,
          maxLines: 4,
        ),
        CustomButton(
          isEnabled: true,
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          title: localization.nolocationPermissionButton,
          onTap: () async => OpenMobileSettingUseCase.openAppSettings(),
        ),
        CustomButton(
          isEnabled: true,
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          title: localization.notNowNotifications,
          titleColor: const Color(0xff292929),
          color: Colors.grey,
          onTap: skipButton,
        ),
      ],
    );
  }
}
