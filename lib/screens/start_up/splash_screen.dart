import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_setup/screens/onboarding/onboarding_screen.dart';

import '../../consts/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const id = 'splash_screen';
  //final PackageInfo packageInfo;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? version = '';
  String? code = '';

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {

    Future.delayed(const Duration(seconds: 3), () {
     Navigator.pushReplacementNamed(context, OnboardinScreen.id);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Center(
              child: Container(
                width: 207,
                height: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                        'assets/images/multiride_logo.png'
                    ),
                  ],
                ),
              )
          )
      ),
    );
  }
}
