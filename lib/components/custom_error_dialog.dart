import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_setup/components/texts/text_16_size.dart';
import 'package:project_setup/components/texts/text_18_size.dart';

import '../consts/app_colors.dart';

class CustomErrorDialog extends StatelessWidget {
  const CustomErrorDialog({
    Key? key,
    required this.description,
    required this.onPressed,
    this.isLogout = false,
    this.buttonText = 'Ok',
  }) : super(key: key);
  final String description, buttonText;
  final Function() onPressed;
  final bool isLogout;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      title: const Text18Size(text: 'Sorry', color: AppColors.black,),
      content: Text16Size(text: description, color: AppColors.black,),
      //contentPadding: EdgeInsets.symmetric(horizontal: 5),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 15),
      actions: [
        isLogout
            ? InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'No',
                  style: TextStyle(
                      color: AppColors.primaryColor, fontWeight: FontWeight.w600),
                ),
              )
            : Container(),
        SizedBox(width: 10.w),
        isLogout
            ? TextButton(
                onPressed: onPressed,
                child: const Text(
                  'Yes',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              )
            : TextButton(
                onPressed: onPressed,
                child: Text(
                  buttonText,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 19),
                ),
              ),
      ],
    );
  }
}
