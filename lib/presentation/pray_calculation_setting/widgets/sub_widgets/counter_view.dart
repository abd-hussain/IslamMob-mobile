import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that provides an interactive counter with increment and decrement buttons.
///
/// This widget displays a numeric value with plus and minus buttons that allow
/// users to adjust the value within a specified range (-99 to +99). It's commonly
/// used in prayer calculation settings to allow fine-tuning of prayer time
/// corrections in minutes.
///
/// The counter features:
/// - Increment/decrement buttons with ionicons
/// - Range limitation (-99 to +99)
/// - Real-time value updates
/// - Callback notification when value changes
/// - Styled container with rounded corners and dark background
///
/// The buttons are automatically disabled when the value reaches the minimum
/// or maximum limits to prevent out-of-range values.
class CounterView extends StatefulWidget {
  /// The initial value to display in the counter.
  ///
  /// This value serves as the starting point for the counter and should be
  /// within the valid range (-99 to +99). It represents the current setting
  /// that the user can adjust.
  final int initialValue;

  /// Callback function triggered when the counter value changes.
  ///
  /// This function is called whenever the user increments or decrements the
  /// counter value. The new value is passed as a parameter, allowing the
  /// parent widget to respond to changes and update its state accordingly.
  final ValueChanged<int> onValueChanged;

  /// Creates a [CounterView] widget.
  ///
  /// Both [initialValue] and [onValueChanged] are required parameters.
  /// The initial value should be within the valid range (-99 to +99).
  const CounterView({
    super.key,
    required this.initialValue,
    required this.onValueChanged,
  });

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }

  void _updateCounter(int value) {
    setState(() {
      _counter += value;
    });
    widget.onValueChanged(_counter);
  }

  Widget _buildCounterButton({
    required IconData icon,
    required VoidCallback? onPressed,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff444444),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          _buildCounterButton(
            icon: Ionicons.remove_circle_outline,
            onPressed: _counter > -99 ? () => _updateCounter(-1) : null,
          ),
          SizedBox(
            width: 30,
            child: Center(
              child: CustomText(
                title: _counter.toString(),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _buildCounterButton(
            icon: Ionicons.add_circle_outline,
            onPressed: _counter < 99 ? () => _updateCounter(1) : null,
          ),
        ],
      ),
    );
  }
}
