import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class CheckBoxTile extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function() onChanged;
  const CheckBoxTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
      child: InkWell(
        onTap: onChanged,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              children: [
                Expanded(
                  child: CustomText(
                    title: title,
                    fontSize: 14,
                    color: const Color(0xff444444),
                    maxLines: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  isSelected
                      ? Icons.check_box_outlined
                      : Icons.check_box_outline_blank_rounded,
                  size: 25,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
