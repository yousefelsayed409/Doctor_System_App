import 'package:docapp/core/utils/app_style_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_nav.dart';

PreferredSizeWidget? customAppBar(
    {Widget? leading,
    List<Widget>? action,
    String? title,
    // void Function()? onPressed,
    Color? backgroundColor}) {
  return AppBar(
    automaticallyImplyLeading: true,
    // backwardsCompatibility: false,
    // backgroundColor: backgroundColor,
    elevation: 0,
    centerTitle: true,
    title: Text(
      '$title',
      style: AppTextStyles.text18style600,
    ),
    actions: action,
    leading: leading,
  );
}
