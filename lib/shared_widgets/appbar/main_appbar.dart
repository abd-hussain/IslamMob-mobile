import 'package:flutter/material.dart';

class MainCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
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
