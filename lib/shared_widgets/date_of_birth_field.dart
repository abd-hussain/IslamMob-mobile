import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_textfield.dart';

class DateOfBirthField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChange;
  const DateOfBirthField({
    super.key,
    required this.controller,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomTextField(
          controller: controller,
          readOnly: true,
          hintText: IslamMobLocalizations.of(context).dateOfBirth,
          keyboardType: TextInputType.text,
          inputFormatters: [LengthLimitingTextInputFormatter(45)],
          onEditingComplete: () => onChange(controller.text),
        ),
        InkWell(
          onTap: () async {
            await _showDatePicker(context: context, controller: controller);
            onChange(controller.text);
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

  Future<void> _showDatePicker({
    required BuildContext context,
    required TextEditingController controller,
  }) async {
    final DateTime? datePicked = await showDatePicker(
      context: context,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDate: controller.text.isNotEmpty
          ? _parseDate(controller.text) ?? DateTime(2010)
          : DateTime(2010),
      firstDate: DateTime(1940),
      lastDate: DateTime(DateTime.now().year - 10),
      locale: _getLocale(),
      confirmText: IslamMobLocalizations.of(context).choose,
      cancelText: IslamMobLocalizations.of(context).cancel,
    );
    if (datePicked != null) {
      _format(controller: controller, datePicked: datePicked);
    }
  }

  Locale _getLocale() {
    final selectedLanguage =
        DataBaseManagerBase.getFromDatabase(
              key: DatabaseFieldConstant.userLanguageCode,
              defaultValue: "",
            )
            as String;
    return selectedLanguage != ""
        ? Locale(selectedLanguage)
        : const Locale("en");
  }

  void _format({
    required TextEditingController controller,
    required DateTime datePicked,
  }) {
    controller.text = DateFormat('dd/MM/yyyy').format(datePicked);
  }

  DateTime? _parseDate(String date) {
    return DateFormat('dd/MM/yyyy').parse(date);
  }
}
