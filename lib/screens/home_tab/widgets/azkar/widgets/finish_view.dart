import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/azkar/bloc/azkar_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AzkarFinishView extends StatelessWidget {
  const AzkarFinishView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          title: AppLocalizations.of(context)!.youfinishazkarTitle,
          fontSize: 14,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          title: AppLocalizations.of(context)!.mayAllaAcept,
          fontSize: 20,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        CustomButton(
          isEnabled: true,
          title: AppLocalizations.of(context)!.activateAgain,
          onTap: () =>
              context.read<AzkarBloc>().add(const AzkarEvent.resetCounters()),
        ),
      ],
    );
  }
}
