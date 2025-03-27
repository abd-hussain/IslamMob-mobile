import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class AzkarAfterSalahScreen extends StatelessWidget {
  const AzkarAfterSalahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    //TODO: implement AzkarAfterSalahScreen
    return Scaffold(
      backgroundColor: const Color(0xfffff2e9),
      appBar: AppBar(
        backgroundColor: const Color(0xff292929),
        iconTheme: const IconThemeData(color: Colors.white),
        title: CustomText(
          title: localizations.azkarTitle,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      // body: SafeArea(
      //     // child: BlocProvider(
      //     //   create: (context) => AzkarAfterSalahBloc()..add(const AzkarAfterSalahEvent.fillInitialValue()),
      //     //   child: Column(),
      //     // ),
      //     ),
    );
  }
}
