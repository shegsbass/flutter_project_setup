import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingSmallButton extends StatelessWidget {
  final String assetIcon;
  final VoidCallback? onTap;

  const OnboardingSmallButton({
    Key? key,
    required this.assetIcon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 52,
        height: 52,
        padding: const EdgeInsets.all(14),
        decoration: ShapeDecoration(
          color: const Color(0xFFE5E7EB),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 16,
              height: 16,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  assetIcon,
                  width: 16,
                  height: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
