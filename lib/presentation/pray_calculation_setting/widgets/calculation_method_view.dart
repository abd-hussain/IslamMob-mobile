import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/calculation_method_setting.dart';
import 'package:islam_app/models/pray_calculation_method.dart';
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
            _getCalculationMethodsList(localizations, state.calculationMethod);

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

  List<CalculationMethodSetting> _getCalculationMethodsList(
      AppLocalizations localizations, PrayCalculationMethodState currentState) {
    return [
      CalculationMethodSetting(
        name: localizations.calculationMethod1,
        method: const PrayCalculationMethodState.jafari(),
        isSelected: currentState == const PrayCalculationMethodState.jafari(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod2,
        method: const PrayCalculationMethodState.karachi(),
        isSelected: currentState == const PrayCalculationMethodState.karachi(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod3,
        method: const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
        isSelected: currentState ==
            const PrayCalculationMethodState.islamicSocietyOfNorthAmerica(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod4,
        method: const PrayCalculationMethodState.muslimWorldLeague(),
        isSelected: currentState ==
            const PrayCalculationMethodState.muslimWorldLeague(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod5,
        method: const PrayCalculationMethodState.ummAlQura(),
        isSelected:
            currentState == const PrayCalculationMethodState.ummAlQura(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod6,
        method: const PrayCalculationMethodState.egypt(),
        isSelected: currentState == const PrayCalculationMethodState.egypt(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod7,
        method: const PrayCalculationMethodState.tehran(),
        isSelected: currentState == const PrayCalculationMethodState.tehran(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod8,
        method: const PrayCalculationMethodState.gulfRegion(),
        isSelected:
            currentState == const PrayCalculationMethodState.gulfRegion(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod9,
        method: const PrayCalculationMethodState.kuwait(),
        isSelected: currentState == const PrayCalculationMethodState.kuwait(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod10,
        method: const PrayCalculationMethodState.qatar(),
        isSelected: currentState == const PrayCalculationMethodState.qatar(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod11,
        method: const PrayCalculationMethodState.singapore(),
        isSelected:
            currentState == const PrayCalculationMethodState.singapore(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod12,
        method: const PrayCalculationMethodState.france(),
        isSelected: currentState == const PrayCalculationMethodState.france(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod13,
        method: const PrayCalculationMethodState.turkey(),
        isSelected: currentState == const PrayCalculationMethodState.turkey(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod14,
        method: const PrayCalculationMethodState.russia(),
        isSelected: currentState == const PrayCalculationMethodState.russia(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod15,
        method: const PrayCalculationMethodState.dubai(),
        isSelected: currentState == const PrayCalculationMethodState.dubai(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod16,
        method: const PrayCalculationMethodState.jAKIM(),
        isSelected: currentState == const PrayCalculationMethodState.jAKIM(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod17,
        method: const PrayCalculationMethodState.tunisia(),
        isSelected: currentState == const PrayCalculationMethodState.tunisia(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod18,
        method: const PrayCalculationMethodState.algeria(),
        isSelected: currentState == const PrayCalculationMethodState.algeria(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod19,
        method: const PrayCalculationMethodState.kEMENAG(),
        isSelected: currentState == const PrayCalculationMethodState.kEMENAG(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod20,
        method: const PrayCalculationMethodState.morocco(),
        isSelected: currentState == const PrayCalculationMethodState.morocco(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod21,
        method: const PrayCalculationMethodState.comunidadeIslamicaLisboa(),
        isSelected: currentState ==
            const PrayCalculationMethodState.comunidadeIslamicaLisboa(),
      ),
      CalculationMethodSetting(
        name: localizations.calculationMethod22,
        method: const PrayCalculationMethodState.jordanAwqaf(),
        isSelected:
            currentState == const PrayCalculationMethodState.jordanAwqaf(),
      ),
    ];
  }
}
