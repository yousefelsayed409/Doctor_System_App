// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/utils/app_style_text.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
    this.height,
    this.width,
  }) : super(key: key);
  final String? text;
  final Function? press;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: SizedBox(
        width: width ?? double.infinity,
        height: height ?? 48,
        child: TextButton(
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            foregroundColor: Colors.white,
            backgroundColor: AppColors.primaryColor,
          ),
          onPressed: press as void Function()?,
          child: Text(text!, style: AppTextStyles.t600style16),
        ),
      ),
    );
  }
}
