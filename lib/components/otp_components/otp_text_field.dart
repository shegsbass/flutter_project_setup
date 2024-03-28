import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../consts/app_colors.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({
    Key? key,
    this.otpController,
    required this.onChanged,
    required this.onCompleted,
    this.borderColor, // Added borderColor property
  }) : super(key: key);

  final TextEditingController? otpController;
  final Function(String) onChanged;
  final Function(String) onCompleted;
  final Color? borderColor; // Added borderColor property

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      controller: otpController,
      backgroundColor: Colors.transparent,
      animationType: AnimationType.none,
      appContext: context,
      keyboardType: TextInputType.number,
      enableActiveFill: true,
      length: 4,
      textInputAction: TextInputAction.done,
      cursorColor: AppColors.primaryColor,
      obscureText: true,
      useHapticFeedback: true,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(4),
        fieldHeight: 44,
        fieldWidth: 67,
        activeFillColor: Colors.white,
        inactiveFillColor: AppColors.otpInactiveColor,
        activeColor: Colors.transparent,
        inactiveColor: borderColor, // Set the border color dynamically
        selectedColor: Colors.transparent,
        selectedFillColor: AppColors.white,
      ),
      onChanged: onChanged,
      onCompleted: onCompleted,
    );
  }
}
