// import 'package:advertisments_manager/src/core/adds_helper.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

//TODO: handle Full ads
class RewarderAds {
//   static Future<bool> initializeRewardedAd() async {
//     bool rewardedAddsLoaded = false;
//     await RewardedAd.load(
//       adUnitId: AdHelper.rewardedAdUnitId,
//       request: const AdRequest(),
//       rewardedAdLoadCallback: RewardedAdLoadCallback(onAdLoaded: (RewardedAd rewardedAd) {
//         rewardedAddsLoaded = true;
//       }, onAdFailedToLoad: (LoadAdError error) {
//         rewardedAddsLoaded = false;
//       }),
//     );
//     return rewardedAddsLoaded;
//   }

//   /// Displays the rewarded ad
//   void showRewardedAd(RewardedAd rewardedAd) {
//     rewardedAd.fullScreenContentCallback = _createFullScreenContentCallback();
//     rewardedAd.setImmersiveMode(true);
//     rewardedAd.show(
//       onUserEarnedReward: _handleUserEarnedReward,
//     );
//     add(AboutUsEvent.updateRewardedAd(null));
//   }

//   /// Creates a full-screen content callback for the rewarded ad
//   FullScreenContentCallback<RewardedAd> _createFullScreenContentCallback() {
//     return FullScreenContentCallback(
//       onAdShowedFullScreenContent: (RewardedAd ad) => _logAdEvent(
//         ad,
//         "onAdShowedFullScreenContent",
//       ),
//       onAdDismissedFullScreenContent: (RewardedAd ad) {
//         _logAdEvent(ad, "onAdDismissedFullScreenContent");
//         ad.dispose();
//         add(AboutUsEvent.initializeRewardedAd());
//       },
//       onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
//         _logAdEvent(ad, "onAdFailedToShowFullScreenContent: $error");
//         ad.dispose();
//         add(AboutUsEvent.initializeRewardedAd());
//       },
//     );
//   }

//   /// Handles the user earning a reward
//   void _handleUserEarnedReward(AdWithoutView ad, RewardItem reward) {
//     debugPrint(
//       '$ad with reward RewardItem(${reward.amount}, ${reward.type})',
//     );

//     LogEventUsecase.logEvent(
//       name: "RewardedAd_AboutUsScreen",
//       parameters: {
//         "status": "RewardItem(${reward.amount}, ${reward.type})",
//       },
//     );
//   }

//   /// Logs ad-related events
//   void _logAdEvent(RewardedAd ad, String status) {
//     debugPrint('$ad $status');
//     LogEventUsecase.logEvent(
//       name: "RewardedAd_AboutUsScreen",
//       parameters: {"status": status},
//     );
//   }
}
