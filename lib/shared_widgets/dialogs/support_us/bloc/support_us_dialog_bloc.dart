import 'dart:async';

import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_us_dialog_bloc.freezed.dart';
part 'support_us_dialog_event.dart';
part 'support_us_dialog_state.dart';

/// BLoC for managing the support us dialog functionality.
///
/// This BLoC handles the state and events related to the support us dialog,
/// primarily managing rewarded advertisement initialization and availability.
/// It coordinates with the advertisement manager to provide users with
/// opportunities to support the app through ad viewing.
class SupportUsDialogBloc
    extends Bloc<SupportUsDialogEvent, SupportUsDialogState> {
  /// Creates a [SupportUsDialogBloc] with initial state.
  ///
  /// Initializes the bloc with default state and registers event handlers
  /// for rewarded ad initialization and state updates.
  SupportUsDialogBloc() : super(const SupportUsDialogState()) {
    on<_InitializeRewardedAd>(_initializeRewardedAd);
    on<_UpdateRewardedAd>(_handleUpdateRewardedAd);
  }

  FutureOr<void> _initializeRewardedAd(
    _InitializeRewardedAd event,
    Emitter<SupportUsDialogState> emit,
  ) async {
    await RewarderAds.createRewardedAd();
    add(
      SupportUsDialogEvent.updateRewardedAd(RewarderAds.mainRewardedAd != null),
    );
  }

  FutureOr<void> _handleUpdateRewardedAd(
    _UpdateRewardedAd event,
    Emitter<SupportUsDialogState> emit,
  ) {
    emit(state.copyWith(rewardedAdExsist: event.value));
  }
}
