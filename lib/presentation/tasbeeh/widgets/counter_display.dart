import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/tasbeeh.dart';
import 'package:islam_app/shared_widgets/digital_font/digital_number.dart';

class CounterDisplay extends StatelessWidget {
  final TasbeehModel tasbeehItem;

  const CounterDisplay({super.key, required this.tasbeehItem});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 70,
        width: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFB1D7B4),
        ),
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final maxHeight = constraints.maxHeight;
              final maxWidth = constraints.maxWidth;
              return SizedBox(
                height: maxHeight * 0.95,
                width: maxWidth * 0.845,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: DigitalNumber(
                        value: tasbeehItem.currentCount,
                        height: maxHeight * 0.65,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: DigitalNumber(
                        value: 888888,
                        height: maxHeight * 0.65,
                        color: Colors.black12,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
