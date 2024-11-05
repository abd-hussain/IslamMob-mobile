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
  int _numRewardedLoadAttempts = 0;
  AboutUsBloc() : super(const AboutUsState()) {
    on<_UpdateRewardedAd>(_updateRewardedAd);

    _createRewardedAd();
  }

  void _createRewardedAd() {
    RewardedAd.load(
      adUnitId: AdHelper.rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback:
          RewardedAdLoadCallback(onAdLoaded: (RewardedAd rewardedAd) {
        _numRewardedLoadAttempts = 0;
        add(AboutUsEvent.updateRewardedAd(rewardedAd));
      }, onAdFailedToLoad: (LoadAdError error) {
        add(AboutUsEvent.updateRewardedAd(null));
        _numRewardedLoadAttempts += 1;
        if (_numRewardedLoadAttempts < 3) {
          _createRewardedAd();
        }
      }),
    );
  }

  void showRewardedAd(RewardedAd rewardedAd) {
    rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (RewardedAd ad) {
        debugPrint('$ad onAdShowedFullScreenContent.');
        FirebaseAnalytics.instance.logEvent(
          name: "RewardedAd_AboutUsScreen",
          parameters: {"status": "onAdShowedFullScreenContent"},
        );
      },
      onAdDismissedFullScreenContent: (RewardedAd ad) {
        debugPrint('$ad onAdDismissedFullScreenContent.');
        FirebaseAnalytics.instance.logEvent(
          name: "RewardedAd_AboutUsScreen",
          parameters: {"status": "onAdDismissedFullScreenContent"},
        );
        ad.dispose();
        _createRewardedAd();
      },
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error) {
        debugPrint('$ad onAdFailedToShowFullScreenContent: $error');
        FirebaseAnalytics.instance.logEvent(
          name: "RewardedAd_AboutUsScreen",
          parameters: {
            "status": "$ad onAdFailedToShowFullScreenContent: $error"
          },
        );
        ad.dispose();
        _createRewardedAd();
      },
    );

    rewardedAd.setImmersiveMode(true);
    rewardedAd.show(onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
      debugPrint(
          '$ad with reward $RewardItem(${reward.amount}, ${reward.type})');
      FirebaseAnalytics.instance.logEvent(
        name: "RewardedAd_AboutUsScreen",
        parameters: {
          "status":
              "$ad with reward $RewardItem(${reward.amount}, ${reward.type})"
        },
      );
    });
    add(AboutUsEvent.updateRewardedAd(null));
  }

  FutureOr<void> _updateRewardedAd(
      _UpdateRewardedAd event, Emitter<AboutUsState> emit) {
    emit(state.copyWith(rewardedAd: event.value));
  }
}
