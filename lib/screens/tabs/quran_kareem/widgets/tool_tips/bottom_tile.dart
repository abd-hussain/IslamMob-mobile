import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class BottomTile extends StatefulWidget {
  const BottomTile(
      {super.key,
      required this.title,
      required this.icon,
      this.colorIcon = Colors.white70,
      this.isIconBlinking = false,
      required this.onTap});
  final String title;
  final IconData icon;
  final bool isIconBlinking;
  final Color? colorIcon;
  final void Function() onTap;

  @override
  State<BottomTile> createState() => _BottomTileState();
}

class _BottomTileState extends State<BottomTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: Colors.white70,
      end: const Color(0xffFFD700),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        color: Colors.black.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AnimatedBuilder(
                  animation: _colorAnimation,
                  builder: (context, child) {
                    return Icon(
                      widget.icon,
                      color: widget.isIconBlinking
                          ? _colorAnimation.value
                          : widget.colorIcon,
                      size: 20,
                    );
                  }),
              const SizedBox(width: 4),
              CustomText(
                title: widget.title,
                fontSize: 14,
                textColor: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
