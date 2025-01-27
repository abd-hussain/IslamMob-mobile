import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color titleColor;
  final bool isEnabled;
  final Color color;
  final VoidCallback onTap;
  final double? width;
  final EdgeInsetsGeometry padding;

  const CustomButton({
    super.key,
    this.title = "Submit",
    this.titleColor = Colors.white,
    required this.isEnabled,
    this.width,
    this.color = const Color(0xff008480),
    required this.onTap,
    this.padding = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnabled ? color : const Color(0xffB1B1B1),
          padding: EdgeInsets.zero,
        ),
        onPressed: isEnabled ? onTap : null,
        child: SizedBox(
          height: 45,
          width: width,
          child: Center(
            child: Text(
              title == "Submit" ? IslamMobLocalizations.of(context).submit : title,
              style: TextStyle(
                color: titleColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
