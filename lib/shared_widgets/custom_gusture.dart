import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// A custom scroll behavior that enables scrolling with both touch and mouse devices.
///
/// This class extends [MaterialScrollBehavior] to provide enhanced scrolling
/// capabilities by allowing both touch and mouse interactions for scrolling.
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  /// Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
