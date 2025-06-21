import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/dialogs/share_app/share_app_widget.dart';

/// A utility class for displaying the share app dialog.
///
/// This class provides functionality to show a dialog that allows users
/// to share the application with others. The dialog is non-dismissible
/// and contains sharing options and interface elements.
class ShareDialog {
  /// Displays the share app dialog.
  ///
  /// Shows a modal dialog with sharing options for the application.
  /// The dialog is non-dismissible (barrierDismissible: false) and
  /// contains the ShareAppDialogWidget with sharing functionality.
  ///
  /// Returns a [Future<Widget?>] that completes when the dialog is dismissed.
  /// The [context] parameter is required for showing the dialog.
  Future<Widget?> dialog({required BuildContext context}) async {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: const ShareAppDialogWidget(),
          );
        });
  }
}
