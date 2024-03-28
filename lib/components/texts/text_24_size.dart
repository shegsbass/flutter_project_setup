import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';

class Text24Size extends StatelessWidget {
  const Text24Size({
    super.key,
    required this.text,
    this.maxLines,
    required this.color,
    this.fontWeight = FontWeight.w700,
    this.size = 24,
    this.textOverflow,
    required this.textAlign,
    this.letterSpacing = -0.72,
  });
  final String text;
  final int? maxLines;
  final Color color;
  final FontWeight? fontWeight;
  final double? size;
  final TextOverflow? textOverflow;
  final TextAlign textAlign;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        fontFamily: 'Mulish'
      ),
    );
  }
}
