import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islam_app/presentation/tasbeeh/bloc/tasbeeh_bloc.dart';
import 'package:islam_app/presentation/tasbeeh/widgets/counter_display.dart';
import 'package:islam_app/presentation/tasbeeh/widgets/max_counter_view.dart';

class MasbahaView extends StatelessWidget {
  const MasbahaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Tasbeeh Counter outer image
        _buildTasbeehImage(
          assetPath: 'assets/images/tasbeeh_counter_layout.svg',
          color: const Color(0xFF89ABAA),
          size: 350,
        ),
        // Tasbeeh Counter inner image
        _buildTasbeehImage(
          assetPath: 'assets/images/tasbeeh_counter_layout.svg',
          color: const Color(0xFF4B5E5E),
          size: 320,
        ),
        Positioned(
          top: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CounterDisplay(),
              const SizedBox(height: 8),
              _buildButtonRow(context),
              const SizedBox(height: 10),
              _buildIncrementButton(context),
            ],
          ),
        ),
      ],
    );
  }

  /// Builds the Tasbeeh counter image with specified color and padding.
  Widget _buildTasbeehImage({
    required String assetPath,
    required Color color,
    required double size,
  }) {
    return SvgPicture.asset(
      assetPath,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      height: size,
      width: size,
    );
  }

  /// Builds the row containing the reset button.
  Widget _buildButtonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIconButton(
          icon: Icons.refresh,
          onPressed: () => context
              .read<TasbeehBloc>()
              .add(const TasbeehEvent.resetCounter()),
        ),
        const SizedBox(width: 45),
        const MaxCounterView(maxCount: 100),
      ],
    );
  }

  /// Builds a circular icon button with the given icon and action.
  Widget _buildIconButton(
      {required IconData icon, required VoidCallback onPressed}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(8),
        backgroundColor: const Color(0xFF6A8584),
      ),
      onPressed: onPressed,
      child: Icon(icon, color: const Color(0xFF343a40), size: 32),
    );
  }

  /// Builds the increment button.
  Widget _buildIncrementButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(60),
        backgroundColor: const Color(0xFFadb5bd),
      ),
      onPressed: () => context
          .read<TasbeehBloc>()
          .add(const TasbeehEvent.incrementCounter()),
      child: null,
    );
  }
}
