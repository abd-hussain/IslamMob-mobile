import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

/// Configures and runs app tests with localization and golden test support
class AppTestConfigurator {
  /// Creates a new app test configurator with the specified parameters
  AppTestConfigurator({
    required this.tester,
    required this.app,
    required this.supportedLocales,
    required this.localizationsDelegates,
    this.postDi,
    this.isGoldenTest = false,
    this.scenarios = const <VoidCallback>[],
  });

  /// The widget tester instance for running tests
  final WidgetTester tester;

  /// The app widget to test
  final Widget app;

  /// Optional callback to execute after dependency injection setup
  final VoidCallback? postDi;

  /// List of test scenarios to execute before running the app
  final List<VoidCallback> scenarios;

  /// List of supported locales for the app
  final List<Locale> supportedLocales;

  /// List of localization delegates for the app
  final List<LocalizationsDelegate<dynamic>> localizationsDelegates;

  /// Whether this is a golden test that requires special setup
  final bool isGoldenTest;

  /// Runs the configured test with proper setup and widget pumping
  Future<void> run() async {
    postDi?.call();

    for (final scenario in scenarios) {
      scenario();
    }

    if (isGoldenTest) {
      await loadAppFonts();
      await tester.pumpWidgetBuilder(
        app,
        wrapper: materialAppWrapper(
          localizations: localizationsDelegates,
          localeOverrides: supportedLocales,
        ),
      );
    } else {
      await tester.pumpWidget(
        MaterialApp(
          home: app,
          localizationsDelegates: localizationsDelegates,
          supportedLocales: supportedLocales,
        ),
      );
      await tester.pumpAndSettle();
    }
  }
}
