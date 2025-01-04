import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AddMobBanner extends StatefulWidget {
  const AddMobBanner({super.key});

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
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) => _onAdLoaded(),
        onAdFailedToLoad: (ad, error) => _onAdFailedToLoad(ad, error),
      ),
    )..load();
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
