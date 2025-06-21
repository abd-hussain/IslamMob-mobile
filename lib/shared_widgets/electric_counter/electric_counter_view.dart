import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/electric_footer_view.dart';
import 'package:islam_app/shared_widgets/electric_counter/widgets/electric_main_view.dart';

/// Widget for displaying an electric-style digital counter for Islamic dhikr counting.
///
/// This widget provides a comprehensive digital counter interface designed
/// for Islamic dhikr (remembrance of Allah) counting with visual and tactile
/// feedback. It features:
/// - **Digital display** showing current count and maximum target count
/// - **Audio feedback** with sound notifications for each count
/// - **Haptic feedback** with vibration for tactile confirmation
/// - **Navigation controls** for switching between different dhikr phrases
/// - **Reset functionality** for starting new counting sessions
/// - **Progress tracking** with visual indicators for completion
///
/// The electric counter supports Muslims in their spiritual practice by
/// providing a modern, interactive way to count Islamic remembrances,
/// supplications, and dhikr while maintaining focus on their worship.
class ElectricCounterView extends StatelessWidget {
  /// The current count value displayed on the counter.
  final int currentCount;

  /// The maximum target count for this dhikr session.
  final int maxCount;

  /// The width of the counter widget for responsive design.
  final double width;

  /// Whether the previous dhikr navigation button is selected.
  final bool isPreviosSelected;

  /// Whether the next dhikr navigation button is selected.
  final bool isNextSelected;

  /// Whether vibration feedback is enabled for counting.
  final bool isVibrationSelected;

  /// Whether sound feedback is enabled for counting.
  final bool isSoundSelected;

  /// Whether to show the reset hint text to the user.
  final bool showResetHintText;

  /// Callback function triggered when previous dhikr is selected.
  final void Function() onPreviosSelected;

  /// Callback function triggered when next dhikr is selected.
  final void Function() onNextSelected;

  /// Callback function triggered when vibration setting is toggled.
  final void Function() onVibrationSelected;

  /// Callback function triggered when sound setting is toggled.
  final void Function() onSoundSelected;

  /// Callback function triggered when counter is reset to zero.
  final void Function() onResetCounter;

  /// Callback function triggered when counter is incremented.
  final void Function() onIncreaseCounter;

  /// Creates an [ElectricCounterView] widget for Islamic dhikr counting.
  ///
  /// This constructor initializes the electric counter with all necessary
  /// parameters for displaying count information, handling user interactions,
  /// and providing audio/haptic feedback during Islamic dhikr practice.
  ///
  /// All parameters are required to ensure proper counter functionality
  /// and Islamic spiritual practice support.
  const ElectricCounterView({
    super.key,
    required this.currentCount,
    required this.maxCount,
    required this.width,
    required this.showResetHintText,
    required this.isPreviosSelected,
    required this.isNextSelected,
    required this.isVibrationSelected,
    required this.isSoundSelected,
    required this.onPreviosSelected,
    required this.onNextSelected,
    required this.onVibrationSelected,
    required this.onSoundSelected,
    required this.onResetCounter,
    required this.onIncreaseCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElectricMainView(
          currentCount: currentCount,
          maxCount: maxCount,
          width: width,
          isSoundSelected: isSoundSelected,
          isVibrationSelected: isVibrationSelected,
          onSoundSelected: onSoundSelected,
          onVibrationSelected: onVibrationSelected,
          onRefresh: onResetCounter,
          onIncrease: onIncreaseCounter,
        ),
        ElectricFooterView(
          width: width * 1.5,
          showResetHintText: showResetHintText,
          onPreviosSelected: onPreviosSelected,
          onNextSelected: onNextSelected,
          isPreviosSelected: isPreviosSelected,
          isNextSelected: isNextSelected,
        ),
      ],
    );
  }
}
