import 'dart:io';

/// A helper class for managing Google AdMob advertisement unit IDs.
///
/// This class provides platform-specific ad unit IDs for different types of
/// advertisements including banner, interstitial, rewarded, and rewarded
/// interstitial ads. It automatically selects the appropriate ad unit ID
/// based on the current platform (Android or iOS).
class AdHelper {
  static final Map<String, Map<String, String>> _adUnitIds = {
    'banner': {
      'android': 'ca-app-pub-0120000896649737/6513244593',
      'ios': 'ca-app-pub-0120000896649737/7910086744',
    },
    'interstitial': {
      'android': 'ca-app-pub-0120000896649737/2880350830',
      'ios': 'ca-app-pub-0120000896649737/7718515053',
    },
    'rewarded': {
      'android': 'ca-app-pub-0120000896649737/3368206503',
      'ios': 'ca-app-pub-0120000896649737/1863553148',
    },
    'rewardedInterstitial': {
      'android': 'ca-app-pub-0120000896649737/1567269169',
      'ios': 'ca-app-pub-0120000896649737/2190856206',
    },
  };

  static String _getAdUnitId(String adType) {
    if (Platform.isAndroid) {
      return _adUnitIds[adType]?['android'] ??
          (throw UnsupportedError('Unsupported platform or ad type'));
    } else if (Platform.isIOS) {
      return _adUnitIds[adType]?['ios'] ??
          (throw UnsupportedError('Unsupported platform or ad type'));
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  /// Gets the banner ad unit ID for the current platform.
  static String get bannerAdUnitId => _getAdUnitId('banner');

  /// Gets the interstitial ad unit ID for the current platform.
  static String get interstitialAdUnitId => _getAdUnitId('interstitial');

  /// Gets the rewarded ad unit ID for the current platform.
  static String get rewardedAdUnitId => _getAdUnitId('rewarded');

  /// Gets the rewarded interstitial ad unit ID for the current platform.
  static String get rewardedInterstitialAdUnitId =>
      _getAdUnitId('rewardedInterstitial');
}
