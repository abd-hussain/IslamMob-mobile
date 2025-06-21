import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget displaying the header row for the Islamic calendar grid.
///
/// This widget provides column headers for the Islamic calendar interface,
/// clearly labeling each column to help users understand the calendar layout.
/// The header includes:
/// - **Day column** for day names (Monday, Tuesday, etc.)
/// - **Date column** for Hijri and Gregorian date display
/// - **Prayer time columns** for all five daily prayers (Fajr, Dhuhr, Asr, Maghrib, Isha)
///
/// The header uses localized text to support multiple languages and provides
/// a consistent visual foundation for the calendar grid, making it easy for
/// Muslims to understand the prayer time schedule layout and navigate the
/// Islamic calendar information effectively.
class CalenderHeaderView extends StatelessWidget {
  /// Creates a [CalenderHeaderView] widget.
  ///
  /// This widget displays the column headers for the Islamic calendar
  /// grid with localized prayer time labels and date information.
  const CalenderHeaderView({super.key});

  /// Builds the calendar header with column labels for Islamic calendar display.
  ///
  /// This method constructs a header row featuring:
  /// - Localized column labels for day, date, and prayer times
  /// - Consistent spacing and typography across all columns
  /// - Visual styling that matches the calendar grid design
  /// - Support for multiple languages through localization
  ///
  /// The header provides clear organization for the Islamic calendar
  /// interface, helping users understand the prayer time schedule layout.
  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        height: 25,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Colors.grey[400],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CustomText(
                title: localize.day,
                fontSize: 12,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: CustomText(
                title: localize.date,
                fontSize: 12,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: CustomText(
                title: localize.fajr,
                fontSize: 12,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: CustomText(
                title: localize.zhur,
                fontSize: 12,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: CustomText(
                title: localize.asr,
                fontSize: 12,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: CustomText(
                title: localize.maghrib,
                fontSize: 12,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: CustomText(
                title: localize.isha,
                fontSize: 12,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
