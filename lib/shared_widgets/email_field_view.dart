import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_textfield.dart';

class EmailFieldView extends StatelessWidget {
  final TextEditingController controller;
  final bool isEnabled;
  final Function(String) onChange;
  final Function() onEditingComplete;
  const EmailFieldView({
    super.key,
    required this.controller,
    required this.onEditingComplete,
    required this.onChange,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: CustomTextField(
        controller: controller,
        readOnly: !isEnabled,
        enabled: isEnabled,
        hintText: IslamMobLocalizations.of(context).emailaddress,
        keyboardType: TextInputType.emailAddress,
        inputFormatters: [LengthLimitingTextInputFormatter(45)],
        suffixWidget: !isEnabled
            ? const SizedBox()
            : IconButton(
                onPressed: controller.clear,
                icon: Icon(Icons.close, size: 20, color: Colors.grey[500]),
              ),
        onChange: onChange,
        onEditingComplete: onEditingComplete,
      ),
    );
  }
}
