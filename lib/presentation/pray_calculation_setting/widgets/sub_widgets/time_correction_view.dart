import 'package:flutter/material.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/sub_widgets/counter_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that allows users to adjust prayer time corrections with a counter interface.
///
/// This widget is used in the prayer calculation settings to provide fine-tuning
/// capabilities for prayer times. It displays a title describing the prayer time
/// being adjusted and includes an interactive counter that allows users to add
/// or subtract minutes from the calculated prayer time.
///
/// The widget is commonly used for:
/// - Adjusting individual prayer times (Fajr, Zuhr, Asr, Maghrib, Isha)
/// - Compensating for local variations in prayer time calculations
/// - Allowing users to customize prayer times based on their preferences
///
/// The interface consists of a title label and a counter control in a styled
/// container with shadow effects for visual separation.
class TimeCorrectionView extends StatelessWidget {
  /// The descriptive title for the time correction setting.
  ///
  /// This text describes which prayer time is being adjusted (e.g., "Fajr Time Correction",
  /// "Maghrib Time Correction"). The title is displayed prominently and can wrap
  /// to multiple lines if needed.
  final String title;

  /// The initial correction value in minutes.
  ///
  /// This represents the current time adjustment for the prayer time, typically
  /// ranging from negative values (earlier) to positive values (later). The value
  /// is displayed in the counter and serves as the starting point for adjustments.
  final int initialValue;

  /// Callback function triggered when the correction value changes.
  ///
  /// This function is called whenever the user adjusts the counter value,
  /// providing the new correction value in minutes. The parent widget should
  /// use this callback to update the prayer time settings.
  final ValueChanged<int> onValueChanged;

  /// Creates a [TimeCorrectionView] widget.
  ///
  /// All parameters are required to properly display and handle the time
  /// correction interface.
  const TimeCorrectionView({
    super.key,
    required this.title,
    required this.initialValue,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: _buildContainer(
        child: Row(
          children: [
            _buildTitle(),
            CounterView(
              initialValue: initialValue,
              onValueChanged: onValueChanged,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Expanded(
      child: CustomText(
        title: title,
        fontSize: 14,
        color: const Color(0xff444444),
        fontWeight: FontWeight.bold,
        maxLines: 2,
      ),
    );
  }

  Widget _buildContainer({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(padding: const EdgeInsets.all(8), child: child),
    );
  }
}
