import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class CalenderCellView extends StatelessWidget {
  final String title;
  final String? title2;

  final Color color;
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
