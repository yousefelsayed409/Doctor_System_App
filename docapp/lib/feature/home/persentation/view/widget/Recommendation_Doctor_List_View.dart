import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/model/specialzation_model.dart';
import 'Recommendation_Doctor_Item_List_View.dart';

class RecommendationDoctorListView extends StatelessWidget {
  RecommendationDoctorListView({required this.doctorslist, super.key});
  final List<DataResponse> doctorslist; // Ensure doctorslist is final

  @override
  Widget build(BuildContext context) {
    print('Number of doctors: ${doctorslist.length}');

    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: 12),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 24.h,
          );
        },
        itemCount: doctorslist.length,
        itemBuilder: (context, index) {
          return RecommendationDoctorItemListView(
            doctor: doctorslist[index],
          );
        },
      ),
    );
  }
}
