import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/calculation_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/checkbox_tile.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays prayer calculation method selection options.
///
/// This view allows users to select different calculation methods for prayer times.
/// Different calculation methods are used by various Islamic organizations and
/// countries, each with slightly different parameters for calculating prayer times.
/// It provides a list of available calculation methods with checkboxes for selection.
class CalculationMethodView extends StatelessWidget {
  /// Creates a [CalculationMethodView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const CalculationMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomText(
            title: localizations.calculationMethod,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: localizations.calculationMethodDetails,
            fontSize: 14,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          const SizedBox(height: 4),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: _buildCalculationMethodSelector(context, localizations),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildCalculationMethodSelector(
    BuildContext context,
    IslamMobLocalizations localizations,
  ) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) =>
          previous.calculationMethod != current.calculationMethod,
      builder: (context, state) {
        final calculationMethodsList =
            CalculationSettingUsecase.getCalculationMethodsList(
              localizations,
              state.calculationMethod,
            );

        return ListView.builder(
          itemCount: calculationMethodsList.length,
          itemBuilder: (context, index) {
            return CheckBoxTile(
              title: calculationMethodsList[index].name,
              isSelected: calculationMethodsList[index].isSelected,
              onChanged: () => context.read<PrayCalculationSettingBloc>().add(
                PrayCalculationSettingEvent.updateCalculationMethod(
                  method: calculationMethodsList[index].method,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
