import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

enum AdsBannerSize {
  banner,
  fullBanner,
  largeBanner,
  leaderboard,
  mediumRectangle,
}

class AddMobBanner extends StatefulWidget {
  final AdsBannerSize size;
  const AddMobBanner({
    super.key,
    this.size = AdsBannerSize.banner,
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
            padding: const EdgeInsets.symmetric(vertical: 8),
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
