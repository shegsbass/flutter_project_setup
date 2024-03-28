import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';

class Text14Size extends StatelessWidget {
  const Text14Size({
    super.key,
    required this.text,
    this.maxLines,
    this.color = AppColors.greyColor,
    this.fontWeight = FontWeight.w500,
    this.size = 14,
    this.textOverflow,
    required this.textAlign,
    this.letterSpacing = -0.42,
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
