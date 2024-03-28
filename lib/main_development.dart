import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'common/global.dart';
import 'common/my_app.dart';
import 'config/api_config/api_urls.dart';
import 'consts/current_environment.dart';

void main() async {
  debugPrint("main: DEVELOPMENT");

  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  Global.init();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));

  ///Set the value for CurrentEnvironmentEnum
  ApiUrl.setCurrentEnvironment(
      currentEnvironmentEnum: CurrentEnvironmentEnum.dev);

  runApp(Builder(builder: (context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child:  const MyApp()
    );
  }));
}
