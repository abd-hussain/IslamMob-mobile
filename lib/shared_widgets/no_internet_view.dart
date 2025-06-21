import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays a no internet connection message with retry functionality.
///
/// This widget shows an informative screen when the device has no internet
/// connection, including an icon, localized messages, and a retry button.
/// It's typically used as a fallback UI when network operations fail.
class NoInternetView extends StatelessWidget {
  /// Callback function to execute when the user taps the retry button.
  ///
  /// This function should contain the logic to retry the failed network
  /// operation or refresh the current screen.
  final Function() retryCallback;

  /// Creates a [NoInternetView] with the specified retry callback.
  ///
  /// The [retryCallback] parameter is required and will be called when
  /// the user taps the retry button to attempt reconnection.
  const NoInternetView({super.key, required this.retryCallback});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/internet.svg',
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 8),
            CustomText(
              title: localize.internetconnection,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xff444444),
            ),
            const SizedBox(height: 8),
            CustomText(
              title: localize.intenetshouldbeenableforthispage,
              fontSize: 14,
              maxLines: 2,
              textAlign: TextAlign.center,
              color: const Color(0xff444444),
            ),
            ElevatedButton(
              onPressed: retryCallback,
              child: CustomText(
                title: localize.titleofretry,
                fontSize: 14,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
