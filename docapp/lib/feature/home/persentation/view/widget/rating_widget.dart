import 'package:dartz/dartz.dart';
import 'package:docapp/core/utils/app_style_text.dart';
import 'package:docapp/feature/home/data/model/specialzation_model.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    // required this.rating,
    required this.count,
  });  
  // final Doctors? doctors ;

  final MainAxisAlignment mainAxisAlignment;
  // final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4,8',
          // rating.toString(),
          style: AppTextStyles.text500style14.copyWith(fontSize: 12),
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text('($count) reviews',
              style: AppTextStyles.text500style14.copyWith(fontSize: 12)),
        )
      ],
    );
  }
}
