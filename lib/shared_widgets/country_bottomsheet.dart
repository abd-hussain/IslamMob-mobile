import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/choose_location.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class CountrySheetsUtil {
  Future<void> show(
    BuildContext context,
    List<ChooseLocation> listOfCountry,
    Function(ChooseLocation) selectedCountry,
  ) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(
                title: IslamMobLocalizations.of(context).country,
                color: Colors.black,
                fontSize: 20,
              ),
              const SizedBox(height: 27),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: listOfCountry.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                        selectedCountry(listOfCountry[index]);
                      },
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            CustomText(
                              title: listOfCountry[index].flag,
                              fontSize: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: CustomText(
                                title: listOfCountry[index].countryName,
                                fontSize: 18,
                                color: const Color(0xff444444),
                              ),
                            ),
                            const Icon(Icons.arrow_forward_ios, size: 15),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
