import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/calculation_setting_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/checkbox_tile.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays timezone selection options for prayer calculations.
///
/// This view allows users to select different timezone offsets to ensure
/// prayer times are calculated correctly for their local time zone.
/// It provides a list of available timezone options with checkboxes for selection,
/// helping users adjust prayer times based on their geographical location.
class TimeZoneView extends StatelessWidget {
  /// Creates a [TimeZoneView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const TimeZoneView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomText(
            title: localizations.timezone,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          CustomText(
            title: localizations.timezoneDetails,
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
      buildWhen: (previous, current) => previous.timeZone != current.timeZone,
      builder: (context, state) {
        final timeZonesList = CalculationSettingUsecase.getTimeZonesList(
            localizations, state.timeZone);
        return ListView.builder(
          itemCount: timeZonesList.length,
          itemBuilder: (context, index) {
            return CheckBoxTile(
              title: timeZonesList[index].name,
              isSelected: timeZonesList[index].isSelected,
              onChanged: () => context.read<PrayCalculationSettingBloc>().add(
                    PrayCalculationSettingEvent.updateTimeZone(
                      value: timeZonesList[index].duration,
                    ),
                  ),
            );
          },
        );
      },
    );
  }
}
