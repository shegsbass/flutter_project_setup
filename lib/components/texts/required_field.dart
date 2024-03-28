import 'package:flutter/material.dart';
import 'package:project_setup/components/texts/text_14_size.dart';

import '../../consts/app_colors.dart';

class RequiredField extends StatelessWidget {
  const RequiredField({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 1,
      children: [
        Text14Size(
            text: text,
          fontWeight: FontWeight.w500,
          color: AppColors.black, textAlign: TextAlign.start,
        ),
        const Text14Size(
          text: '*',
          color: AppColors.redColor, textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
