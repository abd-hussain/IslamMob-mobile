import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/utils/day_time.dart';

class DayBox extends StatelessWidget {
  final String currentLanguageCode;

  const DayBox({super.key, required this.currentLanguageCode});

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
                title: locator<DayTime>().getCurrentTimeMelady(),
                fontSize: 12,
                fontWeight: FontWeight.bold,
                textColor: const Color(0xff444444),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: const Color(0xff444444),
              width: 2,
              height: 15,
            ),
            Expanded(
              child: CustomText(
                title: locator<DayTime>().getDayName(context),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                textColor: const Color(0xff444444),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: const Color(0xff444444),
              width: 2,
              height: 15,
            ),
            Expanded(
              child: CustomText(
                title: locator<DayTime>().getCurrentTimeHejri(),
                fontSize: 12,
                fontWeight: FontWeight.bold,
                textColor: const Color(0xff444444),
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
