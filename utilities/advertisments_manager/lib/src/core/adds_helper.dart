import 'dart:io';

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

  static String get bannerAdUnitId => _getAdUnitId('banner');
  static String get interstitialAdUnitId => _getAdUnitId('interstitial');
  static String get rewardedAdUnitId => _getAdUnitId('rewarded');
  static String get rewardedInterstitialAdUnitId =>
      _getAdUnitId('rewardedInterstitial');
}
