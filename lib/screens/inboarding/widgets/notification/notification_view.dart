import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NotificationInBoardingView extends StatelessWidget {
  final Function() onSelect;

  const NotificationInBoardingView({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Lottie.asset(
            'assets/lottie/Animation - 1731435567950.json',
            width: 100,
          ),
        ),
        Container(
          child: Text("LocationInBoardingView"),
        ),
      ],
    );
  }
}
