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
  final Function({required String countryName, required String countryFlag})
  onChange;

  @override
  Widget build(BuildContext context) {
    String countryFlag = "";
    return Stack(
      children: [
        CustomTextField(
          controller: controller,
          readOnly: true,
          hintText: IslamMobLocalizations.of(context).country,
          keyboardType: TextInputType.text,
          inputFormatters: [LengthLimitingTextInputFormatter(45)],
          onChange: (text) {},
          onEditingComplete: () =>
              onChange(countryName: controller.text, countryFlag: countryFlag),
        ),
        InkWell(
          onTap: () async {
            await CountrySheetsUtil().show(context, countryList(context), (
              selectedCountry,
            ) {
              controller.text = selectedCountry.countryName;
              countryFlag = selectedCountry.flag;
              onChange(
                countryName: selectedCountry.countryName,
                countryFlag: selectedCountry.flag,
              );
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
