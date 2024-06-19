import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/widget/size_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widget/button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: Buttons(
              text: 'My Appointment',
              backgroundColor: Colors.white,
              textColor: AppColors.black,
              onPressed: () {},
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          sizeHorizontal(7.h),
          Expanded(
              child: Buttons(
            onPressed: () {},
            fontSize: 16,
            text: 'Medical records',
            backgroundColor: AppColors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }
}
