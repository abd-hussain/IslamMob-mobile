import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GenderInBoardingView extends StatelessWidget {
  final Function() onSelect;

  const GenderInBoardingView({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Lottie.asset(
            'assets/lottie/Animation - 1731435759765.json',
            width: 100,
          ),
        ),
        Container(
          child: Text("LanguageInBoardingView"),
        ),
      ],
    );
  }
}
