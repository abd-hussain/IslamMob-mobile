import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/azkar_after_salah/bloc/azkar_after_salah_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class AzkarFinishView extends StatelessWidget {
  const AzkarFinishView({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFC0C0C0),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF89ABAA).withValues(alpha: 0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              onTap: () => context.read<AzkarAfterSalahBloc>().add(
                    const AzkarAfterSalahEvent.resetCounter(),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
