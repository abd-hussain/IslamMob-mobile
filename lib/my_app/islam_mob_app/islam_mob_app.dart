import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_gusture.dart';

class IslamMobApp extends StatefulWidget {
  const IslamMobApp({super.key});

  @override
  State<IslamMobApp> createState() => IslamMobAppState();

  static IslamMobAppState? of(BuildContext context) {
    return context.findAncestorStateOfType<IslamMobAppState>();
  }
}

class IslamMobAppState extends State<IslamMobApp> {
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
        key: DatabaseFieldConstant.userLanguageCode, defaultValue: "");
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
        defaultValue: null);
    return onBoardingFinished != null
        ? RoutesConstants.mainContainer
        : RoutesConstants.inBoardingScreen;
  }
}
