import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrayNotificationSettingScreen extends StatelessWidget {
  const PrayNotificationSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: AppLocalizations.of(context)!.notificationSettings),
      //TODO
    );
  }
}
