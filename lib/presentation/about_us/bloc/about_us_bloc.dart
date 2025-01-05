import 'dart:async';

import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_us_event.dart';
part 'about_us_state.dart';
part 'about_us_bloc.freezed.dart';

class AboutUsBloc extends Bloc<AboutUsEvent, AboutUsState> {
  AboutUsBloc() : super(const AboutUsState()) {
    on<_InitializeRewardedAd>(_initializeRewardedAd);
    on<_UpdateRewardedAd>(_handleUpdateRewardedAd);
  }

  FutureOr<void> _initializeRewardedAd(
      _InitializeRewardedAd event, Emitter<AboutUsState> emit) async {
    await RewarderAds.createRewardedAd();
    add(AboutUsEvent.updateRewardedAd(RewarderAds.mainRewardedAd != null));
  }

  FutureOr<void> _handleUpdateRewardedAd(
      _UpdateRewardedAd event, Emitter<AboutUsState> emit) {
    emit(state.copyWith(rewardedAdExsist: event.value));
  }
}
