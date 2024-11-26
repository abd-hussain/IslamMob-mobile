import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class ZekerView extends StatelessWidget {
  final int maxCount;
  final int currentCount;
  final String title;
  final String text;
  final Function() onTap;
  const ZekerView(
      {super.key,
      required this.maxCount,
      required this.text,
      this.title = "",
      required this.currentCount,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              CustomText(
                title: title,
                fontSize: 16,
                color: const Color(0xff444444),
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                title: text,
                fontSize: 20,
                color: const Color(0xff444444),
                maxLines: 10,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 10),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    title: currentCount.toString(),
                    fontSize: 18,
                    color: const Color(0xff444444),
                    fontWeight: FontWeight.bold,
                  ),
                  const CustomText(
                    title: "/",
                    fontSize: 12,
                    color: Color(0xff444444),
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    title: maxCount.toString(),
                    fontSize: 12,
                    color: const Color(0xff444444),
                    fontWeight: FontWeight.bold,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
