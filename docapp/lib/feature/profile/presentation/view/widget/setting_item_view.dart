import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_style_text.dart';
import '../../../../../core/widget/size_box_widget.dart';

class SettingItemView extends StatelessWidget {
  SettingItemView({this.onTap, this.title, this.iconData, super.key});
  IconData? iconData;
  String? title;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(iconData),
          sizeHorizontal(5.w),
          Text(
            '$title',
            style: AppTextStyles.text500style14,
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right))
        ],
      ),
    );
  }
}
