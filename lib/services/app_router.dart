import 'package:flutter/material.dart';
import 'package:project_setup/screens/onboarding/onboarding_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case SplashScreen.id:
      //   return MaterialPageRoute(builder: (context) => const SplashScreen());
      case OnboardinScreen.id:
        return MaterialPageRoute(builder: (context) => const OnboardinScreen());
      default:
        return null;
    }
  }
}
