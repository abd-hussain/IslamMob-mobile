import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/calculation_method_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/edit_pray_time_minutes_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/madhab_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/poles_calculation_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/pray_calculation_header_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/pray_calculation_subheader_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/time_zoon_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';

//TODO: this screen need to be checked
class PrayCalculationSettingScreen extends StatelessWidget {
  const PrayCalculationSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PrayCalculationSettingBloc()
        ..add(
          PrayCalculationSettingEvent.setup(),
        ),
      child: Scaffold(
        appBar: CustomAppBar(
          title: AppLocalizations.of(context)!.prayCalculationSettings,
        ),
        body: SafeArea(
          child: Column(
            children: [
              const PrayCalculationHeaderView(),
              const SizedBox(height: 4),
              const PrayCalculationSubHeaderView(),
              const SizedBox(height: 8),
              _swiperSection(),
              const SizedBox(height: 10),
              _buttonsSection(),
            ],
          ),
        ),
      ),
    );
  }

  // Swiper section for displaying the different calculation views
  Widget _swiperSection() {
    return Expanded(
      child: Container(
        color: Colors.grey[300],
        child: Swiper(
          itemCount: 5,
          pagination: const SwiperPagination(),
          controller: SwiperController(),
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return const CalculationMethodView();
              case 1:
                return const MadhabView();
              case 2:
                return const TimeZoneView();
              case 3:
                return const EditPrayTimeMinutesView();
              case 4:
                return const PolesCalculationView();
              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }

  Widget _buttonsSection() {
    return Column(
      children: [
        BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
          buildWhen: (previous, current) =>
              previous.buttonsStatus != current.buttonsStatus,
          builder: (context, state) {
            return CustomButton(
              isEnabled: state.buttonsStatus,
              padding: const EdgeInsets.only(left: 16, right: 16),
              title: AppLocalizations.of(context)!.save,
              onTap: () {
                context
                    .read<PrayCalculationSettingBloc>()
                    .add(PrayCalculationSettingEvent.saveChanges(status: true));
                Navigator.pop(context);
              },
            );
          },
        ),
        const SizedBox(height: 10),
        BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
          buildWhen: (previous, current) =>
              previous.buttonsStatus != current.buttonsStatus,
          builder: (context, state) {
            return CustomButton(
              padding: const EdgeInsets.only(left: 16, right: 16),
              isEnabled: state.buttonsStatus,
              title: AppLocalizations.of(context)!.factoryReset,
              onTap: () => context
                  .read<PrayCalculationSettingBloc>()
                  .add(PrayCalculationSettingEvent.factoryReset(status: true)),
            );
          },
        ),
      ],
    );
  }
}
