import 'package:flutter/material.dart';

class DraggableHandle extends StatelessWidget implements PreferredSizeWidget {
  const DraggableHandle({super.key});

  final kHeight = 14.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: kHeight,
      child: Center(
        child: Container(
          height: 6,
          width: 36,
          margin: const EdgeInsets.symmetric(vertical: 4),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kHeight);
}
