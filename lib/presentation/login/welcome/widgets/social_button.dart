import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class SocialButton extends StatelessWidget {
  final String buttonLabel;
  final String iconName;
  final Color labelColor;
  final VoidCallback buttonCallBack;
  final Color? buttonColor;
  final bool isTextCenterd;
  final Color? borderColor;
  const SocialButton({
    super.key,
    required this.buttonLabel,
    required this.buttonCallBack,
    this.buttonColor = Colors.white,
    this.labelColor = Colors.white,
    required this.iconName,
    this.isTextCenterd = false,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: buttonCallBack,
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              side: borderColor != null
                  ? BorderSide(color: borderColor!)
                  : BorderSide.none,
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(buttonColor),
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(iconName, height: 20, width: 20),
              const SizedBox(width: 12),
              CustomText(
                title: buttonLabel,
                color: labelColor,
                textAlign: isTextCenterd ? TextAlign.center : TextAlign.start,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
