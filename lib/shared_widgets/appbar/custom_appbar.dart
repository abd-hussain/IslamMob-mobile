import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A custom app bar widget with consistent styling for the Islam app.
///
/// This widget provides a reusable app bar with a dark theme, white icons,
/// and customizable title and actions. It implements [PreferredSizeWidget]
/// to work properly with [Scaffold.appBar].
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// The title text to display in the app bar.
  final String title;

  /// Optional list of action widgets to display on the right side of the app bar.
  final List<Widget>? actions;

  /// Creates a [CustomAppBar] with the given [title] and optional [actions].
  const CustomAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff292929),
      iconTheme: const IconThemeData(color: Colors.white),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(title: title, fontSize: 18, fontWeight: FontWeight.bold),
        ],
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
