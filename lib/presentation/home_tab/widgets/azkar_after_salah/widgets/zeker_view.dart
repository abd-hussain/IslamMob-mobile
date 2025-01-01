import 'package:azkar/azkar.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class ZekerView extends StatelessWidget {
  final bool isDisabled;
  final AzkarModel azkarModel;
  final Function() onTap;
  const ZekerView({
    super.key,
    required this.azkarModel,
    required this.isDisabled,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => isDisabled ? null : onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: isDisabled ? const Color(0xffE0E0E0) : Colors.white,
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
            mainAxisSize: MainAxisSize.min,
            children: [
              if (azkarModel.title.isNotEmpty)
                CustomText(
                  title: azkarModel.title,
                  fontSize: 16,
                  color: const Color(0xff444444),
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                ),
              CustomText(
                title: azkarModel.desc,
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
              footerView(isDisabled),
            ],
          ),
        ),
      ),
    );
  }

  Row footerView(bool isDisabled) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title: azkarModel.currentCount.toString(),
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
          title: azkarModel.maxCount.toString(),
          fontSize: 12,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(width: 8),
        isDisabled
            ? const SizedBox.shrink()
            : const Icon(Icons.ads_click, color: Color(0xff444444)),
      ],
    );
  }
}
