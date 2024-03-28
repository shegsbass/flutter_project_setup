import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../blocs/business_bloc/business_bloc.dart';

class Validator {
  static String? validateEmail(String? value) {
    String pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = RegExp(pattern);
    if (value!.isEmpty) {
      return 'Email cannot be empty.';
    } else if (!regex.hasMatch(value)) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    //String pattern = r'^(?=.*?[0-9]).{6,30}$';
    String pattern = r'^(?=.*\d).{6,30}$';
    RegExp regex = RegExp(pattern);
    if (value!.isEmpty) {
      return 'Password cannot be empty';
    } else if (!regex.hasMatch(value)) {
      return 'Your password must be at least 6-30 \ncharacters long with a number.';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a name.';
    } else if (value.length < 3) {
      return 'Name is too short';
    }
    // else if (value.contains(' ')) {
    //   return 'Name cannot contain spaces';
    // }
    else {
      return null;
    }
  }

  static String? validateUsername(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a name.';
    } else if (value.length < 3) {
      return 'Name is too short';
    } else if (value.contains(' ')) {
      return 'Name cannot contain spaces';
    }
    else {
      return null;
    }
  }

  static String? validateBusinessName(String? value) {
    if (value!.isEmpty) {
      return 'Please enter a name.';
    } else if (value.length < 3) {
      return 'Name is too short';
    } else {
      return null;
    }
  }

  static String? validateAddress(String? value) {
    if (value!.isEmpty) {
      return 'Please enter an Address';
    } else if (value.length < 3) {
      return 'Address is too short';
    } else {
      return null;
    }
  }

  static String? validatePhoneNumber(String? value) {
    String pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'Must be 11 digits \nSpecial characters not allowed';
    } else if (value.length < 11) {
      return 'Must be 11 digits \nSpecial characters not allowed';
    } else {
      return null;
    }
  }

  static String? validateAmount(String? value) {
    // Validate if the input is empty or invalid (e.g., multiple dots)
    if (value!.isEmpty || value == '.' || value.contains('..')) {
      return 'Please enter a valid number';
    } else if (int.parse(value) > 500000) {
      return 'Maximum amount is 500,000';
    } else if (int.parse(value) < 1000) {
      return 'Minimum amount is 1,000';
    }
    return null; // Return null for no validation error
  }

  // for any other validation required
  static String? validateOthers(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field must not be empty.';

      //showToast(msg: 'Field must not be empty.', status: false);
    } else {
      return null;
    }
  }

  static validateCode(String value) {
    String pattern = r'^[0-9]{4}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Code must be 4 numbers.';
    } else {
      return value;
    }
  }
}

// String humanReadableDate(DateTime dateTime) {
//   return DateFormat.yMMMEd().format(dateTime);
// }

String humanReadableDate(DateTime dateTime) {
  return DateFormat.yMMMEd().format(dateTime);
}

String humanReadableTime(DateTime dateTime) {
  return DateFormat.Hm().format(dateTime);
}
