import 'package:islam_app/presentation/home_tab/bloc/azkar_after_salah/azkar_after_salah_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          onTap: () => context
              .read<AzkarAfterSalahBloc>()
              .add(const AzkarAfterSalahEvent.resetCounters()),
        ),
      ],
    );
  }
}
