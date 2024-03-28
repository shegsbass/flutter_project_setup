import 'package:flutter/material.dart';

import '../consts/app_colors.dart';

class AppTheme {
  static final appThemeData = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColors.mainColor),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: const BorderSide(color: AppColors.borderColor),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.primaryColor,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(),
    fontFamily: 'Mulish',
  );
}
