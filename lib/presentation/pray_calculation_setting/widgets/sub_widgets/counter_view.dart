import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class CounterView extends StatefulWidget {
  final int initialValue;
  final ValueChanged<int> onValueChanged;

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
                color: Colors.white,
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
