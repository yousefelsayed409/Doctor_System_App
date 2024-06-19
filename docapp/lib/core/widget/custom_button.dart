import 'package:docapp/core/utils/app_style_text.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      required this.title,
      required this.height,
      required this.width,
      required this.ontap,
      this.style,
      required this.color});
  final String title;
  final double height;
  final double width;
  final Color? color;
  final VoidCallback ontap;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(48)),
        child: Text(title, style: style ?? AppTextStyles.t600style16
            // const TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.white)
            ),
      ),
    );
  }
}
