import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DigitalNumber extends StatelessWidget {
  final int value;
  final int padLeft;
  final double height;
  final Color color;

  const DigitalNumber({
    super.key,
    required this.value,
    required this.height,
    required this.color,
    this.padLeft = 0,
  });

  @override
  Widget build(BuildContext context) {
    final isArabic = Directionality.of(context) == TextDirection.rtl;
    Widget digitPainter(int digit) {
      return CustomPaint(
        size: Size(height / 2.0, height),
        painter: _DigitalDigitPainter(digit, height, color),
      );
    }

    final Widget digitPadding = SizedBox(width: height / 10.0);
    final List<Widget> children = [];

    int digits = 0;
    int remaining = value;
    do {
      final int digit = remaining.remainder(10);
      if (remaining != value) {
        children.add(digitPadding);
      }
      children.add(digitPainter(digit));
      remaining ~/= 10;
      digits++;
    } while (remaining > 0);

    while (digits < padLeft) {
      children.add(digitPadding);
      children.add(digitPainter(0));
      digits++;
    }

    return Row(
      children: isArabic ? children : children.reversed.toList(),
    );
  }
}

class _DigitalDigitPainter extends CustomPainter {
  final int value;
  final double height;
  final Color color;

  _DigitalDigitPainter(this.value, this.height, this.color)
      : assert(value >= 0),
        assert(value < 10);

  @override
  bool shouldRepaint(_DigitalDigitPainter oldDelegate) {
    return value != oldDelegate.value ||
        height != oldDelegate.height ||
        color != oldDelegate.color;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final double width = height / 2;
    final double thickness = width / 5;
    final double bigGap = thickness * 2 / 3;
    final double midGap = thickness / 2;
    final double smallGap = thickness / 3;
    final double smallPad = thickness / 10;
    final double bigPad = smallGap + smallPad;

    final double top = size.height - height;
    final double left = size.width - width;
    final double right = size.width;
    final double bottom = size.height;
    final double middle = size.height - width;

    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    List<Offset> leftPolygon(top, bottom) {
      return [
        Offset(left + smallGap, top),
        Offset(left, top + smallGap),
        Offset(left, bottom - smallGap),
        Offset(left + smallGap, bottom),
        Offset(left + thickness, bottom - bigGap),
        Offset(left + thickness, top + bigGap),
      ];
    }

    List<Offset> rightPolygon(top, bottom) {
      return [
        Offset(right - smallGap, top),
        Offset(right - thickness, top + bigGap),
        Offset(right - thickness, bottom - bigGap),
        Offset(right - smallGap, bottom),
        Offset(right, bottom - smallGap),
        Offset(right, top + smallGap),
        Offset(right - smallGap, top),
      ];
    }

    final Path p = Path();
    if (value != 1 && value != 4) {
      final tleft = left + bigPad;
      final tright = right - bigPad;
      p.addPolygon([
        Offset(tleft, top + smallGap),
        Offset(tleft + smallGap, top),
        Offset(tright - smallGap, top),
        Offset(tright, top + smallGap),
        Offset(tright - bigGap, top + thickness),
        Offset(tleft + bigGap, top + thickness),
      ], true);
    }
    if (value == 0 || (value > 3 && value != 7)) {
      p.addPolygon(leftPolygon(top + bigPad, middle - smallPad), true);
    }
    if (value != 5 && value != 6) {
      p.addPolygon(rightPolygon(top + bigPad, middle - smallPad), true);
    }
    if (value > 1 && value != 7) {
      final mleft = left + bigPad;
      final mright = right - bigPad;
      final halfThick = thickness / 2;
      p.addPolygon([
        Offset(mleft, middle),
        Offset(mleft + midGap, middle - halfThick),
        Offset(mright - midGap, middle - halfThick),
        Offset(mright, middle),
        Offset(mright - midGap, middle + halfThick),
        Offset(mleft + midGap, middle + halfThick),
        Offset(mleft, middle),
      ], false);
    }
    if (value == 0 || value == 2 || value == 6 || value == 8) {
      p.addPolygon(leftPolygon(middle + smallPad, bottom - bigPad), true);
    }
    if (value != 2) {
      p.addPolygon(rightPolygon(middle + smallPad, bottom - bigPad), true);
    }
    if (value != 1 && value != 4 && value != 7) {
      final bleft = left + bigPad;
      final bright = right - bigPad;
      p.addPolygon([
        Offset(bleft, bottom - smallGap),
        Offset(bleft + bigGap, bottom - thickness),
        Offset(bright - bigGap, bottom - thickness),
        Offset(bright, bottom - smallGap),
        Offset(bright - smallGap, bottom),
        Offset(bleft + smallGap, bottom),
        Offset(bleft, bottom - smallGap),
      ], false);
    }
    canvas.drawPath(p, paint);
  }
}
