import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class CounterView extends StatefulWidget {
  final int initialValue;
  final Function(int) onValueChanged;
  const CounterView(
      {super.key, required this.initialValue, required this.onValueChanged});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int _counter = 0;

  @override
  void initState() {
    _counter = widget.initialValue;
    super.initState();
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
          IconButton(
            onPressed: () {
              if (_counter == -99) {
                return;
              }
              _counter--;
              widget.onValueChanged(_counter);
            },
            icon: const Icon(
              Ionicons.remove_circle_outline,
              color: Colors.white,
              size: 20,
            ),
          ),
          SizedBox(
            width: 30,
            child: Center(
              child: CustomText(
                title: widget.initialValue.toString(),
                fontSize: 14,
                fontWeight: FontWeight.bold,
                textColor: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              if (_counter == 99) {
                return;
              }
              _counter++;

              widget.onValueChanged(_counter);
            },
            icon: const Icon(
              Ionicons.add_circle_outline,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
