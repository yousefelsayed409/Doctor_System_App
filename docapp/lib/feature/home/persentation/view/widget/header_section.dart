import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/utils/app_style_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection(
      {super.key, required this.textone, required this.textTow});
  final String textone;
  final String textTow;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textone, style: AppTextStyles.text18style600),
        Text(
          textTow,
          style: AppTextStyles.text400style11.copyWith(
            fontSize: 12.sp , 
            color: AppColors.primaryColor
          )
        ),
      ],
    );
  }
}
