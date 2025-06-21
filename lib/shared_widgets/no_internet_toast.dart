import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

/// A utility class for displaying no internet connection toast messages.
///
/// This class provides a static method to show a localized snackbar
/// when there is no internet connection available.
class NoInternetToast {
  /// Shows a snackbar with a localized "no internet connection" message.
  ///
  /// The [context] parameter is required to access the ScaffoldMessenger
  /// and localization resources.
  static void show(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final localize = IslamMobLocalizations.of(context);

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Text(localize.pleasecheckyourinternetconnection),
      ),
    );
  }
}
