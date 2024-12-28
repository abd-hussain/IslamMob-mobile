import 'package:flutter/material.dart';
import 'package:custom_widgets/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff292929),
      iconTheme: const IconThemeData(color: Colors.white),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            title: title,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
