import 'dart:io' as io;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import '../components/custom_error_dialog.dart';
import '../consts/app_colors.dart';
import '../services/storage_service.dart';

class Global {
  static late StorageService storageService;
  static Dio dio = Dio();

  static Future init() async {
    storageService = await StorageService().init();
  }

  static Future addToken(String token) async {
    storageService.write('TOKEN', token);
  }

  static Future clearToken() async {
    storageService.clear('TOKEN');
  }

  static Future<String?> fetchToken() async {
    return storageService.readStorage('TOKEN');
  }

  static Future addPublicKey(publicKey) async {
    storageService.write('public_key', publicKey);
  }

  static Future clearPublicKey() async {
    storageService.clear('public_key');
  }

  static Future<String?> fetchPublicKey() async {
    return storageService.readStorage('public_key');
  }

  static Future addSecretKey(secretKey) async {
    storageService.write('secret_key', secretKey);
  }

  static Future clearSecretKey() async {
    storageService.clear('secret_key');
  }

  static Future<String?> fetchSecretKey() async {
    return storageService.readStorage('secret_key');
  }

  static showToastMessage({required message, color = AppColors.primaryColor}) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        //timeInSecForIosWeb: 1,
        backgroundColor: color.withOpacity(.9),
        textColor: Colors.white,
        fontSize: 16.0);
  }


  static unDismissibleLoadingWidget(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => WillPopScope(
              onWillPop: () async => false,
              // onWillPop: () async => false,
              child: const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ));
  }

  static formatCurrency(double amount) {
    NumberFormat formatter = NumberFormat.currency(locale: 'en_NG', symbol: '₦');
    return formatter.format(amount);
  }

  static showErrorDialog(
      {required BuildContext context,
        description,
        buttonText = 'Ok',
        required Function() onPressed}) {
    showDialog(
        context: context,
        builder: (context) => CustomErrorDialog(
          description: description,
          onPressed: onPressed,
          buttonText: buttonText,
        ));
  }

  // static Future<void> pendoSetup({
  //   String? androidKey,
  //   String? iosKey,
  // }) async {
  //   String appKey;
  //
  //   if (io.Platform.isIOS || io.Platform.isAndroid) {
  //     //appKeyAndroid = appKey;
  //     // accessKeyAndroid = accessKey;
  //     if (io.Platform.isIOS) {
  //       appKey = iosKey ?? '';
  //     } else {
  //       appKey = androidKey ?? '';
  //     }
  //     PendoFlutterPlugin.setup(appKey).then((_) {
  //       // initialization successful
  //       if (kDebugMode) {
  //         print("pendo initialization successful ===>>");
  //       }
  //     }).catchError((error) {
  //       // initialization failed
  //       if (kDebugMode) {
  //         print("pendo initialization failed ===>> : $error");
  //       }
  //     });
  //   }
  // }

}
