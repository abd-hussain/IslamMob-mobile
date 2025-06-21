import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for displaying individual cells in the Islamic calendar grid.
///
/// This widget represents a single cell in the Islamic calendar interface,
/// displaying information such as dates, prayer times, or day names. It
/// provides a flexible layout that can accommodate:
/// - **Single text display** for prayer times or day names
/// - **Dual text display** for date combinations (Hijri/Gregorian)
/// - **Color coding** for highlighting current day or special dates
/// - **Consistent formatting** across the calendar grid
///
/// The cell view is used throughout the Islamic calendar to maintain
/// visual consistency while displaying different types of information
/// in an organized, readable format.
class CalenderCellView extends StatelessWidget {
  /// Primary text content displayed in the calendar cell.
  final String title;

  /// Optional secondary text content for dual-line display.
  final String? title2;

  /// Background color for the calendar cell.
  final Color color;

  /// Creates a [CalenderCellView] widget for calendar grid display.
  ///
  /// Parameters:
  /// - [title]: Primary text content (required)
  /// - [color]: Background color for the cell (required)
  /// - [title2]: Optional secondary text for dual-line display
  const CalenderCellView({
    super.key,
    required this.title,
    required this.color,
    this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              title: title,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: const Color(0xff444444),
            ),
            if (title2 != null)
              CustomText(
                title: title2!,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: const Color(0xff444444),
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
