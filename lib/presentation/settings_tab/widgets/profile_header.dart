import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A header widget for the profile/settings section.
///
/// This widget displays a welcome message with a time-based icon that changes
/// based on the current time of day (e.g., sun for day, moon for night).
/// It provides a personalized greeting to the user at the top of the profile screen.
class ProfileHeader extends StatelessWidget {
  /// Creates a [ProfileHeader] widget.
  ///
  /// This widget requires no parameters and automatically displays
  /// the appropriate time-based icon and localized welcome message.
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff292929),
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          children: [
            Image.asset(
              locator<TimingUseCase>().getCurrentImageForTime(),
              width: 32,
              height: 32,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CustomText(
                title: IslamMobLocalizations.of(context).welcomeback,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
