import 'package:docapp/core/utils/app_style_text.dart';
import 'package:docapp/feature/home/data/model/specialzation_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_color.dart';

class SpecialityItemListView extends StatelessWidget {
  const SpecialityItemListView(
      {super.key, required this.specializationDtaModel});
  final DataResponse specializationDtaModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            backgroundColor: AppColors.lightGrey,
            child: Image.asset(Assets.notifiimage)),
        SizedBox(
          height: 12.h,
        ),
        Text(
          specializationDtaModel.name ?? 'Specialization',
          style: AppTextStyles.text400style11.copyWith(fontSize: 12),
        )
      ],
    );
  }
}
