import 'package:flutter/material.dart';

class BackCircleButton extends StatelessWidget {
  const BackCircleButton ({
    super.key,
    this.onTap,
    required this.verticalPadding,
    required this.horizontalPadding
  });

  final VoidCallback? onTap;
  final double verticalPadding;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 52,
        height: 52,
        decoration: ShapeDecoration(
          shape: OvalBorder(
            side: BorderSide(width: 1, color: Color(0xFF00A859)),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
          child: Center(
              child:
              Image.asset(
                'assets/icons/back_icon.png',
                width: 16,
                height: 16,
              )
          ),
        ),
      ),
    );
  }
}
