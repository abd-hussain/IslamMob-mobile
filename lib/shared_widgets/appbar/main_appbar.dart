import 'package:flutter/material.dart';

/// A minimal custom app bar widget with zero height for the Islam app.
///
/// This widget provides a hidden app bar that maintains the dark theme styling
/// but has zero height, effectively hiding it while preserving the status bar
/// styling. It implements [PreferredSizeWidget] to work properly with [Scaffold.appBar].
class MainCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Creates a [MainCustomAppBar] with zero height.
  const MainCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff292929),
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}
