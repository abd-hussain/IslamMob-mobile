import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/tasbeeh/bloc/tasbeeh_bloc.dart';

class ToggleButton extends StatelessWidget {
  final IconData icon;
  final bool? Function(TasbeehState?) selector;
  final VoidCallback onPressed;

  const ToggleButton({
    required this.icon,
    required this.selector,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasbeehBloc, TasbeehState>(
      // buildWhen: (previous, current) => selector(previous) != selector(current),
      builder: (context, state) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(8),
            backgroundColor: const Color(0xFF89ABAA),
          ),
          onPressed: onPressed,
          child: Icon(
            icon,
            color: _toggleButtonIconColor(selector(state)),
            size: 32,
          ),
        );
      },
    );
  }

  Color _toggleButtonIconColor(bool? state) {
    return state ?? true ? const Color(0xFFFFCB42) : const Color(0xFF4B5E5E);
  }
}
