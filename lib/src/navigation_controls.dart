import 'package:flutter/material.dart';
//import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/texts/text_16_size.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class NavigationControls extends StatelessWidget {
  const NavigationControls({super.key});

  //final WebViewController controller;
  //final InAppWebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // IconButton(
        //   icon: const Icon(Icons.arrow_back_ios),
        //   onPressed: () async {
        //     final messenger = ScaffoldMessenger.of(context);
        //     if (await controller.canGoBack()) {
        //       await controller.goBack();
        //     } else {
        //       messenger.showSnackBar(
        //         const SnackBar(content: Text('No back history item')),
        //       );
        //       return;
        //     }
        //   },
        // ),
        // IconButton(
        //   icon: const Icon(Icons.replay),
        //   onPressed: () {
        //     controller.reload();
        //   },
        // ),
        SizedBox(
          width: 60.w,
          child: IconButton(
            icon: const Text16Size(
              text: 'Home',
              //color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            onPressed: () async {
              // Navigator.pushNamedAndRemoveUntil(
              //     context, BookRideScreen.id, (route) => false);
            },
          ),
        ),
      ],
    );
  }
}
