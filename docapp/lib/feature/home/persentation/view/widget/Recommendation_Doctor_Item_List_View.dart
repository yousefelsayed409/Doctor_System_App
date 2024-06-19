import 'package:docapp/core/utils/app_assets.dart';
import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/utils/app_style_text.dart';
import 'package:docapp/feature/home/persentation/view/widget/rating_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/model/specialzation_model.dart';

class RecommendationDoctorItemListView extends StatelessWidget {
  const RecommendationDoctorItemListView({super.key, required this.doctor});

  final DataResponse doctor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          // child: Image.network(doctor.doctors![0].photo.toString())
          child: Image.asset(
            Assets.imagedoc,
            height: 110.h,
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctor.doctors![0].name ?? 'name',
                // 'Dr. Randy Wigham',
                style: AppTextStyles.text18Style700,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                '${doctor.doctors![0].degree} | ${doctor.doctors![0].phone}',
                // 'General | RSUD Gatot Subroto',
                style:
                    AppTextStyles.t400style12.copyWith(color: AppColors.grey),
              ),
              SizedBox(
                height: 8.h,
              ),
              RatingWidget(
                count: 4279,
              )
            ],
          ),
        )
      ],
    );
  }
}
