import 'package:docapp/feature/home/data/model/specialzation_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Speciality_Item_List_View.dart';

class SpecialityListView extends StatelessWidget {
  const SpecialityListView({super.key, required this.specialDataList});
  final List<DataResponse> specialDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 102.h,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        // padding: EdgeInsets.only(left: 12),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 24.w,
          );
        },
        itemCount: specialDataList.length,
        itemBuilder: (context, index) {
          return SpecialityItemListView(
            specializationDtaModel: specialDataList[index],
          );
        },
      ),
    );
  }
}
