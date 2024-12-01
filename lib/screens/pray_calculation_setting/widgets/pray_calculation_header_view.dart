import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/salah_timing_view/widgets/salah_box.dart';
import 'package:islam_app/screens/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';

class PrayCalculationHeaderView extends StatelessWidget {
  const PrayCalculationHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
          buildWhen: (previous, current) =>
              previous.fajirTime != current.fajirTime,
          builder: (context, state) {
            return SalahBox(
              salahType: const SalahTimeStateFajir(),
              salahTime: DateTime.now(), // state.fajirTime,//TODO
              isCurrentSalah: false,
            );
          },
        ),
        BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
          buildWhen: (previous, current) =>
              previous.sunriseTime != current.sunriseTime,
          builder: (context, state) {
            return SalahBox(
              salahType: const SalahTimeStateSunrise(),
              salahTime: DateTime.now(), // state.sunriseTime,//TODO
              isCurrentSalah: false,
            );
          },
        ),
        BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
          buildWhen: (previous, current) =>
              previous.duherTime != current.duherTime,
          builder: (context, state) {
            return SalahBox(
              salahType: const SalahTimeStateZhur(),
              salahTime: DateTime.now(), // state.duherTime,//TODO
              isCurrentSalah: false,
            );
          },
        ),
        BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
          buildWhen: (previous, current) => previous.asrTime != current.asrTime,
          builder: (context, state) {
            return SalahBox(
              salahType: const SalahTimeStateAsr(),
              salahTime: DateTime.now(), // state.asrTime,//TODO
              isCurrentSalah: false,
            );
          },
        ),
        BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
          buildWhen: (previous, current) =>
              previous.megribTime != current.megribTime,
          builder: (context, state) {
            return SalahBox(
              salahType: const SalahTimeStateMaghrib(),
              salahTime: DateTime.now(), // state.megribTime,//TODO
              isCurrentSalah: false,
            );
          },
        ),
        BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
          buildWhen: (previous, current) =>
              previous.ishaTime != current.ishaTime,
          builder: (context, state) {
            return SalahBox(
              salahType: const SalahTimeStateIsha(),
              salahTime: DateTime.now(), // state.ishaTime,//TODO
              isCurrentSalah: false,
            );
          },
        ),
      ],
    );
  }
}
