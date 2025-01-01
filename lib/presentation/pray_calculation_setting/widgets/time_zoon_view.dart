import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/time_zone_setting.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/checkbox_tile.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TimeZoneView extends StatelessWidget {
  const TimeZoneView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
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
      BuildContext context, AppLocalizations localizations) {
    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) => previous.timeZone != current.timeZone,
      builder: (context, state) {
        final timeZonesList = _getTimeZonesList(localizations, state.timeZone);
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

  List<TimeZoneSetting> _getTimeZonesList(
      AppLocalizations localizations, Duration currentState) {
    return [
      TimeZoneSetting(
        name: "UTC -12:00",
        duration: const Duration(hours: -12),
        isSelected: currentState == const Duration(hours: -12),
      ),
      TimeZoneSetting(
        name: "UTC -11:00",
        duration: const Duration(hours: -11),
        isSelected: currentState == const Duration(hours: -11),
      ),
      TimeZoneSetting(
        name: "UTC -10:00",
        duration: const Duration(hours: -10),
        isSelected: currentState == const Duration(hours: -10),
      ),
      TimeZoneSetting(
        name: "UTC -09:30",
        duration: const Duration(hours: -9, minutes: -30),
        isSelected: currentState == const Duration(hours: -09, minutes: -30),
      ),
      TimeZoneSetting(
        name: "UTC -09:00",
        duration: const Duration(hours: -9),
        isSelected: currentState == const Duration(hours: -09),
      ),
      TimeZoneSetting(
        name: "UTC -08:00",
        duration: const Duration(hours: -8),
        isSelected: currentState == const Duration(hours: -8),
      ),
      TimeZoneSetting(
        name: "UTC -07:00",
        duration: const Duration(hours: -7),
        isSelected: currentState == const Duration(hours: -7),
      ),
      TimeZoneSetting(
        name: "UTC -06:00",
        duration: const Duration(hours: -6),
        isSelected: currentState == const Duration(hours: -6),
      ),
      TimeZoneSetting(
        name: "UTC -05:00",
        duration: const Duration(hours: -5),
        isSelected: currentState == const Duration(hours: -5),
      ),
      TimeZoneSetting(
        name: "UTC -04:00",
        duration: const Duration(hours: -4),
        isSelected: currentState == const Duration(hours: -4),
      ),
      TimeZoneSetting(
        name: "UTC -03:30",
        duration: const Duration(hours: -3, minutes: -30),
        isSelected: currentState == const Duration(hours: -3, minutes: -30),
      ),
      TimeZoneSetting(
        name: "UTC -03:00",
        duration: const Duration(hours: -3),
        isSelected: currentState == const Duration(hours: -3),
      ),
      TimeZoneSetting(
        name: "UTC -02:00",
        duration: const Duration(hours: -2),
        isSelected: currentState == const Duration(hours: -2),
      ),
      TimeZoneSetting(
        name: "UTC -01:00",
        duration: const Duration(hours: -1),
        isSelected: currentState == const Duration(hours: -1),
      ),
      TimeZoneSetting(
        name: "UTC/GMT",
        duration: const Duration(hours: 0),
        isSelected: currentState == const Duration(hours: 0),
      ),
      TimeZoneSetting(
        name: "UTC +01:00",
        duration: const Duration(hours: 1),
        isSelected: currentState == const Duration(hours: 1),
      ),
      TimeZoneSetting(
        name: "UTC +02:00",
        duration: const Duration(hours: 2),
        isSelected: currentState == const Duration(hours: 2),
      ),
      TimeZoneSetting(
        name: "UTC +03:00",
        duration: const Duration(hours: 3),
        isSelected: currentState == const Duration(hours: 3),
      ),
      TimeZoneSetting(
        name: "UTC +03:30",
        duration: const Duration(hours: 3, minutes: 30),
        isSelected: currentState == const Duration(hours: 3, minutes: 30),
      ),
      TimeZoneSetting(
        name: "UTC +04:00",
        duration: const Duration(hours: 4),
        isSelected: currentState == const Duration(hours: 4),
      ),
      TimeZoneSetting(
        name: "UTC +04:30",
        duration: const Duration(hours: 4, minutes: 30),
        isSelected: currentState == const Duration(hours: 4, minutes: 30),
      ),
      TimeZoneSetting(
        name: "UTC +05:00",
        duration: const Duration(hours: 5),
        isSelected: currentState == const Duration(hours: 5),
      ),
      TimeZoneSetting(
        name: "UTC +05:30",
        duration: const Duration(hours: 5, minutes: 30),
        isSelected: currentState == const Duration(hours: 5, minutes: 30),
      ),
      TimeZoneSetting(
        name: "UTC +05:45",
        duration: const Duration(hours: 5, minutes: 45),
        isSelected: currentState == const Duration(hours: 5, minutes: 45),
      ),
      TimeZoneSetting(
        name: "UTC +06:00",
        duration: const Duration(hours: 6),
        isSelected: currentState == const Duration(hours: 6),
      ),
      TimeZoneSetting(
        name: "UTC +06:30",
        duration: const Duration(hours: 6, minutes: 30),
        isSelected: currentState == const Duration(hours: 6, minutes: 30),
      ),
      TimeZoneSetting(
        name: "UTC +07:00",
        duration: const Duration(hours: 7),
        isSelected: currentState == const Duration(hours: 7),
      ),
      TimeZoneSetting(
        name: "UTC +08:00",
        duration: const Duration(hours: 8),
        isSelected: currentState == const Duration(hours: 8),
      ),
      TimeZoneSetting(
        name: "UTC +08:45",
        duration: const Duration(hours: 8, minutes: 45),
        isSelected: currentState == const Duration(hours: 8, minutes: 45),
      ),
      TimeZoneSetting(
        name: "UTC +09:00",
        duration: const Duration(hours: 9),
        isSelected: currentState == const Duration(hours: 9),
      ),
      TimeZoneSetting(
        name: "UTC +09:30",
        duration: const Duration(hours: 9, minutes: 30),
        isSelected: currentState == const Duration(hours: 9, minutes: 30),
      ),
      TimeZoneSetting(
        name: "UTC +10:00",
        duration: const Duration(hours: 10),
        isSelected: currentState == const Duration(hours: 10),
      ),
      TimeZoneSetting(
        name: "UTC +10:30",
        duration: const Duration(hours: 10, minutes: 30),
        isSelected: currentState == const Duration(hours: 10, minutes: 30),
      ),
      TimeZoneSetting(
        name: "UTC +11:00",
        duration: const Duration(hours: 11),
        isSelected: currentState == const Duration(hours: 11),
      ),
      TimeZoneSetting(
        name: "UTC +12:00",
        duration: const Duration(hours: 12),
        isSelected: currentState == const Duration(hours: 12),
      ),
      TimeZoneSetting(
        name: "UTC +12:45",
        duration: const Duration(hours: 12, minutes: 45),
        isSelected: currentState == const Duration(hours: 12, minutes: 45),
      ),
      TimeZoneSetting(
        name: "UTC +13:00",
        duration: const Duration(hours: 13),
        isSelected: currentState == const Duration(hours: 13),
      ),
      TimeZoneSetting(
        name: "UTC +14:00",
        duration: const Duration(hours: 14),
        isSelected: currentState == const Duration(hours: 14),
      ),
    ];
  }
}
