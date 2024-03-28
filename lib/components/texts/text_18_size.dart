import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';

class Text18Size extends StatelessWidget {
  const Text18Size({
    super.key,
    required this.text,
    this.maxLines,
    this.color = AppColors.black,
    this.fontWeight = FontWeight.w700,
    this.size = 18,
    this.textOverflow,
    this.textAlign = TextAlign.start,
    this.letterSpacing = -0.54,
  });
  final String text;
  final int? maxLines;
  final Color color;
  final FontWeight? fontWeight;
  final double size;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
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
