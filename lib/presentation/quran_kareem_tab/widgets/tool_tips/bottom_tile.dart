import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class BottomTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final bool isIconBlinking;
  final Color? colorIcon;
  final VoidCallback onTap;

  const BottomTile({
    super.key,
    required this.title,
    required this.icon,
    this.colorIcon = Colors.white70,
    this.isIconBlinking = false,
    required this.onTap,
  });

  @override
  State<BottomTile> createState() => _BottomTileState();
}

class _BottomTileState extends State<BottomTile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _colorAnimation = ColorTween(
      begin: Colors.white70,
      end: const Color(0xffFFD700),
    ).animate(_animationController);

    if (widget.isIconBlinking) {
      _animationController.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        color: Colors.black.withValues(alpha: 0.5),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            _buildIcon(),
            const SizedBox(width: 4),
            _buildTitle(),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return widget.isIconBlinking
        ? AnimatedBuilder(
            animation: _colorAnimation,
            builder: (context, child) {
              return Icon(
                widget.icon,
                color: _colorAnimation.value,
                size: 20,
              );
            },
          )
        : Icon(
            widget.icon,
            color: widget.colorIcon,
            size: 20,
          );
  }

  Widget _buildTitle() {
    return Expanded(
      child: CustomText(
        title: widget.title,
        fontSize: 12,
        maxLines: 2,
        color: Colors.white70,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
