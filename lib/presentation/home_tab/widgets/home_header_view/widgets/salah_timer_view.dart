import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class SalahTimerView extends StatefulWidget {
  final DateTime targetTime;
  final Function() onTimerFinished;

  const SalahTimerView({
    super.key,
    required this.targetTime,
    required this.onTimerFinished,
  });

  @override
  State<SalahTimerView> createState() => _SalahTimerViewState();
}

class _SalahTimerViewState extends State<SalahTimerView> {
  late Timer _timer;
  Duration _remainingTime = Duration.zero;

  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  @override
  void didUpdateWidget(covariant SalahTimerView oldWidget) {
    super.didUpdateWidget(oldWidget);

    // If targetTime changed, reset the timer
    if (oldWidget.targetTime != widget.targetTime) {
      _timer.cancel();
      _initTimer();
    }
  }

  void _initTimer() {
    _updateRemainingTime();
    _startTimer();
  }

  void _updateRemainingTime() {
    final now = DateTime.now();
    final nowInUTCFormat = now.toUtc().add(now.timeZoneOffset);
    setState(() {
      _remainingTime = widget.targetTime.difference(nowInUTCFormat);
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      final nowInUTCFormat = now.toUtc().add(now.timeZoneOffset);

      setState(() {
        _remainingTime = widget.targetTime.difference(nowInUTCFormat);

        if (_remainingTime.isNegative) {
          _timer.cancel();
          widget.onTimerFinished();
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
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );
    }

    final hours = _remainingTime.inHours;
    final minutes = _remainingTime.inMinutes % 60;
    final seconds = _remainingTime.inSeconds % 60;

    return CustomText(
      title:
          "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}",
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
}
