import 'package:advertisments_manager/src/core/adds_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class RewarderAds {
  static RewardedAd? mainRewardedAd;

  static Future<void> createRewardedAd() async {
    if (mainRewardedAd == null) {
      await RewardedAd.load(
        adUnitId: AdHelper.rewardedAdUnitId,
        request: const AdRequest(),
        rewardedAdLoadCallback:
            RewardedAdLoadCallback(onAdLoaded: (RewardedAd rewardedAd) {
          mainRewardedAd = rewardedAd;
        }, onAdFailedToLoad: (LoadAdError error) {
          mainRewardedAd = null;
        }),
      );
    }
  }

  // Show the rewarded ad
  static Future<void> showRewardedAd() async {
    if (mainRewardedAd == null) {
      debugPrint('Warning: attempt to show rewarded before loaded.');
      return;
    }
    mainRewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (_) {
        debugPrint('Ad showed full screen content.');
      },
      onAdDismissedFullScreenContent: (RewardedAd ad) {
        debugPrint('$ad dismissed.');
        _handleAdDismissal(ad);
      },
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        debugPrint('$ad failed to show: $error');
        _handleAdDismissal(ad);
      },
    );
    await mainRewardedAd!.setImmersiveMode(true);
    await mainRewardedAd!.show(onUserEarnedReward: (_, reward) {
      _logAdReward(reward);
    });

    mainRewardedAd = null;
  }

  // Handle the ad dismissal and load a new one
  static void _handleAdDismissal(RewardedAd ad) {
    ad.dispose();
    createRewardedAd();
  }

  // Log the earned reward
  static void _logAdReward(RewardItem reward) {
    debugPrint('Reward: $reward');
  }
}
