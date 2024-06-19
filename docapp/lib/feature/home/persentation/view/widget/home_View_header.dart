import 'package:docapp/core/utils/app_assets.dart';
import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/utils/app_style_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cutom_cirecle_image.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Omar!',
                style: AppTextStyles.text18Style700,
              ),
              Text(
                'How Are you Today?',
                style: AppTextStyles.text400style11,
              ),
            ],
          ),
          CircleAvatar(
              backgroundColor: AppColors.lightGrey,
              child: Image.asset(Assets.notifiimage)),
          // CustomCirclieImage(),
        ],
      ),
    );
  }
}
