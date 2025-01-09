import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

class AppTestConfigurator {
  AppTestConfigurator({
    required this.tester,
    required this.app,
    required this.supportedLocales,
    required this.localizationsDelegates,
    this.postDi,
    this.isGoldenTest = false,
    this.scenarios = const <VoidCallback>[],
  });

  final WidgetTester tester;
  final Widget app;
  final VoidCallback? postDi;
  final List<VoidCallback> scenarios;
  final List<Locale> supportedLocales;
  final List<LocalizationsDelegate<dynamic>> localizationsDelegates;
  final bool isGoldenTest;

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
