import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/pray_calculation_method.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
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
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: AppLocalizations.of(context)!.calculationMethodDetails,
            fontSize: 14,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          const SizedBox(height: 4),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: _buildCalculationMethodSelector(context),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildCalculationMethodSelector(BuildContext context) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) =>
          previous.calculationMethod != current.calculationMethod,
      builder: (context, state) {
        final calculationMethods = _getCalculationMethodList(context);
        final defaultMethod =
            _getInitialCalculationMethod(context, state.calculationMethod);

        return CustomRadioButton(
          elevation: 2,
          horizontal: true,
          absoluteZeroSpacing: false,
          unSelectedColor: Colors.white,
          unSelectedBorderColor: const Color(0xff444444),
          selectedColor: const Color(0xff007F37),
          defaultSelected: defaultMethod,
          buttonLables: calculationMethods,
          buttonValues: calculationMethods,
          buttonTextStyle: const ButtonTextStyle(
            selectedColor: Colors.white,
            unSelectedColor: Color(0xff444444),
            textStyle: TextStyle(fontSize: 14),
          ),
          radioButtonValue: (value) =>
              _onCalculationMethodSelected(context, value),
        );
      },
    );
  }

  void _onCalculationMethodSelected(BuildContext context, String value) {
    final methodsMap = _getCalculationMethodsMap(context);
    final entry =
        methodsMap.entries.firstWhere((entry) => entry.value == value).key;

    context.read<PrayCalculationSettingBloc>().add(
          PrayCalculationSettingEvent.updateCalculationMethod(method: entry),
        );
  }

  String _getInitialCalculationMethod(
      BuildContext context, PrayCalculationMethodState method) {
    final methodsMap = _getCalculationMethodsMap(context);
    return methodsMap.entries.firstWhere((entry) => entry.key == method).value;
  }

  List<String> _getCalculationMethodList(BuildContext context) {
    return _getCalculationMethodsMap(context).values.toList();
  }

  Map<PrayCalculationMethodState, String> _getCalculationMethodsMap(
      BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return {
      const PrayCalculationMethodState.jafari():
          localizations.calculationMethod1,
      const PrayCalculationMethodState.karachi():
          localizations.calculationMethod2,
      const PrayCalculationMethodState.islamicSocietyOfNorthAmerica():
          localizations.calculationMethod3,
      const PrayCalculationMethodState.muslimWorldLeague():
          localizations.calculationMethod4,
      const PrayCalculationMethodState.ummAlQura():
          localizations.calculationMethod5,
      const PrayCalculationMethodState.egypt():
          localizations.calculationMethod6,
      const PrayCalculationMethodState.tehran():
          localizations.calculationMethod7,
      const PrayCalculationMethodState.gulfRegion():
          localizations.calculationMethod8,
      const PrayCalculationMethodState.kuwait():
          localizations.calculationMethod9,
      const PrayCalculationMethodState.qatar():
          localizations.calculationMethod10,
      const PrayCalculationMethodState.singapore():
          localizations.calculationMethod11,
      const PrayCalculationMethodState.france():
          localizations.calculationMethod12,
      const PrayCalculationMethodState.turkey():
          localizations.calculationMethod13,
      const PrayCalculationMethodState.russia():
          localizations.calculationMethod14,
      const PrayCalculationMethodState.dubai():
          localizations.calculationMethod15,
      const PrayCalculationMethodState.jAKIM():
          localizations.calculationMethod16,
      const PrayCalculationMethodState.tunisia():
          localizations.calculationMethod17,
      const PrayCalculationMethodState.algeria():
          localizations.calculationMethod18,
      const PrayCalculationMethodState.kEMENAG():
          localizations.calculationMethod19,
      const PrayCalculationMethodState.morocco():
          localizations.calculationMethod20,
      const PrayCalculationMethodState.comunidadeIslamicaLisboa():
          localizations.calculationMethod21,
      const PrayCalculationMethodState.jordanAwqaf():
          localizations.calculationMethod22,
    };
  }
}
