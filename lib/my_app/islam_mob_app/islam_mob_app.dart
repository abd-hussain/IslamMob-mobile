import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/shared_widgets/custom_gusture.dart';
import 'package:islam_app/utils/constants/app_constant.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class IslamMobApp extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const IslamMobApp({super.key, required this.navigatorKey});

  @override
  State<IslamMobApp> createState() => IslamMobAppState();

  static IslamMobAppState? of(BuildContext context) {
    return context.findAncestorStateOfType<IslamMobAppState>();
  }
}

class IslamMobAppState extends State<IslamMobApp> {
  late Box myBox = Hive.box(DatabaseBoxConstant.userInfo);
  bool isDialogueOfConeectionStatusAppear = false;

  void rebuild() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: FToastBuilder(),
        navigatorKey: widget.navigatorKey,
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (BuildContext context) {
          return AppConstant.appName;
        },
        locale: myBox.get(DatabaseFieldConstant.selectedLanguage) != null
            ? Locale(myBox.get(DatabaseFieldConstant.selectedLanguage))
            : const Locale("en"),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('ar', ''),
          Locale('tr', ''),
          Locale('fr', ''),
          Locale('fa', ''),
          Locale('ru', ''),
        ],
        theme: ThemeData(useMaterial3: false),
        scrollBehavior: MyCustomScrollBehavior(),
        onGenerateRoute: (settings) {
          return PageRouteBuilder(
              transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
              settings: RouteSettings(arguments: settings.arguments),
              transitionDuration: const Duration(milliseconds: 100),
              pageBuilder: (_, __, ___) => routes[settings.name]!);
        },
        initialRoute: myBox.get(DatabaseFieldConstant.selectedLanguage) != null
            ? RoutesConstants.mainContainer
            : RoutesConstants.initialRoute);
  }
}
