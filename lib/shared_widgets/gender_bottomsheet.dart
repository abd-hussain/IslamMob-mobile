import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/gender_model.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class GenderSheetsUtil {
  Future<void> show(
    BuildContext context,
    List<Gender> listOfGender,
    Function(Gender) selectedGender,
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
                title: IslamMobLocalizations.of(context).gender,
                color: Colors.black,
                fontSize: 20,
              ),
              const SizedBox(height: 27),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: listOfGender.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                        selectedGender(listOfGender[index]);
                      },
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: listOfGender[index].icon,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: CustomText(
                                title: listOfGender[index].name,
                                fontSize: 16,
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
