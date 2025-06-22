import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/digital_font/digital_number.dart';

/// A widget that displays a maximum count value in an electric-style digital display.
///
/// This widget creates a digital counter display with a green background that
/// shows a maximum count value using digital-style numbers. It includes a
/// background pattern of "88888" to simulate an LCD display effect where
/// inactive segments are visible.
class ElectricMaxCounterView extends StatelessWidget {
  /// The maximum count value to display.
  ///
  /// This integer value will be shown in the digital display using
  /// the digital number font style.
  final int maxCount;

  /// The width used for calculating the display dimensions.
  ///
  /// This value is used to calculate the height and width of the
  /// display container proportionally, ensuring consistent sizing
  /// across different screen sizes.
  final double width;

  /// Creates an [ElectricMaxCounterView] with the specified parameters.
  ///
  /// Both [maxCount] and [width] are required:
  /// - [maxCount]: The maximum count value to display
  /// - [width]: The reference width for proportional sizing
  const ElectricMaxCounterView({
    super.key,
    required this.maxCount,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: width * 0.07,
        width: width * 0.16,
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
                        value: maxCount,
                        height: maxHeight * 0.65,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: DigitalNumber(
                        value: 88888,
                        height: maxHeight * 0.65,
                        color: Colors.black12,
                      ),
                    ),
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
