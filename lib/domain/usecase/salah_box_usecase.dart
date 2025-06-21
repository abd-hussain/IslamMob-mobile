import 'package:flutter/material.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

/// Use case for managing Salah (prayer) display components and UI elements.
///
/// This class provides utility functions for displaying Islamic prayer information
/// in the user interface, including:
/// - **Localized prayer names** in the user's preferred language
/// - **Prayer-specific imagery** for visual prayer identification
/// - **Day navigation titles** for weekly prayer schedule views
/// - **Consistent UI representation** across different prayer displays
///
/// The use case supports the visual presentation of Islamic prayers with:
/// - Proper Arabic transliterations and local language names
/// - Time-appropriate imagery for each prayer period
/// - Multi-day navigation for prayer schedule planning
/// - Culturally appropriate visual elements for Islamic prayer times
///
/// This ensures a consistent and culturally sensitive presentation of
/// Islamic prayer information throughout the app's user interface.
class SalahBoxUseCase {
  /// Returns the localized name of the Salah based on its type.
  static String getSalahName(BuildContext context, SalahTimeState salahType) {
    final localization = IslamMobLocalizations.of(context);

    switch (salahType) {
      case SalahTimeStateFajir():
        return localization.fajr;
      case SalahTimeStateSunrise():
        return localization.sherooq;
      case SalahTimeStateZhur():
        return localization.zhur;
      case SalahTimeStateAsr():
        return localization.asr;
      case SalahTimeStateMaghrib():
        return localization.maghrib;
      case SalahTimeStateIsha():
        return localization.isha;
      case SalahTimeStateNone():
        return "";
    }
  }

  /// Returns the image path for the Salah type.
  static String getSalahImage(SalahTimeState salahType) {
    switch (salahType) {
      case SalahTimeStateFajir():
        return "assets/images/days/fajr.png";
      case SalahTimeStateSunrise():
        return "assets/images/days/sunrise.png";
      case SalahTimeStateZhur():
        return "assets/images/days/zhur.png";
      case SalahTimeStateAsr():
        return "assets/images/days/asr.png";
      case SalahTimeStateMaghrib():
        return "assets/images/days/maghrib.png";
      case SalahTimeStateIsha():
        return "assets/images/days/isha.png";
      case SalahTimeStateNone():
        return "";
    }
  }

  /// Returns the localized title for a specific day in the weekly prayer schedule.
  ///
  /// This method provides day navigation titles for the weekly prayer view,
  /// supporting a 7-day range centered around today. The titles help users
  /// navigate through different days when viewing prayer schedules.
  ///
  /// The day indices correspond to:
  /// - 0: Three days before today
  /// - 1: Two days before today
  /// - 2: Yesterday
  /// - 3: Today (current day)
  /// - 4: Tomorrow
  /// - 5: Day after tomorrow
  /// - 6: Three days after today
  ///
  /// Parameters:
  /// - [context]: Build context for accessing localization
  /// - [index]: Day index (0-6) representing the relative day position
  ///
  /// Returns the localized day title string, or empty string for invalid indices.
  ///
  /// Example:
  /// ```dart
  /// final todayTitle = SalahBoxUseCase.getTitleOfTheDay(context, 3);
  /// // Returns localized "Today" string
  /// ```
  static String getTitleOfTheDay(BuildContext context, int index) {
    final localization = IslamMobLocalizations.of(context);

    final titles = {
      0: localization.threedaybefore,
      1: localization.twodaybefore,
      2: localization.yesterday,
      3: localization.today,
      4: localization.tomorrow,
      5: localization.aftertwoday,
      6: localization.afterthreeday,
    };

    return titles[index] ?? '';
  }
}
