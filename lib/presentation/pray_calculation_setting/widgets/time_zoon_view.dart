import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
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
          Expanded(child: _buildCalculationSelector(context, localizations)),
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
        return CustomRadioButton(
          elevation: 2,
          horizontal: true,
          absoluteZeroSpacing: false,
          unSelectedColor: Colors.white,
          unSelectedBorderColor: const Color(0xff444444),
          selectedColor: const Color(0xff007F37),
          defaultSelected: state.timeZone,
          buttonLables: _getTimeZoneList(),
          buttonValues: _getTimeZoneList(),
          buttonTextStyle: const ButtonTextStyle(
            selectedColor: Colors.white,
            unSelectedColor: Color(0xff444444),
            textStyle: TextStyle(fontSize: 14),
          ),
          radioButtonValue: (value) {
            // context.read<PrayCalculationSettingBloc>().add(
            //       PrayCalculationSettingEvent.updateTimeZone(
            //         value: value,
            //       ),
            //     );
          },
        );
      },
    );
  }

  List<String> _getTimeZoneList() {
    return [
      "UTC -12:00",
      "UTC -11:00",
      "UTC -10:00",
      "UTC -09:30",
      "UTC -09:00",
      "UTC -08:00 ",
      "UTC -07:00",
      "UTC -06:00",
      "UTC -05:00",
      "UTC -04:00",
      "UTC -03:30",
      "UTC -03:00",
      "UTC -02:00",
      "UTC -01:00",
      "UTC/GMT",
      "UTC +01:00",
      "UTC +02:00",
      "UTC +03:00",
      "UTC +03:30",
      "UTC +04:00",
      "UTC +04:30",
      "UTC +05:00",
      "UTC +05:30",
      "UTC +05:45",
      "UTC +06:00",
      "UTC +06:30",
      "UTC +07:00",
      "UTC +08:00",
      "UTC +08:45",
      "UTC +09:00",
      "UTC +09:30",
      "UTC +10:00",
      "UTC +10:30",
      "UTC +11:00",
      "UTC +12:00",
      "UTC +12:45",
      "UTC +13:00",
      "UTC +14:00",
    ];
  }
}
