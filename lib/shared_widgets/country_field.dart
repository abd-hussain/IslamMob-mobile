import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_app/domain/model/choose_location.dart';
import 'package:islam_app/domain/usecase/countries_location_manually_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/country_bottomsheet.dart';
import 'package:islam_app/shared_widgets/custom_textfield.dart';

class CountryField extends StatelessWidget {
  const CountryField({
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
          hintText: IslamMobLocalizations.of(context).country,
          keyboardType: TextInputType.text,
          inputFormatters: [LengthLimitingTextInputFormatter(45)],
          onEditingComplete: () => onChange(controller.text),
        ),
        InkWell(
          onTap: () async {
            await CountrySheetsUtil().show(context, countryList(context), (
              selectedCountry,
            ) {
              controller.text = selectedCountry.countryName;
              onChange(selectedCountry.countryName);
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

  List<ChooseLocation> countryList(BuildContext context) {
    return CountriesLocationManuallyUseCase.getCountriesCitiesLocationManually(
      context,
    );
  }
}
