import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/calculation_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/checkbox_tile.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays madhab (Islamic jurisprudence school) selection options.
///
/// This view allows users to select different madhab methods for prayer time
/// calculations. Different madhabs have varying interpretations for calculating
/// prayer times, particularly for Asr prayer. It provides a list of available
/// madhab options with checkboxes for selection.
class MadhabView extends StatelessWidget {
  /// Creates a [MadhabView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const MadhabView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomText(
            title: localizations.mathhab,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: localizations.mathhabdetails,
            fontSize: 14,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          const SizedBox(height: 4),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: _buildMathhabSelector(context, localizations),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildMathhabSelector(
    BuildContext context,
    IslamMobLocalizations localizations,
  ) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) => previous.madhab != current.madhab,
      builder: (context, state) {
        final madhabList = CalculationSettingUsecase.getMadhabList(
          localizations,
          state.madhab,
        );

        return ListView.builder(
          itemCount: madhabList.length,
          itemBuilder: (context, index) {
            return CheckBoxTile(
              title: madhabList[index].name,
              isSelected: madhabList[index].isSelected,
              onChanged: () => context.read<PrayCalculationSettingBloc>().add(
                PrayCalculationSettingEvent.updateMadhabMethod(
                  madhab: madhabList[index].method,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
