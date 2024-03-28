import 'package:flutter/material.dart';
import '../../consts/app_colors.dart';

class Text16Size extends StatelessWidget {
  const Text16Size({
    super.key,
    required this.text,
    this.maxLines,
    this.color = AppColors.white,
    this.fontWeight = FontWeight.w700,
    this.size = 16,
    this.textOverflow,
    this.textDecoration,
    this.decorationColor,
    this.textAlign = TextAlign.center,
    this.letterSpacing = -0.48,
  });
  final String text;
  final int? maxLines;
  final Color color;
  final FontWeight? fontWeight;
  final double size;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;
  final Color? decorationColor;
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
        fontFamily: 'Mulish',
        fontWeight: fontWeight,
        decoration: textDecoration,
        decorationColor: decorationColor,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
