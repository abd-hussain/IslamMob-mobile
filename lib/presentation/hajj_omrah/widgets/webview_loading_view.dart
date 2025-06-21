import 'dart:math' as math;

import 'package:flutter/material.dart';

/// Widget displaying an animated loading indicator for webview content.
///
/// This widget provides visual feedback while YouTube video content loads
/// in the Hajj/Omrah guidance interface. It features:
/// - **Animated circular progress** with gradient colors
/// - **Smooth rotation animation** providing engaging visual feedback
/// - **Islamic-themed colors** matching the app's spiritual design
/// - **Responsive sizing** adapting to different screen contexts
///
/// The loading view enhances user experience during video loading by
/// providing clear visual indication that content is being prepared,
/// maintaining engagement while spiritual content loads.
class WebviewLoadingView extends StatefulWidget {
  /// Creates a [WebviewLoadingView] widget.
  ///
  /// This widget displays an animated loading indicator for webview
  /// content with gradient circular progress animation.
  const WebviewLoadingView({super.key});

  /// Creates the state for the webview loading view.
  ///
  /// Returns a [_WebviewLoadingViewState] instance that manages the
  /// animation controller and loading indicator lifecycle.
  @override
  State<WebviewLoadingView> createState() => _WebviewLoadingViewState();
}

class _WebviewLoadingViewState extends State<WebviewLoadingView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 64,
          height: 64,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (animatedContext, child) {
              return CustomPaint(
                painter: GradientArcPainter(
                  context: context,
                  progress: _controller.value,
                  strokeWidth: 12,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

/// Custom painter for creating animated gradient arc loading indicators.
///
/// This painter creates a circular loading animation with gradient colors
/// that rotates smoothly to indicate loading progress. It features:
/// - **Gradient sweep effect** with Islamic-themed colors
/// - **Smooth rotation animation** based on progress value
/// - **Customizable stroke width** for different visual weights
/// - **Rounded stroke caps** for polished appearance
///
/// The painter is used in the webview loading interface to provide
/// engaging visual feedback while spiritual content loads.
class GradientArcPainter extends CustomPainter {
  /// The current animation progress value (0.0 to 1.0).
  final double progress;

  /// The width of the arc stroke in logical pixels.
  final double strokeWidth;

  /// The build context for accessing theme and styling information.
  final BuildContext context;

  /// Creates a [GradientArcPainter] with animation and styling parameters.
  ///
  /// Parameters:
  /// - [context]: Build context for theme access
  /// - [progress]: Animation progress (0.0 to 1.0)
  /// - [strokeWidth]: Width of the arc stroke
  const GradientArcPainter({
    required this.context,
    required this.progress,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = 32.0;
    final rect = Rect.fromCircle(center: center, radius: radius);

    final Paint paint = Paint()
      ..shader = SweepGradient(
        startAngle: math.pi / 9,
        endAngle: 1.8 * math.pi,
        colors: const [Colors.white, Color(0xff00AFAB)],
        stops: const [0.0, 1.0],
        transform: GradientRotation(progress * 2 * math.pi),
      ).createShader(rect)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawArc(rect, -math.pi / 2, 2 * math.pi, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
