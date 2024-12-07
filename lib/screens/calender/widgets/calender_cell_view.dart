import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class CalenderCellView extends StatelessWidget {
  final String title;
  final Color color;
  const CalenderCellView({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: CustomText(
            title: title,
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: const Color(0xff444444),
          ),
        ),
      ),
    );
  }
}
