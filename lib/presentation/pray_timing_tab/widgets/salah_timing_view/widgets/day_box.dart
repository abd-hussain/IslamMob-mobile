import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/domain/usecase/salah_box_usecase.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:preferences/preferences.dart';

class DayBox extends StatelessWidget {
  final int index;
  final Function() onArrowNextPressed;
  final Function() onArrowPreviousPressed;

  DayBox({
    super.key,
    required this.index,
    required this.onArrowNextPressed,
    required this.onArrowPreviousPressed,
  });

  /// Timing use case instance for date calculations and formatting.
  final TimingUseCase timingUsecase = locator<TimingUseCase>();

  @override
  Widget build(BuildContext context) {
    final languageCode = _currentLanguageCode();
    final dayOffset = index - 3;

    return Container(
      decoration: const BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: Color(0xff292929),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildArrowIcon(
              isForward: languageCode == "ar",
              onPressed: onArrowNextPressed,
            ),
            _buildMeladyDate(dayOffset),
            _buildDivider(),
            _buildDayDetails(context, dayOffset),
            _buildDivider(),
            _buildHijriDate(dayOffset),
            _buildArrowIcon(
              isForward: languageCode != "ar",
              onPressed: onArrowPreviousPressed,
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the arrow icon based on language direction.
  Widget _buildArrowIcon({
    required bool isForward,
    required Function() onPressed,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        isForward
            ? Ionicons.arrow_forward_outline
            : Ionicons.arrow_back_outline,
        color: const Color(0xff008480),
        size: 20,
      ),
    );
  }

  /// Builds the Gregorian (Melady) date display.
  Widget _buildMeladyDate(int dayOffset) {
    final meladyDate = timingUsecase.formatDate(
      timingUsecase.getDateWithDayOffset(dayOffset: dayOffset),
    );
    return Expanded(
      child: CustomText(
        title: meladyDate,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        textAlign: TextAlign.center,
      ),
    );
  }

  /// Builds the Hijri date display.
  Widget _buildHijriDate(int dayOffset) {
    final hijriDate = timingUsecase.formatHijriDate(
      timingUsecase.getHijriDateWithDayOffset(dayOffset: dayOffset),
    );
    return Expanded(
      child: CustomText(
        title: hijriDate,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        textAlign: TextAlign.center,
      ),
    );
  }

  /// Builds the divider between sections.
  Widget _buildDivider() {
    return Container(color: Colors.white, width: 2, height: 15);
  }

  /// Builds the day title and name display.
  Widget _buildDayDetails(BuildContext context, int dayOffset) {
    final title = SalahBoxUseCase.getTitleOfTheDay(context, index);
    final dayName = timingUsecase.getDayName(
      context: context,
      date: timingUsecase.getDateWithDayOffset(dayOffset: dayOffset),
    );

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            title: title,
            fontSize: 8,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          CustomText(
            title: dayName,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// Retrieves the current language code from the Hive box.
  String _currentLanguageCode() {
    return locator<IslamPreferences>().getValue(
      key: DatabaseFieldConstant.userLanguageCode,
      defaultValue: "en",
    );
  }
}
