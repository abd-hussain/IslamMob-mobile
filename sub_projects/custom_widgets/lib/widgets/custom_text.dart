import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;
  final int maxLines;
  final TextOverflow overflow;
  final TextAlign textAlign;
  final FontWeight fontWeight;

  const CustomText({
    super.key,
    required this.title,
    required this.fontSize,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.textAlign = TextAlign.start,
    this.color = Colors.white,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: GoogleFonts.questrial(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
