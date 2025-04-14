import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/digital_font/digital_number.dart';

class ElectricCounterDisplay extends StatelessWidget {
  final int currentCount;
  final double width;
  final double hight;
  const ElectricCounterDisplay({
    super.key,
    required this.currentCount,
    required this.width,
    required this.hight,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: width * 0.15,
        width: width * 0.4,
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
                        value: currentCount,
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
