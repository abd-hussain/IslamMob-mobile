import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-0120000896649737/6513244593';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-0120000896649737/7910086744';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-0120000896649737/2880350830";
    } else if (Platform.isIOS) {
      return "ca-app-pub-0120000896649737/7718515053";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-0120000896649737/3368206503";
    } else if (Platform.isIOS) {
      return "ca-app-pub-0120000896649737/1863553148";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get rewardedInterstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-0120000896649737/1567269169";
    } else if (Platform.isIOS) {
      return "ca-app-pub-0120000896649737/2190856206";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
