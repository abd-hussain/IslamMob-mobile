import 'dart:math' as math;

import 'package:flutter/material.dart';

class WebviewLoadingView extends StatefulWidget {
  const WebviewLoadingView({super.key});

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

class GradientArcPainter extends CustomPainter {
  final double progress;
  final double strokeWidth;
  final BuildContext context;

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
