import 'package:flutter/material.dart';

import '../../consts/app_colors.dart';

class CustomContainer extends StatelessWidget {

  final String text;
  const CustomContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 10),
      child: Container(
        decoration: ShapeDecoration(
          color: Color(0xFFF9FAFB),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.50, color: Color(0xFFA2A7A5)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 14, top: 12, bottom: 12, right: 133),
          child: SizedBox(
            width: 130,
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xFF6B7280),
                fontSize: 14,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w500,
                letterSpacing: -0.42,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
