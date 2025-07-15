import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_app/domain/model/gender_model.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_textfield.dart';
import 'package:islam_app/shared_widgets/gender_bottomsheet.dart';

class GenderField extends StatelessWidget {
  const GenderField({
    required this.controller,
    super.key,
    required this.onChange,
  });
  final TextEditingController controller;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomTextField(
          controller: controller,
          readOnly: true,
          hintText: IslamMobLocalizations.of(context).gender,
          keyboardType: TextInputType.text,
          inputFormatters: [LengthLimitingTextInputFormatter(45)],
          onChange: (text) {},
          onEditingComplete: () => onChange(controller.text),
        ),
        InkWell(
          onTap: () async {
            await GenderSheetsUtil().show(context, genderList(context), (
              selectedGender,
            ) {
              controller.text = selectedGender.name;
              onChange(selectedGender.name);
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 55,
            ),
          ),
        ),
      ],
    );
  }

  List<Gender> genderList(BuildContext context) {
    return [
      Gender(
        name: IslamMobLocalizations.of(context).gendermale,
        icon: const Icon(Icons.male, color: Color(0xff444444)),
      ),
      Gender(
        name: IslamMobLocalizations.of(context).genderfemale,
        icon: const Icon(Icons.female, color: Color(0xff444444)),
      ),
    ];
  }
}
