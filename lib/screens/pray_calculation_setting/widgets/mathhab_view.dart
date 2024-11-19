import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MathhabView extends StatelessWidget {
  const MathhabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomText(
            title: AppLocalizations.of(context)!.mathhab,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            textColor: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: "Will Change Asr Prayer Time With One Hour Digree", //TODO
            fontSize: 14,
            textColor: const Color(0xff444444),
            textAlign: TextAlign.center,
            maxLins: 2,
          ),
          BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
            buildWhen: (previous, current) =>
                previous.mathhab != current.mathhab,
            builder: (context, state) {
              return CustomRadioButton(
                elevation: 2,
                horizontal: true,
                absoluteZeroSpacing: false,
                unSelectedColor: Colors.white,
                unSelectedBorderColor: const Color(0xff444444),
                selectedColor: const Color(0xff007F37),
                defaultSelected: state.mathhab == const MathhabState.hanafi()
                    ? "Hanafi"
                    : "Hanbali / Shafi / Maliki", //TODO
                buttonLables: const [
                  'Hanbali / Shafi / Maliki', //TODO
                  'Hanafi', //TODO
                ],
                buttonValues: const [
                  "Hanbali / Shafi / Maliki", //TODO
                  "Hanafi", //TODO
                ],
                buttonTextStyle: const ButtonTextStyle(
                  selectedColor: Colors.white,
                  unSelectedColor: Color(0xff444444),
                  textStyle: TextStyle(fontSize: 14),
                ),
                radioButtonValue: (value) {
                  if (value == "Hanbali / Shafi / Maliki") {
                    //TODO
                    context.read<PrayCalculationSettingBloc>().add(
                          PrayCalculationSettingEvent.updateMathhab(
                            mathhab: const MathhabState.shaafei(),
                          ),
                        );
                  } else {
                    context.read<PrayCalculationSettingBloc>().add(
                          PrayCalculationSettingEvent.updateMathhab(
                            mathhab: const MathhabState.hanafi(),
                          ),
                        );
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
