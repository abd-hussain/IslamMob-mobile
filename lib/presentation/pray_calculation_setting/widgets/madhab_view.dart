import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/madhab.dart';
import 'package:islam_app/models/madhab_setting.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/checkbox_tile.dart';
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
          const SizedBox(height: 4),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: _buildMathhabSelector(context, localizations),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildMathhabSelector(
      BuildContext context, AppLocalizations localizations) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) => previous.madhab != current.madhab,
      builder: (context, state) {
        final madhabList = _getMadhabList(localizations, state.madhab);

        return ListView.builder(
          itemCount: madhabList.length,
          itemBuilder: (context, index) {
            return CheckBoxTile(
              title: madhabList[index].name,
              isSelected: madhabList[index].isSelected,
              onChanged: () => context.read<PrayCalculationSettingBloc>().add(
                    PrayCalculationSettingEvent.updateMadhabMethod(
                      madhab: madhabList[index].method,
                    ),
                  ),
            );
          },
        );
      },
    );
  }

  List<MadhabSetting> _getMadhabList(
      AppLocalizations localizations, MadhabState currentState) {
    return [
      MadhabSetting(
        name: localizations.mathhab1Shafi,
        method: const MadhabState.shafi(),
        isSelected: currentState == const MadhabState.shafi(),
      ),
      MadhabSetting(
        name: localizations.mathhab2Hanafi,
        method: const MadhabState.hanafi(),
        isSelected: currentState == const MadhabState.hanafi(),
      ),
    ];
  }
}