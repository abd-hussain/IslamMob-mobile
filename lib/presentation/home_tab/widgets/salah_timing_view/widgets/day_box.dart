import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/core/constants/database_constant.dart';

class DayBox extends StatelessWidget {
  final int index;

  DayBox({super.key, required this.index});

  final TimingUseCase timingUsecase = locator<TimingUseCase>();

  @override
  Widget build(BuildContext context) {
    final languageCode = _currentLanguageCode();
    final dayOffset = index - 3;

    return Container(
      color: Colors.white,
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildArrowIcon(isForward: languageCode == "ar"),
            _buildMeladyDate(dayOffset),
            _buildDivider(),
            _buildDayDetails(context, dayOffset),
            _buildDivider(),
            _buildHijriDate(dayOffset),
            _buildArrowIcon(isForward: languageCode != "ar"),
          ],
        ),
      ),
    );
  }

  /// Builds the arrow icon based on language direction.
  Widget _buildArrowIcon({required bool isForward}) {
    return Icon(
      isForward ? Ionicons.arrow_forward_outline : Ionicons.arrow_back_outline,
      color: const Color(0xff007F37),
      size: 15,
    );
  }

  /// Builds the Gregorian (Melady) date display.
  Widget _buildMeladyDate(int dayOffset) {
    final meladyDate = timingUsecase
        .formatDate(timingUsecase.getDateWithDayOffset(dayOffset: dayOffset));
    return Expanded(
      child: CustomText(
        title: meladyDate,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: const Color(0xff444444),
        textAlign: TextAlign.center,
      ),
    );
  }

  /// Builds the Hijri date display.
  Widget _buildHijriDate(int dayOffset) {
    final hijriDate = timingUsecase.formatHijriDate(
        timingUsecase.getHijriDateWithDayOffset(dayOffset: dayOffset));
    return Expanded(
      child: CustomText(
        title: hijriDate,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: const Color(0xff444444),
        textAlign: TextAlign.center,
      ),
    );
  }

  /// Builds the divider between sections.
  Widget _buildDivider() {
    return Container(
      color: const Color(0xff444444),
      width: 2,
      height: 15,
    );
  }

  /// Builds the day title and name display.
  Widget _buildDayDetails(BuildContext context, int dayOffset) {
    final title = _getTitleOfTheDay(context, dayOffset);
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
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
          CustomText(
            title: dayName,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: const Color(0xff444444),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  /// Retrieves the title of the day based on its offset.
  String _getTitleOfTheDay(BuildContext context, int dayOffset) {
    final titles = {
      0: AppLocalizations.of(context)!.threedaybefore,
      1: AppLocalizations.of(context)!.twodaybefore,
      2: AppLocalizations.of(context)!.yesterday,
      3: AppLocalizations.of(context)!.today,
      4: AppLocalizations.of(context)!.tomorrow,
      5: AppLocalizations.of(context)!.aftertwoday,
      6: AppLocalizations.of(context)!.afterthreeday,
    };

    return titles[index] ?? '';
  }

  /// Retrieves the current language code from the Hive box.
  String _currentLanguageCode() {
    final box = Hive.box(DatabaseBoxConstant.userInfo);
    return box.get(DatabaseFieldConstant.userLanguageCode, defaultValue: "en")
        as String;
  }
}
