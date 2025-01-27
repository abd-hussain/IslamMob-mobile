import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class SectionView extends StatelessWidget {
  final String title;
  final List<String> descriptions;
  const SectionView({super.key, required this.title, required this.descriptions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: title,
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 4),
        ...descriptions.map(
          (desc) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: CustomText(
              title: desc,
              fontSize: 16,
              color: const Color(0xff444444),
              maxLines: 5,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
