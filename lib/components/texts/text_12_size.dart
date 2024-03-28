import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';

class Text12Size extends StatelessWidget {
  const Text12Size({
    super.key,
    required this.text,
    this.maxLines,
    this.color = AppColors.greyColor,
    this.fontWeight = FontWeight.w500,
    this.size = 12,
    this.textOverflow,
    this.textAlign = TextAlign.center,
    this.letterSpacing = -0.36,
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
