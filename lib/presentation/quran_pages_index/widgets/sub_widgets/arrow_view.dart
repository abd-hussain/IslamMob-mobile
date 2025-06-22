import 'package:flutter/material.dart';

/// A simple widget that displays a white forward arrow icon.
///
/// This widget is typically used as a visual indicator for navigation
/// or to show that an item can be selected or expanded.
class ArrowView extends StatelessWidget {
  /// Creates an [ArrowView] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const ArrowView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.arrow_forward, color: Colors.white);
  }
}
