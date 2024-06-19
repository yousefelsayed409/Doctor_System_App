import 'package:docapp/core/utils/app_color.dart';
import 'package:flutter/material.dart';

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String knameNullError = "Please Enter your name";
const String kgenderNullError = "Please Enter your genger";

const String kphoneNullError = "Please Enter your phone";

const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

const String baseUrl = 'https://vcare.integration25.com/api/';
// ignore: constant_identifier_names
enum ThemeState {Initial ,Light , Dark}

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: (15)),
  border: outlineInputBorder(),
  focusedBorder: focusoutlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular((16)),
    borderSide: BorderSide(color: AppColors.lightGrey),
  );
}

OutlineInputBorder focusoutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular((16)),
    borderSide: BorderSide(color: AppColors.lightGrey),
  );
}
