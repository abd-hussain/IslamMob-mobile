import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

/// Splash screen displayed during app initialization and loading.
///
/// This screen provides a welcoming introduction to the Islam Mob application
/// while the app performs necessary initialization tasks. It features:
/// - **App logo** prominently displayed for brand recognition
/// - **Loading indicator** showing app initialization progress
/// - **App name and tagline** reinforcing the Islamic purpose
/// - **Clean, centered design** for professional presentation
///
/// The splash screen serves multiple purposes:
/// - Provides visual feedback during app startup
/// - Establishes the Islamic identity of the application
/// - Creates a smooth transition into the main app experience
/// - Allows time for essential services to initialize
///
/// The tagline "For Every Muslim" emphasizes the app's mission to serve
/// the global Muslim community with authentic Islamic tools and content.
class SplashLoadingScreen extends StatelessWidget {
  /// Creates a [SplashLoadingScreen] widget.
  ///
  /// This screen displays the app logo, loading indicator, and branding
  /// while the application initializes its Islamic features and services.
  const SplashLoadingScreen({super.key});

  /// Builds the splash screen with logo, loading indicator, and branding.
  ///
  /// This method constructs a centered layout featuring:
  /// - Islam Mob logo at the center
  /// - Animated loading indicator below the logo
  /// - App name and Islamic mission tagline at the bottom
  /// - Professional color scheme matching the app's Islamic theme
  ///
  /// The screen uses a MaterialApp wrapper to ensure proper theming
  /// and provides a smooth loading experience for users.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: SizedBox()),
                  Center(
                    child: Image.asset(
                      "assets/images/logoz/logo.png",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    height: 50,
                    width: 50,
                    child: LoadingIndicator(
                        indicatorType: Indicator.ballSpinFadeLoader,
                        colors: [Color(0xff034061)],
                        strokeWidth: 1,
                        backgroundColor: Colors.transparent,
                        pathBackgroundColor: Colors.transparent),
                  ),
                  const Expanded(child: SizedBox()),
                  const Text(
                    "Islam-Mob",
                    style: TextStyle(
                      color: Color(0xff444444),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "For Every Muslim",
                    style: TextStyle(
                      color: Color(0xff444444),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
