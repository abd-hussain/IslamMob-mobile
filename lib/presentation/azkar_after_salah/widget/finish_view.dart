import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/azkar_after_salah/bloc/azkar_after_salah_bloc.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget displayed when all post-prayer azkar have been completed.
///
/// This widget provides a completion interface for the azkar after salah
/// (post-prayer remembrances), showing congratulatory messages and options
/// for continuing the spiritual practice. It features:
/// - **Completion message** acknowledging the finished azkar session
/// - **Islamic blessing** with "May Allah accept" message
/// - **Reset functionality** to start a new azkar session
/// - **Elegant design** with rounded corners and subtle shadows
///
/// The widget appears after users complete all the recommended post-prayer
/// remembrances, providing positive reinforcement for maintaining Islamic
/// spiritual practices and encouraging continued engagement with dhikr.
class AzkarFinishView extends StatelessWidget {
  /// Creates an [AzkarFinishView] widget.
  ///
  /// This widget displays the completion interface for post-prayer azkar
  /// with congratulatory messages and reset functionality.
  const AzkarFinishView({super.key});

  /// Builds the azkar completion view with messages and reset button.
  ///
  /// This method constructs a completion interface featuring:
  /// - Congratulatory message for completing the azkar
  /// - Islamic blessing message (May Allah accept)
  /// - Reset button to start a new azkar session
  /// - Elegant container design with Islamic-appropriate styling
  ///
  /// The interface encourages continued spiritual practice while providing
  /// a sense of accomplishment for completing the post-prayer remembrances.
  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFC0C0C0),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF89ABAA).withValues(alpha: 0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              title: localize.youfinishazkarTitle,
              fontSize: 14,
              color: const Color(0xff444444),
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: localize.mayAllaAcept,
              fontSize: 20,
              color: const Color(0xff444444),
              fontWeight: FontWeight.bold,
            ),
            CustomButton(
              isEnabled: true,
              title: localize.activateAgain,
              onTap: () => context.read<AzkarAfterSalahBloc>().add(
                const AzkarAfterSalahEvent.resetCounter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
