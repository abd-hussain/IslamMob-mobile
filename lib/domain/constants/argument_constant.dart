/// A class containing argument key constants for navigation and data passing.
///
/// This class provides centralized access to string keys used for passing
/// arguments between screens and components in the Islam Mob app. These
/// constants ensure type safety and consistency when passing data through:
/// - Navigation routes and screen arguments
/// - Widget parameters and configurations
/// - State management and data transfer
/// - Inter-screen communication
///
/// All constants represent keys for various Islamic app features including
/// Quran navigation, prayer times, supplications, and pilgrimage guidance.
class ArgumentConstant {
  /// Key for passing the current page number in Quran navigation.
  ///
  /// Used when navigating between Quran pages or returning to a specific
  /// page number. The value should be an integer representing the page
  /// number in the currently selected Quran print/Mushaf.
  static const String currentPageNumber = 'currentPageNumber';

  /// Key for passing the current Surah (chapter) name in Quran navigation.
  ///
  /// Used when navigating to or from Quran index screens to maintain
  /// context of which Surah the user is currently reading. The value
  /// should be a localized string representing the Surah name.
  static const String currentSowrahName = 'currentSowrahName';

  /// Key for passing the current Juz (part) name in Quran navigation.
  ///
  /// Used when navigating to or from Quran index screens to maintain
  /// context of which Juz (Para) the user is currently reading. The value
  /// should be a localized string representing the Juz name.
  static const String currentPartName = 'currentPartName';

  /// Key for passing the current Juz (part) number in Quran navigation.
  ///
  /// Used when navigating between different Juz sections of the Quran.
  /// The value should be a string or integer representing the Juz number
  /// (1-30 for the standard 30 Juz division of the Quran).
  static const String currentPartNumber = 'currentPartNumber';

  /// Key for passing Hisn Al Muslim (Fortress of the Muslim) item data.
  ///
  /// Used when navigating to supplication detail screens or passing
  /// specific Hisn Al Muslim items between components. The value should
  /// be a HisnAlMuslimModel object containing the supplication data.
  static const String hisnAlMuslimItem = 'hisnAlMuslimItem';

  /// Key for specifying the initial tab index in tabbed interfaces.
  ///
  /// Used when navigating to screens with tab views (like Quran index
  /// with Surah/Juz/Bookmark tabs) to specify which tab should be
  /// initially selected. The value should be an integer (0-based index).
  static const String initialTabIndexSelected = 'initialTabIndexSelected';

  /// Key for passing prayer time information in Azkar and prayer contexts.
  ///
  /// Used when navigating to Azkar after prayer screens or other
  /// prayer-related functionality. The value should be an AzkarSalahTimeState
  /// or similar enum representing the specific prayer time.
  static const String salahTime = 'salahTime';

  /// Key for specifying Hajj or Omrah type in pilgrimage guidance screens.
  ///
  /// Used when navigating to Hajj/Omrah guidance screens to determine
  /// which type of pilgrimage guidance to display. The value should
  /// indicate whether the content is for Hajj or Omrah rituals.
  static const String hajjOmrahType = 'hajjOmrahType';

  /// Key for passing notification setting type in prayer notification configuration.
  ///
  /// Used when navigating to notification sound selection or other
  /// notification configuration screens. The value should be a
  /// NotificationTypeState representing the specific prayer or reminder type.
  static const String notificationSettingType = 'notificationSettingType';
}
