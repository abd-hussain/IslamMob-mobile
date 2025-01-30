import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/correction_min_time.dart';
import 'package:islam_app/domain/usecase/calculation_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/sub_widgets/time_correction_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class EditPrayTimeMinutesView extends StatelessWidget {
  const EditPrayTimeMinutesView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
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

  List<Widget> _buildTimeCorrectionViews(
      BuildContext context, IslamMobLocalizations localizations) {
    return CalculationSettingUsecase.getCorrectionMinTimeDataList(localizations)
        .map((correction) => _buildTimeCorrectionBloc(context, correction))
        .toList();
  }

  Widget _buildTimeCorrectionBloc(
      BuildContext context, CorrectionMinTimeData correction) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) =>
          correction.getter(previous) != correction.getter(current),
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
