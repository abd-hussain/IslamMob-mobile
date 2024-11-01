import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.buttonTitle = "Submit",
    this.buttonTitleColor = Colors.white,
    required this.enableButton,
    this.width,
    this.buttonColor = const Color(0xff007F37),
    required this.onTap,
    super.key,
    this.padding = const EdgeInsets.all(16),
  });
  final String buttonTitle;
  final Color buttonTitleColor;

  final bool enableButton;
  final Color buttonColor;
  final Function() onTap;
  final double? width;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
                enableButton ? buttonColor : const Color(0xffB1B1B1))),
        onPressed: () => enableButton ? onTap() : null,
        child: SizedBox(
          height: 45,
          width: width,
          child: Center(
            child: Text(
              buttonTitle == "Submit"
                  ? AppLocalizations.of(context)!.submit
                  : buttonTitle,
              style: TextStyle(
                color: buttonTitleColor,
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
