import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/high_latitude_method.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PolesCalculationView extends StatelessWidget {
  const PolesCalculationView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomText(
            title: localizations.highLatitude,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: localizations.highLatitudeDetails,
            fontSize: 14,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          const SizedBox(height: 4),
          Expanded(child: _buildCalculationSelector(context, localizations)),
        ],
      ),
    );
  }

  Widget _buildCalculationSelector(BuildContext context, AppLocalizations localizations) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) => previous.hightLatitudeCaluclation != current.hightLatitudeCaluclation,
      builder: (context, state) {
        return CustomRadioButton(
          elevation: 2,
          horizontal: true,
          absoluteZeroSpacing: false,
          unSelectedColor: Colors.white,
          unSelectedBorderColor: const Color(0xff444444),
          selectedColor: const Color(0xff007F37),
          defaultSelected: _getInitialCalculationMethod(context, state.hightLatitudeCaluclation),
          buttonLables: _getCalculationMethodList(localizations),
          buttonValues: _getCalculationMethodList(localizations),
          buttonTextStyle: const ButtonTextStyle(
            selectedColor: Colors.white,
            unSelectedColor: Color(0xff444444),
            textStyle: TextStyle(fontSize: 14),
          ),
          radioButtonValue: (value) => _onCalculationChanged(context, value, localizations),
        );
      },
    );
  }

  String _getInitialCalculationMethod(BuildContext context, PrayHightLatitudeCaluclationState method) {
    final localizations = AppLocalizations.of(context)!;
    return switch (method) {
      PrayHightLatitudeCaluclationStateNone() => localizations.hightLatitudeCaluclationNone,
      PrayHightLatitudeCaluclationStateAngleBasedMethod() => localizations.hightLatitudeCaluclationAngleBasedMethod,
      PrayHightLatitudeCaluclationStateMidnight() => localizations.hightLatitudeCaluclationMidnight,
      PrayHightLatitudeCaluclationStateSeventhPartOfTheNight() => localizations.hightLatitudeCaluclationOneSeventh,
    };
  }

  List<String> _getCalculationMethodList(AppLocalizations localizations) {
    return [
      localizations.hightLatitudeCaluclationNone,
      localizations.hightLatitudeCaluclationAngleBasedMethod,
      localizations.hightLatitudeCaluclationMidnight,
      localizations.hightLatitudeCaluclationOneSeventh,
    ];
  }

  void _onCalculationChanged(BuildContext context, String value, AppLocalizations localizations) {
    final bloc = context.read<PrayCalculationSettingBloc>();

    if (value == localizations.hightLatitudeCaluclationNone) {
      bloc.add(PrayCalculationSettingEvent.updateHightLatitudeCalculation(
        state: const PrayHightLatitudeCaluclationStateNone(),
      ));
    } else if (value == localizations.hightLatitudeCaluclationAngleBasedMethod) {
      bloc.add(PrayCalculationSettingEvent.updateHightLatitudeCalculation(
        state: const PrayHightLatitudeCaluclationStateAngleBasedMethod(),
      ));
    } else if (value == localizations.hightLatitudeCaluclationMidnight) {
      bloc.add(PrayCalculationSettingEvent.updateHightLatitudeCalculation(
        state: const PrayHightLatitudeCaluclationStateMidnight(),
      ));
    } else if (value == localizations.hightLatitudeCaluclationOneSeventh) {
      bloc.add(PrayCalculationSettingEvent.updateHightLatitudeCalculation(
        state: const PrayHightLatitudeCaluclationStateSeventhPartOfTheNight(),
      ));
    }
  }
}
