import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_gusture.dart';
import 'package:islam_app/utils/constants/app_constant.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class IslamMobApp extends StatefulWidget {
  const IslamMobApp({super.key});

  @override
  State<IslamMobApp> createState() => IslamMobAppState();

  static IslamMobAppState? of(BuildContext context) {
    return context.findAncestorStateOfType<IslamMobAppState>();
  }
}

class IslamMobAppState extends State<IslamMobApp> {
  late final Box _userBox = Hive.box(DatabaseBoxConstant.userInfo);

  void rebuild() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (BuildContext context) => AppConstant.appName,
      locale: _getLocale(),
      localizationsDelegates: _localizationDelegates(),
      supportedLocales: _supportedLocales(),
      theme: ThemeData(useMaterial3: false),
      scrollBehavior: MyCustomScrollBehavior(),
      onGenerateRoute: _onGenerateRoute,
      initialRoute: _getInitialRoute(),
    );
  }

  Locale _getLocale() {
    final selectedLanguage =
        _userBox.get(DatabaseFieldConstant.selectedLanguage);
    return selectedLanguage != null
        ? Locale(selectedLanguage)
        : const Locale("en");
  }

  List<LocalizationsDelegate<dynamic>> _localizationDelegates() {
    return const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }

  List<Locale> _supportedLocales() {
    return const [
      Locale('en', ''),
      Locale('ar', ''),
      Locale('tr', ''),
      Locale('fr', ''),
      Locale('fa', ''),
      Locale('ru', ''),
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
    final onBoardingFinished =
        _userBox.get(DatabaseFieldInBoardingStageConstant.inBoardingfinished);
    return onBoardingFinished != null
        ? RoutesConstants.mainContainer
        : RoutesConstants.inBoardingScreen;
  }
}
