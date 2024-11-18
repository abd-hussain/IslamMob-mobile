import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class SalahTimerView extends StatefulWidget {
  final DateTime targetTime;

  const SalahTimerView({super.key, required this.targetTime});

  @override
  State<SalahTimerView> createState() => _SalahTimerViewState();
}

class _SalahTimerViewState extends State<SalahTimerView> {
  late Timer _timer;
  Duration _remainingTime = Duration.zero;

  @override
  void initState() {
    super.initState();
    _remainingTime = widget.targetTime.difference(DateTime.now());
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _remainingTime = widget.targetTime.difference(DateTime.now());
        if (_remainingTime.isNegative) {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_remainingTime.isNegative) {
      return const CustomText(
        title: "00:00",
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );
    }

    final hours = _remainingTime.inHours;
    final minutes = _remainingTime.inMinutes % 60;
    final seconds = _remainingTime.inSeconds % 60;

    return CustomText(
      title:
          "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}",
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }
}
