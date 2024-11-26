import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class DayBox extends StatelessWidget {
  final int index;
  final String currentLanguageCode;
  final String dateMilady;
  final String dateHijry;
  final String dayName;
  final String titileOfTheDay;

  const DayBox({
    super.key,
    required this.index,
    required this.currentLanguageCode,
    required this.dateMilady,
    required this.dateHijry,
    required this.dayName,
    required this.titileOfTheDay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              currentLanguageCode == "ar"
                  ? Ionicons.arrow_forward_outline
                  : Ionicons.arrow_back_outline,
              color: const Color(0xff007F37),
            ),
            Expanded(
              child: CustomText(
                title: dateMilady,
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: const Color(0xff444444),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: const Color(0xff444444),
              width: 2,
              height: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  CustomText(
                    title: titileOfTheDay,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff444444),
                    textAlign: TextAlign.center,
                  ),
                  CustomText(
                    title: dayName,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff444444),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xff444444),
              width: 2,
              height: 15,
            ),
            Expanded(
              child: CustomText(
                title: dateHijry,
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: const Color(0xff444444),
                textAlign: TextAlign.center,
              ),
            ),
            Icon(
              currentLanguageCode == "ar"
                  ? Ionicons.arrow_back_outline
                  : Ionicons.arrow_forward_outline,
              color: const Color(0xff007F37),
            ),
          ],
        ),
      ),
    );
  }
}
