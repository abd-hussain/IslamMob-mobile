import 'package:flutter/material.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';

/// A custom navigator widget for handling tab-based navigation.
///
/// This widget creates a Navigator with a specified initial route
/// and uses the app's route configuration to generate pages.
/// It's typically used within tab views to maintain separate
/// navigation stacks for each tab.
class TabNavigator extends StatelessWidget {
  /// Creates a [TabNavigator] with the specified initial route.
  ///
  /// The [initialRoute] parameter is required and specifies which
  /// route should be displayed when this navigator is first created.
  const TabNavigator({super.key, required this.initialRoute});

  /// The initial route to display when this navigator is created.
  ///
  /// This should correspond to a route name defined in the app's
  /// route configuration. The navigator will start by showing
  /// the page associated with this route.
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
