import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrayCalculationSubHeaderView extends StatelessWidget {
  const PrayCalculationSubHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomText(
                          title: AppLocalizations.of(context)!.midnight,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          textColor: const Color(0xff444444),
                          textAlign: TextAlign.center,
                        ),
                        BlocBuilder<PrayCalculationSettingBloc,
                            PrayCalculationSettingState>(
                          buildWhen: (previous, current) =>
                              previous.midleNighTime != current.midleNighTime,
                          builder: (context, state) {
                            return CustomText(
                              title: state.midleNighTime,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              textColor: const Color(0xff444444),
                              textAlign: TextAlign.center,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomText(
                          title: AppLocalizations.of(context)!.last3ofnight,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          textColor: const Color(0xff444444),
                          textAlign: TextAlign.center,
                        ),
                        BlocBuilder<PrayCalculationSettingBloc,
                            PrayCalculationSettingState>(
                          buildWhen: (previous, current) =>
                              previous.last3thTime != current.last3thTime,
                          builder: (context, state) {
                            return CustomText(
                              title: state.last3thTime,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              textColor: const Color(0xff444444),
                              textAlign: TextAlign.center,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomText(
                          title: AppLocalizations.of(context)!.deviceTime,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          textColor: const Color(0xff444444),
                          textAlign: TextAlign.center,
                        ),
                        BlocBuilder<PrayCalculationSettingBloc,
                            PrayCalculationSettingState>(
                          buildWhen: (previous, current) =>
                              previous.deviceTime != current.deviceTime,
                          builder: (context, state) {
                            return CustomText(
                              title: state.deviceTime,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              textColor: const Color(0xff444444),
                              textAlign: TextAlign.center,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomText(
                          title: AppLocalizations.of(context)!.applicationTime,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          textColor: const Color(0xff444444),
                          textAlign: TextAlign.center,
                        ),
                        BlocBuilder<PrayCalculationSettingBloc,
                            PrayCalculationSettingState>(
                          buildWhen: (previous, current) =>
                              previous.applicationTime !=
                              current.applicationTime,
                          builder: (context, state) {
                            return CustomText(
                              title: state.applicationTime,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              textColor: const Color(0xff444444),
                              textAlign: TextAlign.center,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
