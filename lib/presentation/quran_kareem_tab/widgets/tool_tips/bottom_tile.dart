import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A custom tile widget used in tooltips for the Quran Kareem tab.
///
/// This widget displays an icon and title in a horizontal layout with
/// optional icon blinking animation. It's typically used as an interactive
/// element in bottom tooltip overlays.
///
/// The tile supports:
/// - Custom icon and title text
/// - Optional icon color customization
/// - Blinking animation for the icon when [isIconBlinking] is true
/// - Tap gesture handling through [onTap] callback
class BottomTile extends StatefulWidget {
  /// The text to display as the tile's title.
  final String title;

  /// The icon to display on the left side of the tile.
  final IconData icon;

  /// Whether the icon should have a blinking animation.
  ///
  /// When true, the icon will animate between white70 and gold colors.
  final bool isIconBlinking;

  /// The color of the icon when not blinking.
  ///
  /// Defaults to [Colors.white70] if not specified.
  final Color? colorIcon;

  /// Callback function executed when the tile is tapped.
  final VoidCallback onTap;

  /// Creates a [BottomTile] widget.
  ///
  /// The [title], [icon], and [onTap] parameters are required.
  /// The [colorIcon] defaults to [Colors.white70] and [isIconBlinking] defaults to false.
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
          children: [_buildIcon(), const SizedBox(width: 4), _buildTitle()],
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return widget.isIconBlinking
        ? AnimatedBuilder(
            animation: _colorAnimation,
            builder: (context, child) {
              return Icon(widget.icon, color: _colorAnimation.value, size: 20);
            },
          )
        : Icon(widget.icon, color: widget.colorIcon, size: 20);
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
