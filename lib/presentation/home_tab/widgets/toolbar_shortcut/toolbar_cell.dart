import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class ToolbarCell extends StatelessWidget {
  final String title;
  final String imagePath;
  final Function() onTap;
  const ToolbarCell(
      {super.key,
      required this.imagePath,
      required this.onTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: _containerDecoration(),
            child: Image.asset(
              imagePath,
              height: 50,
              width: 50,
            ),
          ),
          const SizedBox(height: 5),
          CustomText(
            title: title,
            fontSize: 10,
            fontWeight: FontWeight.w600,
            maxLines: 3,
          ),
        ],
      ),
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: const Color.fromARGB(255, 226, 255, 242),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
