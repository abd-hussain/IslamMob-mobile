import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

class ShowToast {
  static void showLoginRequired(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final localize = IslamMobLocalizations.of(context);
    scaffoldMessenger.showSnackBar(
      SnackBar(content: Text(localize.pleaselogininordertousethisfeature)),
    );
  }

  static void showInternetRequired(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final localize = IslamMobLocalizations.of(context);
    scaffoldMessenger.showSnackBar(
      SnackBar(content: Text(localize.pleasecheckyourinternetconnection)),
    );
  }
}
