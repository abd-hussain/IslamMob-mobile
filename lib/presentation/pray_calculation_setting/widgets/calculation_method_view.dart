import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/calculation_setting_usecase.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/checkbox_tile.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CalculationMethodView extends StatelessWidget {
  const CalculationMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
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
      BuildContext context, AppLocalizations localizations) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) =>
          previous.calculationMethod != current.calculationMethod,
      builder: (context, state) {
        final calculationMethodsList =
            CalculationSettingUsecase.getCalculationMethodsList(
                localizations, state.calculationMethod);

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
