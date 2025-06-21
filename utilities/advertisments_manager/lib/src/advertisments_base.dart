import 'package:google_mobile_ads/google_mobile_ads.dart';

/// Base class for managing Google Mobile Ads functionality.
///
/// This class provides static methods for initializing and configuring
/// Google Mobile Ads in the application.
class AdvertismentsBase {
  /// Initializes Google Mobile Ads
  static Future<void> initializeMobileAds() async {
    await MobileAds.instance.initialize();
    await MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: ['33BE2250B43518CCDA7DE426D04EE231']),
    );
  }
}
