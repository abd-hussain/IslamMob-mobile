import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/home_tab/bloc/azkar_after_salah_view/azkar_after_salah_view_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class AzkarFinishView extends StatelessWidget {
  const AzkarFinishView({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Column(
      children: [
        CustomText(
          title: localize.youfinishazkarTitle,
          fontSize: 14,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          title: localize.mayAllaAcept,
          fontSize: 20,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        CustomButton(
          isEnabled: true,
          title: localize.activateAgain,
          onTap: () => context
              .read<AzkarAfterSalahViewBloc>()
              .add(const AzkarAfterSalahViewEvent.resetCounters()),
        ),
      ],
    );
  }
}
