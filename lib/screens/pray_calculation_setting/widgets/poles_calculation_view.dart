import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PolesCalculationView extends StatelessWidget {
  const PolesCalculationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomText(
            title: AppLocalizations.of(context)!.highLatitude,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: AppLocalizations.of(context)!.highLatitudeDetails,
            fontSize: 14,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          Expanded(
            child: BlocBuilder<PrayCalculationSettingBloc,
                PrayCalculationSettingState>(
              buildWhen: (previous, current) =>
                  previous.hightLatitudeCaluclation !=
                  current.hightLatitudeCaluclation,
              builder: (context, state) {
                return CustomRadioButton(
                  elevation: 2,
                  horizontal: true,
                  absoluteZeroSpacing: false,
                  unSelectedColor: Colors.white,
                  unSelectedBorderColor: const Color(0xff444444),
                  selectedColor: const Color(0xff007F37),
                  defaultSelected: getInitialHightLatitudeCalculation(
                      context, state.hightLatitudeCaluclation),
                  buttonLables: getHightLatitudeCalculationList(context),
                  buttonValues: getHightLatitudeCalculationList(context),
                  buttonTextStyle: const ButtonTextStyle(
                    selectedColor: Colors.white,
                    unSelectedColor: Color(0xff444444),
                    textStyle: TextStyle(fontSize: 14),
                  ),
                  radioButtonValue: (value) {
                    if (value ==
                        AppLocalizations.of(context)!
                            .hightLatitudeCaluclationNone) {
                      context.read<PrayCalculationSettingBloc>().add(
                            PrayCalculationSettingEvent
                                .updateHightLatitudeCaluclation(
                              state: const HightLatitudeCaluclationStateNone(),
                            ),
                          );
                    } else if (value ==
                        AppLocalizations.of(context)!
                            .hightLatitudeCaluclationAngleBasedMethod) {
                      context.read<PrayCalculationSettingBloc>().add(
                            PrayCalculationSettingEvent
                                .updateHightLatitudeCaluclation(
                              state:
                                  const HightLatitudeCaluclationStateAngleBasedMethod(),
                            ),
                          );
                    } else if (value ==
                        AppLocalizations.of(context)!
                            .hightLatitudeCaluclationMidnight) {
                      context.read<PrayCalculationSettingBloc>().add(
                            PrayCalculationSettingEvent
                                .updateHightLatitudeCaluclation(
                              state:
                                  const HightLatitudeCaluclationStateMidnight(),
                            ),
                          );
                    } else if (value ==
                        AppLocalizations.of(context)!
                            .hightLatitudeCaluclationOneSeventh) {
                      context.read<PrayCalculationSettingBloc>().add(
                            PrayCalculationSettingEvent
                                .updateHightLatitudeCaluclation(
                              state:
                                  const HightLatitudeCaluclationStateSeventhPartOfTheNight(),
                            ),
                          );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  String getInitialHightLatitudeCalculation(
      BuildContext context, HightLatitudeCaluclationState method) {
    switch (method) {
      case HightLatitudeCaluclationStateNone():
        return AppLocalizations.of(context)!.hightLatitudeCaluclationNone;
      case HightLatitudeCaluclationStateAngleBasedMethod():
        return AppLocalizations.of(context)!
            .hightLatitudeCaluclationAngleBasedMethod;
      case HightLatitudeCaluclationStateMidnight():
        return AppLocalizations.of(context)!.hightLatitudeCaluclationMidnight;
      case HightLatitudeCaluclationStateSeventhPartOfTheNight():
        return AppLocalizations.of(context)!.hightLatitudeCaluclationOneSeventh;
    }
  }

  List<String> getHightLatitudeCalculationList(BuildContext context) {
    return [
      AppLocalizations.of(context)!.hightLatitudeCaluclationNone,
      AppLocalizations.of(context)!.hightLatitudeCaluclationAngleBasedMethod,
      AppLocalizations.of(context)!.hightLatitudeCaluclationMidnight,
      AppLocalizations.of(context)!.hightLatitudeCaluclationOneSeventh,
    ];
  }
}
