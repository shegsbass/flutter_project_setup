import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../blocs/business_bloc/business_bloc.dart';
import '../consts/custom_scroll_behavior.dart';
import '../screens/start_up/splash_screen.dart';
import '../services/api_services.dart';
import '../services/app_router.dart';
import '../services/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.androidSdkVersion}) : super(key: key);
  final int? androidSdkVersion;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 680),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return RepositoryProvider(
          create: (context) => ApiServices(),
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => BusinessBloc()),
              // BlocProvider(create: (_) => AppBloc()),
              // BlocProvider(create: (_) => SellTicketBloc()),
              //BlocProvider(lazy: true, create: (_) => InternetBloc()),
              //BlocProvider(create: (_) => PassengerInfoBloc()),
            ],
            child: MaterialApp(
              theme: AppTheme.appThemeData,
              debugShowCheckedModeBanner: false,
              scrollBehavior: Platform.isAndroid
                  ? CustomScrollBehavior(
                  androidSdkVersion: androidSdkVersion ?? 0)
                  : null,
              home: child,
              onGenerateRoute: AppRouter().onGenerateRoute,
            ),
          ),
        );
      },
      child: const SplashScreen(),
    );
  }
}
