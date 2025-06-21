import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/application_version_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/dialogs/version_update/version_update_widget.dart';

/// A dialog class for displaying version update notifications.
///
/// This class handles the creation and display of version update dialogs
/// that inform users about available app updates.
class VersionDialog {
  /// Shows a version update dialog to the user.
  ///
  /// The [context] parameter is required for displaying the dialog.
  /// The [isOptional] parameter determines whether the update is optional
  /// or mandatory, affecting the dialog's behavior and appearance.
  ///
  /// Returns a [Widget] if the dialog is successfully shown, or null
  /// if the context is not mounted when attempting to show the dialog.
  Future<Widget?> dialog(
      {required BuildContext context, required bool isOptional}) async {
    final String currentVersion =
        await locator<ApplicationVersionUsecase>().getApplicationVersion();

    if (context.mounted) {
      return showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              insetPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: VersionDialogWidget(
                isOptional: isOptional,
                version: currentVersion,
              ),
            );
          });
    }

    return null;
  }
}
