import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/home_tab/bloc/home/home_tab_bloc.dart';
import 'package:islam_app/presentation/home_tab/widgets/salah_timing_view/widgets/salah_box.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';

class PrayCalculationHeaderView extends StatelessWidget {
  const PrayCalculationHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _buildSalahBoxes(context),
    );
  }

  List<Widget> _buildSalahBoxes(BuildContext context) {
    final salahConfigs = [
      _SalahConfig(
        stateSelector: (state) => state.fajirTime,
        salahType: const SalahTimeStateFajir(),
      ),
      _SalahConfig(
        stateSelector: (state) => state.sunriseTime,
        salahType: const SalahTimeStateSunrise(),
      ),
      _SalahConfig(
        stateSelector: (state) => state.duherTime,
        salahType: const SalahTimeStateZhur(),
      ),
      _SalahConfig(
        stateSelector: (state) => state.asrTime,
        salahType: const SalahTimeStateAsr(),
      ),
      _SalahConfig(
        stateSelector: (state) => state.megribTime,
        salahType: const SalahTimeStateMaghrib(),
      ),
      _SalahConfig(
        stateSelector: (state) => state.ishaTime,
        salahType: const SalahTimeStateIsha(),
      ),
    ];

    return salahConfigs.map((config) {
      return BlocBuilder<PrayCalculationSettingBloc,
          PrayCalculationSettingState>(
        buildWhen: (previous, current) =>
            config.stateSelector(previous) != config.stateSelector(current),
        builder: (context, state) {
          final salahTime = config.stateSelector(state) ?? DateTime.now();
          return SalahBox(
            salahType: config.salahType,
            salahTime: salahTime,
            isCurrentSalah: false,
          );
        },
      );
    }).toList();
  }
}

class _SalahConfig {
  final DateTime? Function(PrayCalculationSettingState) stateSelector;
  final SalahTimeState salahType;

  _SalahConfig({
    required this.stateSelector,
    required this.salahType,
  });
}
