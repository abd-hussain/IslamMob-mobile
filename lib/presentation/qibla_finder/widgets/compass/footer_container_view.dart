import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class FooterContainerView extends StatelessWidget {
  final String title;
  final String value;
  const FooterContainerView(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Color(0xff444444),
                  size: 12,
                ),
                CustomText(
                  title: value,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff444444),
                ),
              ],
            ),
            CustomText(
              title: title,
              fontSize: 8,
              color: const Color(0xff444444),
            ),
          ],
        ),
      ),
    );
  }
}
