import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:islam_app/utils/adds_helper.dart';

part 'about_us_event.dart';
part 'about_us_state.dart';
part 'about_us_bloc.freezed.dart';

class AboutUsBloc extends Bloc<AboutUsEvent, AboutUsState> {
  static const int _maxRewardedLoadAttempts = 3;
  int _rewardedLoadAttempts = 0;

  AboutUsBloc() : super(const AboutUsState()) {
    on<_UpdateRewardedAd>(_handleUpdateRewardedAd);
    _initializeRewardedAd();
  }

  /// Initializes and loads a rewarded ad
  void _initializeRewardedAd() {
    RewardedAd.load(
      adUnitId: AdHelper.rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (RewardedAd rewardedAd) {
          _resetRewardedLoadAttempts();
          add(AboutUsEvent.updateRewardedAd(rewardedAd));
        },
        onAdFailedToLoad: (LoadAdError error) {
          _handleAdLoadFailure();
        },
      ),
    );
  }

  /// Resets the rewarded ad load attempts
  void _resetRewardedLoadAttempts() {
    _rewardedLoadAttempts = 0;
  }

  /// Handles a rewarded ad load failure
  void _handleAdLoadFailure() {
    _rewardedLoadAttempts++;
    add(AboutUsEvent.updateRewardedAd(null));
    if (_rewardedLoadAttempts < _maxRewardedLoadAttempts) {
      _initializeRewardedAd();
    }
  }

  /// Displays the rewarded ad
  void showRewardedAd(RewardedAd rewardedAd) {
    rewardedAd.fullScreenContentCallback = _createFullScreenContentCallback();
    rewardedAd.setImmersiveMode(true);
    rewardedAd.show(
      onUserEarnedReward: _handleUserEarnedReward,
    );
    add(AboutUsEvent.updateRewardedAd(null));
  }

  /// Creates a full-screen content callback for the rewarded ad
  FullScreenContentCallback<RewardedAd> _createFullScreenContentCallback() {
    return FullScreenContentCallback(
      onAdShowedFullScreenContent: (RewardedAd ad) => _logAdEvent(
        ad,
        "onAdShowedFullScreenContent",
      ),
      onAdDismissedFullScreenContent: (RewardedAd ad) {
        _logAdEvent(ad, "onAdDismissedFullScreenContent");
        ad.dispose();
        _initializeRewardedAd();
      },
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        _logAdEvent(ad, "onAdFailedToShowFullScreenContent: $error");
        ad.dispose();
        _initializeRewardedAd();
      },
    );
  }

  /// Handles the user earning a reward
  void _handleUserEarnedReward(AdWithoutView ad, RewardItem reward) {
    debugPrint(
      '$ad with reward RewardItem(${reward.amount}, ${reward.type})',
    );
    FirebaseAnalytics.instance.logEvent(
      name: "RewardedAd_AboutUsScreen",
      parameters: {
        "status": "RewardItem(${reward.amount}, ${reward.type})",
      },
    );
  }

  /// Logs ad-related events
  void _logAdEvent(RewardedAd ad, String status) {
    debugPrint('$ad $status');
    FirebaseAnalytics.instance.logEvent(
      name: "RewardedAd_AboutUsScreen",
      parameters: {"status": status},
    );
  }

  FutureOr<void> _handleUpdateRewardedAd(
      _UpdateRewardedAd event, Emitter<AboutUsState> emit) {
    emit(state.copyWith(rewardedAd: event.value));
  }
}
