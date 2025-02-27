import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/hisn_al_muslim/details/widgets/counter_footer_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';

class HisnAlMuslimDetailsScreen extends StatelessWidget {
  const HisnAlMuslimDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xfffff2e9),
      appBar: const CustomAppBar(
        title: "",
      ),
      body: SafeArea(
        child: Column(
          children: [
            CounterFooterView(),
          ],
        ),
      ),
    );
  }
}
