import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget that displays numbers using a digital/seven-segment display style.
///
/// This widget renders integers using a custom-painted seven-segment display
/// appearance, similar to digital clocks or calculators. It supports:
/// - Custom colors for the segments
/// - Adjustable height (width is automatically calculated)
/// - Left padding with zeros for consistent digit count
/// - RTL (Arabic) text direction support
/// - Smooth rendering using custom painting
///
/// The widget automatically handles digit extraction and positioning,
/// and can display any non-negative integer value.
class DigitalNumber extends StatelessWidget {
  /// The integer value to display in digital format.
  ///
  /// This value will be broken down into individual digits and rendered
  /// using seven-segment display style. Must be non-negative.
  final int value;

  /// The minimum number of digits to display, padding with zeros on the left.
  ///
  /// If the [value] has fewer digits than [padLeft], leading zeros will be
  /// added to reach the specified width. For example, if [value] is 42 and
  /// [padLeft] is 4, it will display as "0042".
  ///
  /// Defaults to 0 (no padding).
  final int padLeft;

  /// The height of the digital display in logical pixels.
  ///
  /// The width of each digit is automatically calculated as height/2.
  /// This determines the overall size of the digital number display.
  final double height;

  /// The color used to paint the digital segments.
  ///
  /// All segments of all digits will be rendered in this color.
  /// Typically a bright color like green, red, or blue for visibility.
  final Color color;

  /// Creates a digital number display widget.
  ///
  /// The [value], [height], and [color] parameters are required.
  /// The [padLeft] parameter is optional and defaults to 0.
  ///
  /// Example:
  /// ```dart
  /// DigitalNumber(
  ///   value: 1234,
  ///   height: 60.0,
  ///   color: Colors.green,
  ///   padLeft: 6, // Will display as "001234"
  /// )
  /// ```
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

    return Row(children: isArabic ? children : children.reversed.toList());
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

    List<Offset> leftPolygon(double top, double bottom) {
      return [
        Offset(left + smallGap, top),
        Offset(left, top + smallGap),
        Offset(left, bottom - smallGap),
        Offset(left + smallGap, bottom),
        Offset(left + thickness, bottom - bigGap),
        Offset(left + thickness, top + bigGap),
      ];
    }

    List<Offset> rightPolygon(double top, double bottom) {
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
