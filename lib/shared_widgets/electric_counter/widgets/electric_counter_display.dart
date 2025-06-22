import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/digital_font/digital_number.dart';

/// Widget for displaying the digital counter screen in Islamic dhikr counting.
///
/// This widget provides a realistic digital display interface for Islamic
/// dhikr (remembrance of Allah) counting, mimicking traditional electronic
/// counters used in mosques and by Muslims worldwide. It features:
/// - **Digital number display** with authentic electronic counter styling
/// - **Layered visual effect** with background digits for realistic appearance
/// - **Responsive sizing** adapting to different screen dimensions
/// - **Islamic green color scheme** reflecting traditional Islamic aesthetics
/// - **High contrast display** for clear visibility during dhikr practice
///
/// The display supports Muslims in their spiritual practice by providing
/// a familiar, traditional-looking counter interface for tracking Islamic
/// remembrances, supplications, and dhikr repetitions.
class ElectricCounterDisplay extends StatelessWidget {
  /// The current count value to display on the digital screen.
  final int currentCount;

  /// The width dimension for responsive display sizing.
  final double width;

  /// The height dimension for responsive display sizing.
  final double hight;

  /// Creates an [ElectricCounterDisplay] widget for Islamic dhikr counting.
  ///
  /// Parameters:
  /// - [currentCount]: The current dhikr count to display
  /// - [width]: Width dimension for responsive sizing
  /// - [hight]: Height dimension for responsive sizing
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
