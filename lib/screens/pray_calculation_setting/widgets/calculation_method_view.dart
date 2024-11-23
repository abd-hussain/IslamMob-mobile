import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CalculationMethodView extends StatelessWidget {
  const CalculationMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomText(
            title: AppLocalizations.of(context)!.calculationMethod,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            textColor: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: AppLocalizations.of(context)!.calculationMethodDetails,
            fontSize: 14,
            textColor: const Color(0xff444444),
            textAlign: TextAlign.center,
            maxLins: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: BlocBuilder<PrayCalculationSettingBloc,
                  PrayCalculationSettingState>(
                buildWhen: (previous, current) =>
                    previous.calculationMethod != current.calculationMethod,
                builder: (context, state) {
                  final calculationMethodList =
                      _getCalculationMethodList(context);

                  return CustomRadioButton(
                    elevation: 2,
                    horizontal: true,
                    absoluteZeroSpacing: false,
                    unSelectedColor: Colors.white,
                    unSelectedBorderColor: const Color(0xff444444),
                    selectedColor: const Color(0xff007F37),
                    defaultSelected: _getInitialCalculationMethod(
                        context, state.calculationMethod),
                    buttonLables: calculationMethodList,
                    buttonValues: calculationMethodList,
                    buttonTextStyle: const ButtonTextStyle(
                      selectedColor: Colors.white,
                      unSelectedColor: Color(0xff444444),
                      textStyle: TextStyle(fontSize: 14),
                    ),
                    radioButtonValue: (value) =>
                        _onCalculationMethodSelected(context, value),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onCalculationMethodSelected(BuildContext context, String value) {
    final methodsMap = _getCalculationMethodsMap(context);
    final entry =
        methodsMap.entries.firstWhere((entry) => entry.value == value).key;

    context.read<PrayCalculationSettingBloc>().add(
          PrayCalculationSettingEvent.updateCalculationMethod(
            method: entry,
          ),
        );
  }

  String _getInitialCalculationMethod(
      BuildContext context, CalculationMethodState method) {
    final methodsMap = _getCalculationMethodsMap(context);
    return methodsMap.entries.firstWhere((entry) => entry.key == method).value;
  }

  List<String> _getCalculationMethodList(BuildContext context) {
    return _getCalculationMethodsMap(context).values.toList();
  }

  Map<CalculationMethodState, String> _getCalculationMethodsMap(
      BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return {
      const CalculationMethodState.jafari(): localizations.calculationMethod1,
      const CalculationMethodState.karachi(): localizations.calculationMethod2,
      const CalculationMethodState.islamicSocietyOfNorthAmerica():
          localizations.calculationMethod3,
      const CalculationMethodState.muslimWorldLeague():
          localizations.calculationMethod4,
      const CalculationMethodState.ummAlQura():
          localizations.calculationMethod5,
      const CalculationMethodState.egypt(): localizations.calculationMethod6,
      const CalculationMethodState.tehran(): localizations.calculationMethod7,
      const CalculationMethodState.gulfRegion():
          localizations.calculationMethod8,
      const CalculationMethodState.kuwait(): localizations.calculationMethod9,
      const CalculationMethodState.qatar(): localizations.calculationMethod10,
      const CalculationMethodState.singapore():
          localizations.calculationMethod11,
      const CalculationMethodState.france(): localizations.calculationMethod12,
      const CalculationMethodState.turkey(): localizations.calculationMethod13,
      const CalculationMethodState.russia(): localizations.calculationMethod14,
      const CalculationMethodState.dubai(): localizations.calculationMethod15,
      const CalculationMethodState.jAKIM(): localizations.calculationMethod16,
      const CalculationMethodState.tunisia(): localizations.calculationMethod17,
      const CalculationMethodState.algeria(): localizations.calculationMethod18,
      const CalculationMethodState.kEMENAG(): localizations.calculationMethod19,
      const CalculationMethodState.morocco(): localizations.calculationMethod20,
      const CalculationMethodState.comunidadeIslamicaLisboa():
          localizations.calculationMethod21,
      const CalculationMethodState.jordanAwqaf():
          localizations.calculationMethod22,
      const CalculationMethodState.custom(): localizations.calculationMethod23,
    };
  }
}
