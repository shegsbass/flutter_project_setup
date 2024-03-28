import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_text.dart';

final List<Widget> onBoardingImages = [
  Image.asset('assets/images/onboarding_one.png'),
  Image.asset('assets/images/onboarding_two.png'),
];

final List onBoardingTitle = [
  AppTexts.onboardingOneTitle,
  AppTexts.onboardingTwoTitle,
];

final List onBoardingSubtitle = [
  AppTexts.onboardingOneSubTitle,
  AppTexts.onboardingTwoSubTitle,
];

// final List pageDetails = [
//   const DashboardScreen(),
//   const TransactionScreen(),
//   //const TicketsScreen(),
//   //const LogisticsScreen(),
//   //PaymentWebView(),
//   //const BookingsScreen(),
//   const AccountScreen(),
//   const SettingsPage(),
//   //DeleteAccountPage()
// ];

// const List<String> list = <String>['Male', 'Female'];

RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
String mathFunc(Match match) => '${match[1]},';

const String apiKey = "AIzaSyCWG88yv13sEIbejOXZnFpMXN8IUPz2_oQ";
