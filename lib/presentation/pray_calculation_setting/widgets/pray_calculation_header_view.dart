import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/usecase/calculation_setting_usecase.dart';
import 'package:islam_app/presentation/home_tab/widgets/salah_timing_view/widgets/salah_box.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';

/// A header widget that displays the main prayer times in the calculation settings.
///
/// This widget shows a row of prayer time boxes (Salah boxes) displaying
/// the five daily prayers with their calculated times. It provides a visual
/// preview of how the current calculation settings affect the prayer times,
/// allowing users to see the results of their configuration changes in real-time.
class PrayCalculationHeaderView extends StatelessWidget {
  /// Creates a [PrayCalculationHeaderView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const PrayCalculationHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _buildSalahBoxes(context),
    );
  }

  List<Widget> _buildSalahBoxes(BuildContext context) {
    return CalculationSettingUsecase.getSalahConfigSettingList().map((config) {
      return BlocBuilder<
        PrayCalculationSettingBloc,
        PrayCalculationSettingState
      >(
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
