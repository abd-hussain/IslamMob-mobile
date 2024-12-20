import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/madhab.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MadhabView extends StatelessWidget {
  const MadhabView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
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
          _buildMathhabSelector(context, localizations),
        ],
      ),
    );
  }

  Widget _buildMathhabSelector(
      BuildContext context, AppLocalizations localizations) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) =>
          previous.calculationMethod != current.calculationMethod,
      builder: (context, state) {
        return CustomRadioButton(
          elevation: 2,
          horizontal: true,
          absoluteZeroSpacing: false,
          unSelectedColor: Colors.white,
          unSelectedBorderColor: const Color(0xff444444),
          selectedColor: const Color(0xff007F37),
          defaultSelected: _getInitialMathhab(context, state.mathhab),
          buttonLables: _getMathhabList(localizations),
          buttonValues: _getMathhabList(localizations),
          buttonTextStyle: const ButtonTextStyle(
            selectedColor: Colors.white,
            unSelectedColor: Color(0xff444444),
            textStyle: TextStyle(fontSize: 14),
          ),
          radioButtonValue: (value) =>
              _onMathhabChanged(context, value, localizations),
        );
      },
    );
  }

  void _onMathhabChanged(
      BuildContext context, dynamic value, AppLocalizations localizations) {
    final bloc = context.read<PrayCalculationSettingBloc>();

    if (value == localizations.mathhab1Shafi) {
      bloc.add(PrayCalculationSettingEvent.updateMathhab(
        mathhab: const MathhabState.shafi(),
      ));
    } else {
      bloc.add(PrayCalculationSettingEvent.updateMathhab(
        mathhab: const MathhabState.hanafi(),
      ));
    }
  }

  String _getInitialMathhab(BuildContext context, MathhabState mathhab) {
    final localizations = AppLocalizations.of(context)!;
    return switch (mathhab) {
      MathhabStateHanafi() => localizations.mathhab2Hanafi,
      MathhabStateShafi() => localizations.mathhab1Shafi,
    };
  }

  List<String> _getMathhabList(AppLocalizations localizations) {
    return [
      localizations.mathhab1Shafi,
      localizations.mathhab2Hanafi,
    ];
  }
}
