import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/calculation_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/checkbox_tile.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class PolesCalculationView extends StatelessWidget {
  const PolesCalculationView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.all(8),
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
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: _buildCalculationSelector(context, localizations),
          )),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildCalculationSelector(
      BuildContext context, IslamMobLocalizations localizations) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) =>
          previous.hightLatitudeCaluclation != current.hightLatitudeCaluclation,
      builder: (context, state) {
        final hightLatitudeCaluclationList =
            CalculationSettingUsecase.getHightLatitudeCaluclationList(
                localizations, state.hightLatitudeCaluclation);

        return ListView.builder(
          itemCount: hightLatitudeCaluclationList.length,
          itemBuilder: (context, index) {
            return CheckBoxTile(
              title: hightLatitudeCaluclationList[index].name,
              isSelected: hightLatitudeCaluclationList[index].isSelected,
              onChanged: () => context.read<PrayCalculationSettingBloc>().add(
                    PrayCalculationSettingEvent.updateHightLatitudeCalculation(
                      state: hightLatitudeCaluclationList[index].method,
                    ),
                  ),
            );
          },
        );
      },
    );
  }
}
