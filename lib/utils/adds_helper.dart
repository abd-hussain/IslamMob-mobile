import 'dart:io';

class AdHelper {
  // static String get bannerAdUnitId {
  //   if (Platform.isAndroid) {
  //     return 'ca-app-pub-0120000896649737/3615712730';
  //   } else if (Platform.isIOS) {
  //     return 'ca-app-pub-0120000896649737/6129377192';
  //   } else {
  //     throw UnsupportedError('Unsupported platform');
  //   }
  // }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-0120000896649737/1384121126";
    } else if (Platform.isIOS) {
      return "ca-app-pub-0120000896649737/7949529473";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  // static String get _rewardedAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "";
  //   } else if (Platform.isIOS) {
  //     return "";
  //   } else {
  //     throw UnsupportedError("Unsupported platform");
  //   }
  // }
}
