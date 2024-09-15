import 'package:flutter/material.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator({super.key, required this.initialRoute});
  final String initialRoute;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: initialRoute,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => routes[settings.name]!,
        );
      },
    );
  }
}
