import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/dialogs/support_us/support_us_widget.dart';

/// A utility class for displaying the support us dialog.
///
/// This class provides a method to show a modal dialog that encourages
/// users to support the application. The dialog is non-dismissible and
/// contains the SupportUsDialogWidget with support options and messaging.
class SupportUsDialog {
  /// Shows the support us dialog.
  ///
  /// Displays a modal dialog with support options and messaging to encourage
  /// user engagement and support for the application. The dialog cannot be
  /// dismissed by tapping outside (barrierDismissible: false) and has rounded
  /// corners with proper padding.
  ///
  /// Parameters:
  /// - [context]: The build context required to show the dialog
  ///
  /// Returns:
  ///   A [Future<Widget?>] that completes when the dialog is dismissed
  Future<Widget?> dialog({required BuildContext context}) async {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const SupportUsDialogWidget(),
        );
      },
    );
  }
}
