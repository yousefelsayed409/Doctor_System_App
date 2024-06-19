import 'package:docapp/core/utils/app_assets.dart';
import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/utils/app_style_text.dart';
import 'package:docapp/core/widget/defolt-button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widget/custom_button.dart';

class DoctorContarinerHome extends StatelessWidget {
  const DoctorContarinerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            height: 165.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                  image: AssetImage(Assets.backcontainer), fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Book and\n schedule with\n nearest doctor',
                  textAlign: TextAlign.start,
                  style: AppTextStyles.text500style18,
                ),
                SizedBox(
                  height: 15.h,
                ),
                CustomBottom(
                  color: AppColors.white,
                  height: 38.h,
                  title: 'Find Nearby',
                  width: 109.w,
                  style: AppTextStyles.text12style400
                      .copyWith(color: AppColors.black),
                  ontap: () {},
                ),
              ],
            ),
          ),
          Positioned(
              right: 0.h,
              top: -27.h,
              // bottom: 50.w,
              child: Image.asset(
                Assets.imagedoc,
                fit: BoxFit.cover,
                height: 190.h,
              ))
        ],
      ),
    );
  }
}
