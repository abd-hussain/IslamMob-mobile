import 'dart:async';

import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_us_bloc.freezed.dart';
part 'about_us_event.dart';
part 'about_us_state.dart';

/// BLoC for managing the About Us screen state and rewarded advertisement logic.
///
/// This BLoC handles the business logic for the About Us screen, specifically
/// managing rewarded advertisements that allow users to support the Islam Mob
/// app development. It provides:
/// - **Rewarded ad initialization** and availability checking
/// - **Ad state management** for UI display decisions
/// - **Support mechanism** for app development through ad revenue
/// - **User engagement tracking** for advertisement interactions
///
/// The BLoC supports the app's sustainability model by providing users with
/// an optional way to support Islamic app development through viewing
/// rewarded advertisements, aligning with Islamic principles of supporting
/// beneficial projects and community development.
class AboutUsBloc extends Bloc<AboutUsEvent, AboutUsState> {
  /// Creates an [AboutUsBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with default state and sets up event handlers for:
  /// - Rewarded advertisement initialization
  /// - Advertisement availability updates
  /// - State management for UI components
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
