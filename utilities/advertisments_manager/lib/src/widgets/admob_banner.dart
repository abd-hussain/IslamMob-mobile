import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

/// Enum representing different banner ad sizes available for AdMob.
enum AdsBannerSize {
  /// Standard banner size (320x50).
  banner,

  /// Full banner size (468x60).
  fullBanner,

  /// Large banner size (320x100).
  largeBanner,

  /// Leaderboard banner size (728x90).
  leaderboard,

  /// Medium rectangle banner size (300x250).
  mediumRectangle,
}

/// A widget that displays an AdMob banner advertisement.
///
/// This widget automatically loads and displays a banner ad using Google AdMob.
/// It supports different banner sizes and includes vertical padding customization.
/// The banner is only displayed when the ad is successfully loaded.
class AddMobBanner extends StatefulWidget {
  /// The size of the banner ad to display.
  final AdsBannerSize size;

  /// The vertical padding around the banner ad.
  final double verticalPadding;

  /// Creates an [AddMobBanner] with the specified [size] and [verticalPadding].
  const AddMobBanner({
    super.key,
    this.size = AdsBannerSize.banner,
    this.verticalPadding = 8,
  });

  @override
  State<AddMobBanner> createState() => _AddMobBannerState();
}

class _AddMobBannerState extends State<AddMobBanner> {
  late final BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeBannerAd();
  }

  void _initializeBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: _bannerSize(widget.size),
      listener: BannerAdListener(
        onAdLoaded: (_) => _onAdLoaded(),
        onAdFailedToLoad: _onAdFailedToLoad,
      ),
    )..load();
  }

  AdSize _bannerSize(AdsBannerSize size) {
    switch (size) {
      case AdsBannerSize.banner:
        return AdSize.banner;
      case AdsBannerSize.fullBanner:
        return AdSize.fullBanner;
      case AdsBannerSize.largeBanner:
        return AdSize.largeBanner;
      case AdsBannerSize.leaderboard:
        return AdSize.leaderboard;
      case AdsBannerSize.mediumRectangle:
        return AdSize.mediumRectangle;
    }
  }

  void _onAdLoaded() {
    setState(() {
      _isBannerAdReady = true;
    });
  }

  void _onAdFailedToLoad(Ad ad, LoadAdError error) {
    debugPrint('Failed to load banner ad: ${error.message}');
    _isBannerAdReady = false;
    ad.dispose();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isBannerAdReady
        ? Padding(
            padding: EdgeInsets.symmetric(vertical: widget.verticalPadding),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: _bannerAd.size.width.toDouble(),
                height: _bannerAd.size.height.toDouble(),
                child: AdWidget(ad: _bannerAd),
              ),
            ),
          )
        : const SizedBox();
  }
}
