import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_enum.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/sub_widgets/time_correction_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditPrayTimeMinutesView extends StatelessWidget {
  const EditPrayTimeMinutesView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomText(
            title: localizations.editPrayTimeMinManual,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: localizations.editPrayTimeMinManualDetails,
            fontSize: 14,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListView(
                children: _buildTimeCorrectionViews(context, localizations),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  List<Widget> _buildTimeCorrectionViews(BuildContext context, AppLocalizations localizations) {
    final corrections = [
      _CorrectionData(
        title: localizations.fajirCorrectionTitle,
        getter: (state) => state.editFajirTimeManual,
        type: AzanTypeForEditMin.fajir,
      ),
      _CorrectionData(
        title: localizations.sunriseCorrectionTitle,
        getter: (state) => state.editSunriseTimeManual,
        type: AzanTypeForEditMin.sunrise,
      ),
      _CorrectionData(
        title: localizations.duhorCorrectionTitle,
        getter: (state) => state.editDuhirTimeManual,
        type: AzanTypeForEditMin.zhur,
      ),
      _CorrectionData(
        title: localizations.asrCorrectionTitle,
        getter: (state) => state.editAsrTimeManual,
        type: AzanTypeForEditMin.asr,
      ),
      _CorrectionData(
        title: localizations.maghribCorrectionTitle,
        getter: (state) => state.editMagrebTimeManual,
        type: AzanTypeForEditMin.maghrib,
      ),
      _CorrectionData(
        title: localizations.ishaCorrectionTitle,
        getter: (state) => state.editIshaTimeManual,
        type: AzanTypeForEditMin.isha,
      ),
      _CorrectionData(
        title: localizations.midnightCorrectionTitle,
        getter: (state) => state.editMidNightTimeManual,
        type: AzanTypeForEditMin.midnight,
      ),
      _CorrectionData(
        title: localizations.lastThirdOfTheNightCorrectionTitle,
        getter: (state) => state.editLast3thTimeTimeManual,
        type: AzanTypeForEditMin.last3th,
      ),
    ];

    return corrections.map((correction) => _buildTimeCorrectionBloc(context, correction)).toList();
  }

  Widget _buildTimeCorrectionBloc(BuildContext context, _CorrectionData correction) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) => correction.getter(previous) != correction.getter(current),
      builder: (context, state) {
        return TimeCorrectionView(
          title: correction.title,
          initialValue: correction.getter(state),
          onValueChanged: (value) {
            context.read<PrayCalculationSettingBloc>().add(
                  PrayCalculationSettingEvent.updateAzanTypeInMin(
                    minutes: value,
                    azanType: correction.type,
                  ),
                );
          },
        );
      },
    );
  }
}

class _CorrectionData {
  final String title;
  final int Function(PrayCalculationSettingState state) getter;
  final AzanTypeForEditMin type;

  _CorrectionData({
    required this.title,
    required this.getter,
    required this.type,
  });
}
