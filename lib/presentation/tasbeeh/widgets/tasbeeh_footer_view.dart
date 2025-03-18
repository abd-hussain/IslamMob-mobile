import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/tasbeeh/bloc/tasbeeh_bloc.dart';
import 'package:islam_app/presentation/tasbeeh/widgets/toggle_button.dart';

class TasbeehFooterView extends StatelessWidget {
  const TasbeehFooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Previos toggle button
          ToggleButton(
            icon: Directionality.of(context) == TextDirection.rtl
                ? Icons.keyboard_double_arrow_right_outlined
                : Icons.keyboard_double_arrow_left_outlined,
            selector: (state) => null,
            onPressed: () => context
                .read<TasbeehBloc>()
                .add(const TasbeehEvent.leftZikerSelected()),
          ),

          // Sound toggle button
          ToggleButton(
            icon: Icons.volume_up_rounded,
            selector: (state) => state?.allowSound,
            onPressed: () => context
                .read<TasbeehBloc>()
                .add(const TasbeehEvent.soundSetting()),
          ),
          // Vibration toggle button
          ToggleButton(
            icon: Icons.vibration_rounded,
            selector: (state) => state?.allowVibration,
            onPressed: () => context
                .read<TasbeehBloc>()
                .add(const TasbeehEvent.vibrationSetting()),
          ),
          // Next toggle button
          ToggleButton(
            icon: Directionality.of(context) == TextDirection.rtl
                ? Icons.keyboard_double_arrow_left_outlined
                : Icons.keyboard_double_arrow_right_outlined,
            selector: (state) => null,
            onPressed: () => context
                .read<TasbeehBloc>()
                .add(const TasbeehEvent.rightZikerEnabled()),
          ),
        ],
      ),
    );
  }
}
