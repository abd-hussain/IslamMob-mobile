import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/screens/pray_calculation_setting/widgets/sub_widgets/time_correction_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditPrayTimeMinutesView extends StatelessWidget {
  const EditPrayTimeMinutesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomText(
            title: AppLocalizations.of(context)!.editPrayTimeMinManual,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            textColor: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: AppLocalizations.of(context)!.editPrayTimeMinManualDetails,
            fontSize: 14,
            textColor: const Color(0xff444444),
            textAlign: TextAlign.center,
            maxLins: 2,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListView(
                children: [
                  BlocBuilder<PrayCalculationSettingBloc,
                      PrayCalculationSettingState>(
                    buildWhen: (previous, current) =>
                        previous.editFajirTimeManual !=
                        current.editFajirTimeManual,
                    builder: (context, state) {
                      return TimeCorrectionView(
                        title:
                            AppLocalizations.of(context)!.fajirCorrectionTitle,
                        initialValue: state.editFajirTimeManual,
                        onValueChanged: (intValue) => context
                            .read<PrayCalculationSettingBloc>()
                            .add(
                                PrayCalculationSettingEvent.editFajirTimeManual(
                                    value: intValue)),
                      );
                    },
                  ),
                  BlocBuilder<PrayCalculationSettingBloc,
                      PrayCalculationSettingState>(
                    buildWhen: (previous, current) =>
                        previous.editSunriseTimeManual !=
                        current.editSunriseTimeManual,
                    builder: (context, state) {
                      return TimeCorrectionView(
                        title: AppLocalizations.of(context)!
                            .sunriseCorrectionTitle,
                        initialValue: state.editSunriseTimeManual,
                        onValueChanged: (intValue) => context
                            .read<PrayCalculationSettingBloc>()
                            .add(PrayCalculationSettingEvent
                                .editSunriseTimeManual(value: intValue)),
                      );
                    },
                  ),
                  BlocBuilder<PrayCalculationSettingBloc,
                      PrayCalculationSettingState>(
                    buildWhen: (previous, current) =>
                        previous.editDuhirTimeManual !=
                        current.editDuhirTimeManual,
                    builder: (context, state) {
                      return TimeCorrectionView(
                        title:
                            AppLocalizations.of(context)!.duhorCorrectionTitle,
                        initialValue: state.editDuhirTimeManual,
                        onValueChanged: (intValue) => context
                            .read<PrayCalculationSettingBloc>()
                            .add(
                                PrayCalculationSettingEvent.editDuhirTimeManual(
                                    value: intValue)),
                      );
                    },
                  ),
                  BlocBuilder<PrayCalculationSettingBloc,
                      PrayCalculationSettingState>(
                    buildWhen: (previous, current) =>
                        previous.editAsrTimeManual != current.editAsrTimeManual,
                    builder: (context, state) {
                      return TimeCorrectionView(
                        title: AppLocalizations.of(context)!.asrCorrectionTitle,
                        initialValue: state.editAsrTimeManual,
                        onValueChanged: (intValue) => context
                            .read<PrayCalculationSettingBloc>()
                            .add(PrayCalculationSettingEvent.editAsrTimeManual(
                                value: intValue)),
                      );
                    },
                  ),
                  BlocBuilder<PrayCalculationSettingBloc,
                      PrayCalculationSettingState>(
                    buildWhen: (previous, current) =>
                        previous.editMagrebTimeManual !=
                        current.editMagrebTimeManual,
                    builder: (context, state) {
                      return TimeCorrectionView(
                        title: AppLocalizations.of(context)!
                            .maghribCorrectionTitle,
                        initialValue: state.editMagrebTimeManual,
                        onValueChanged: (intValue) => context
                            .read<PrayCalculationSettingBloc>()
                            .add(PrayCalculationSettingEvent
                                .editMagrebTimeManual(value: intValue)),
                      );
                    },
                  ),
                  BlocBuilder<PrayCalculationSettingBloc,
                      PrayCalculationSettingState>(
                    buildWhen: (previous, current) =>
                        previous.editIshaTimeManual !=
                        current.editIshaTimeManual,
                    builder: (context, state) {
                      return TimeCorrectionView(
                        title:
                            AppLocalizations.of(context)!.ishaCorrectionTitle,
                        initialValue: state.editIshaTimeManual,
                        onValueChanged: (intValue) => context
                            .read<PrayCalculationSettingBloc>()
                            .add(PrayCalculationSettingEvent.editIshaTimeManual(
                                value: intValue)),
                      );
                    },
                  ),
                  BlocBuilder<PrayCalculationSettingBloc,
                      PrayCalculationSettingState>(
                    buildWhen: (previous, current) =>
                        previous.editMidNightTimeManual !=
                        current.editMidNightTimeManual,
                    builder: (context, state) {
                      return TimeCorrectionView(
                        title: AppLocalizations.of(context)!
                            .midnightCorrectionTitle,
                        initialValue: state.editMidNightTimeManual,
                        onValueChanged: (intValue) => context
                            .read<PrayCalculationSettingBloc>()
                            .add(PrayCalculationSettingEvent
                                .editMidNightTimeManual(value: intValue)),
                      );
                    },
                  ),
                  BlocBuilder<PrayCalculationSettingBloc,
                      PrayCalculationSettingState>(
                    buildWhen: (previous, current) =>
                        previous.editLast3thTimeTimeManual !=
                        current.editLast3thTimeTimeManual,
                    builder: (context, state) {
                      return TimeCorrectionView(
                        title: AppLocalizations.of(context)!
                            .lastThirdOfTheNightCorrectionTitle,
                        initialValue: state.editLast3thTimeTimeManual,
                        onValueChanged: (intValue) => context
                            .read<PrayCalculationSettingBloc>()
                            .add(PrayCalculationSettingEvent
                                .editLast3thTimeTimeManual(value: intValue)),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
