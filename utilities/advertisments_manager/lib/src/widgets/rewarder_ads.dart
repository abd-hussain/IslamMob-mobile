import 'package:advertisments_manager/src/core/adds_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

/// A utility class for managing rewarded advertisements.
///
/// This class provides static methods to create, load, and display
/// rewarded ads using Google Mobile Ads. It handles the complete
/// lifecycle of rewarded ads including loading, showing, and cleanup.
class RewarderAds {
  /// The main rewarded ad instance.
  ///
  /// This static variable holds the currently loaded rewarded ad.
  /// It's null when no ad is loaded or after an ad has been shown.
  static RewardedAd? mainRewardedAd;

  /// Creates and loads a new rewarded ad.
  ///
  /// This method loads a rewarded ad using the ad unit ID from [AdHelper].
  /// If an ad is already loaded ([mainRewardedAd] is not null), this method
  /// does nothing. The ad is loaded asynchronously and stored in [mainRewardedAd].
  ///
  /// Call this method to preload ads before they need to be shown.
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

  /// Shows the loaded rewarded ad to the user.
  ///
  /// This method displays the rewarded ad if one is loaded. If no ad is loaded,
  /// it prints a warning and returns early. The method sets up callbacks for
  /// ad events (show, dismiss, failure) and enables immersive mode.
  ///
  /// When the user earns a reward by watching the ad, the reward is logged.
  /// After the ad is shown or fails to show, [mainRewardedAd] is set to null
  /// and a new ad is automatically loaded for future use.
  ///
  /// Make sure to call [createRewardedAd] before calling this method.
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
