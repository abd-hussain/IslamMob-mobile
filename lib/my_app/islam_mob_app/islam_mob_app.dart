import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_gusture.dart';

/// The main application widget for the Islam Mobile app.
///
/// This widget serves as the root of the application and provides:
/// - Material app configuration with custom theming
/// - Internationalization support for Arabic and English
/// - Custom route generation with slide transitions
/// - Font scaling lock to maintain consistent UI
/// - Onboarding flow management
/// - Custom scroll behavior
///
/// The app automatically determines the initial route based on whether
/// the user has completed onboarding, and supports dynamic language
/// switching through the database-stored user preferences.
class IslamMobApp extends StatefulWidget {
  /// Creates an instance of [IslamMobApp].
  ///
  /// This is the main entry point for the Islam Mobile application.
  const IslamMobApp({super.key});

  @override
  State<IslamMobApp> createState() => IslamMobAppState();

  /// Provides access to the [IslamMobAppState] from anywhere in the widget tree.
  ///
  /// This static method allows child widgets to access the app state for
  /// operations like triggering rebuilds when language or other global
  /// settings change.
  ///
  /// Returns the [IslamMobAppState] if found in the widget tree, or null
  /// if the context is not within an [IslamMobApp] widget.
  ///
  /// Example usage:
  /// ```dart
  /// IslamMobApp.of(context)?.rebuild();
  /// ```
  static IslamMobAppState? of(BuildContext context) {
    return context.findAncestorStateOfType<IslamMobAppState>();
  }
}

/// The state class for [IslamMobApp] that manages app-level configuration.
///
/// This state class handles:
/// - Dynamic locale switching based on user preferences
/// - App rebuilding when global settings change
/// - Route generation with custom transitions
/// - Initial route determination based on onboarding status
/// - Localization delegates configuration
/// - Theme and scroll behavior setup
class IslamMobAppState extends State<IslamMobApp> {
  /// Triggers a rebuild of the entire app.
  ///
  /// This method is useful when global app settings change (such as language
  /// preferences) and the entire app needs to be rebuilt to reflect the changes.
  /// It can be called from anywhere in the app using [IslamMobApp.of(context)?.rebuild()].
  ///
  /// Common use cases:
  /// - Language change
  /// - Theme updates
  /// - Global setting modifications
  void rebuild() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: TextScaler.noScaling), // Locks font scaling
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateTitle: (BuildContext context) => AppConstant.appName,
          locale: _getLocale(),
          localizationsDelegates: _localizationDelegates(),
          supportedLocales: _supportedLocales(),
          theme: ThemeData(useMaterial3: false),
          scrollBehavior: MyCustomScrollBehavior(),
          onGenerateRoute: _onGenerateRoute,
          initialRoute: _getInitialRoute(),
        ),
      );
    });
  }

  Locale _getLocale() {
    final selectedLanguage = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldConstant.userLanguageCode,
        defaultValue: "") as String;
    return selectedLanguage != ""
        ? Locale(selectedLanguage)
        : const Locale("en");
  }

  List<LocalizationsDelegate<dynamic>> _localizationDelegates() {
    return const [
      IslamMobLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }

  List<Locale> _supportedLocales() {
    return const [
      Locale('en', ''),
      Locale('ar', ''),
    ];
  }

  Route<dynamic>? _onGenerateRoute(RouteSettings settings) {
    return PageRouteBuilder(
      settings: RouteSettings(arguments: settings.arguments),
      transitionDuration: const Duration(milliseconds: 100),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      pageBuilder: (_, __, ___) => routes[settings.name]!,
    );
  }

  String _getInitialRoute() {
    final bool? onBoardingFinished = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldInBoardingStageConstant.inBoardingfinished,
        defaultValue: null) as bool?;
    return onBoardingFinished != null
        ? RoutesConstants.mainContainer
        : RoutesConstants.inBoardingScreen;
  }
}
