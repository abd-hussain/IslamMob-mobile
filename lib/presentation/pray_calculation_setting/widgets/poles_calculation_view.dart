import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/calculation_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/checkbox_tile.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays high latitude calculation options for prayer times.
///
/// This view allows users to select different calculation methods for prayer times
/// in high latitude regions where standard calculation methods may not be accurate.
/// It provides a list of available high latitude calculation methods with
/// checkboxes for selection.
class PolesCalculationView extends StatelessWidget {
  /// Creates a [PolesCalculationView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
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
