import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../consts/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    this.onChanged,
    this.suffix,
    this.isError = false,
    this.validator,
    this.textInputType,
    this.textInputAction,
    this.obscureText = false,
    this.onSuffixPressed,
    this.inputFormatters,
    this.autofillHints,
    this.onEditingComplete,
    this.controller,
    this.prefixIcon,
    this.autovalidateMode,
    this.initialValue,
    this.focusNode,
    this.onTap,
  }) : super(key: key);

  final TextEditingController? controller;
  final String hintText;
  final Function(String)? onChanged;
  final Widget? suffix;
  final bool isError;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final Function()? onSuffixPressed, onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final List<String>? autofillHints;
  final Widget? prefixIcon;
  final AutovalidateMode? autovalidateMode;
  final String? initialValue;
  final FocusNode? focusNode;
  final Function()? onTap;

  InputDecoration _buildInputDecoration(
      BuildContext context, {
        Widget? suffix,
        String hintText = '',
        Function()? onSuffixPressed,
        Widget? prefixIcon,
        Color? fillColor,
        BorderSide? borderSide,
      }) {
    return InputDecoration(
      fillColor: fillColor,
      filled: true,
      border: InputBorder.none,
      isDense: false,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      focusedBorder: OutlineInputBorder(
        borderSide: borderSide ?? BorderSide(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: borderSide ?? BorderSide(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      hintText: hintText,
      focusedErrorBorder: OutlineInputBorder(
        borderSide: borderSide ?? BorderSide(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: borderSide ?? BorderSide(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      hintStyle: const TextStyle(fontSize: 14, color: AppColors.greyColor),
      suffixIconConstraints: const BoxConstraints(minWidth: 50),
      suffixIcon: suffix != null
          ? IconButton(onPressed: onSuffixPressed, icon: suffix)
          : null,
      prefixIcon: prefixIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onChanged: onChanged,
      controller: controller,
      onTap: onTap,
      decoration: isError
          ? _buildInputDecoration(
        context,
        suffix: suffix,
        hintText: hintText,
        onSuffixPressed: onSuffixPressed,
        prefixIcon: prefixIcon,
        fillColor: AppColors.primaryColor.withOpacity(.1),
        borderSide: BorderSide(color: AppColors.primaryColor),
      )
          : _buildInputDecoration(
        context,
        suffix: suffix,
        hintText: hintText,
        onSuffixPressed: onSuffixPressed,
        prefixIcon: prefixIcon,
      ),
      validator: validator,
      inputFormatters: inputFormatters,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      autofillHints: autofillHints,
      onEditingComplete: onEditingComplete,
      autovalidateMode: autovalidateMode,
      initialValue: initialValue,
    );
  }
}
