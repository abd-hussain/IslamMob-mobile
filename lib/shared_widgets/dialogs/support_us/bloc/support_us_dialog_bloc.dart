import 'dart:async';

import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_us_dialog_event.dart';
part 'support_us_dialog_state.dart';
part 'support_us_dialog_bloc.freezed.dart';

class SupportUsDialogBloc
    extends Bloc<SupportUsDialogEvent, SupportUsDialogState> {
  SupportUsDialogBloc() : super(const SupportUsDialogState()) {
    on<_InitializeRewardedAd>(_initializeRewardedAd);
    on<_UpdateRewardedAd>(_handleUpdateRewardedAd);
  }

  FutureOr<void> _initializeRewardedAd(
      _InitializeRewardedAd event, Emitter<SupportUsDialogState> emit) async {
    await RewarderAds.createRewardedAd();
    add(SupportUsDialogEvent.updateRewardedAd(
        RewarderAds.mainRewardedAd != null));
  }

  FutureOr<void> _handleUpdateRewardedAd(
      _UpdateRewardedAd event, Emitter<SupportUsDialogState> emit) {
    emit(state.copyWith(rewardedAdExsist: event.value));
  }
}
