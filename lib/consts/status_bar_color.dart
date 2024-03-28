import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class StatusBarUtil {
  static void setStatusBarStyle() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.black, // Set your desired color here
        statusBarIconBrightness: Brightness.light, // Set Brightness.light for light text, Brightness.dark for dark text
      ),
    );
  }
}