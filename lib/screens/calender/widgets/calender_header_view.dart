import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CalenderHeaderView extends StatelessWidget {
  const CalenderHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Colors.grey[400],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                title: localize.day,
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              CustomText(
                title: localize.date,
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              CustomText(
                title: localize.fajr,
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              CustomText(
                title: localize.sherooq,
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              CustomText(
                title: localize.zhur,
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              CustomText(
                title: localize.asr,
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              CustomText(
                title: localize.maghrib,
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              CustomText(
                title: localize.isha,
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
