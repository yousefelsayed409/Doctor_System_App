import 'package:docapp/core/widget/custom_circle_indicator.dart';
import 'package:docapp/core/widget/custom_error_widget.dart';
import 'package:docapp/feature/home/persentation/manger/cubit/home_specializtion_cubit.dart';
import 'package:docapp/feature/home/persentation/view/widget/header_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Recommendation_Doctor_List_View.dart';
import 'dotor_container_home.dart';
import 'home_View_header.dart';
import 'spechiality_list_view.dart';
import 'specialization_doctor_bloc_builder.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.fromLTRB(20, 16, 20, 0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: HomeViewHeader(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30.h,
            ),
          ),
          const SliverToBoxAdapter(
            child: DoctorContarinerHome(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12.h,
            ),
          ),
          const SliverToBoxAdapter(
            child:
                HeaderSection(textone: 'Doctor Speciality', textTow: 'See All'),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12.h,
            ),
          ),
          const SliverFillRemaining(child: SpecializationDoctorBlocBuilder()),
        ],
      ),
    );
  }
}


  // SliverFillRemaining(
          //   child: Column(
          //     children: [
          //       Expanded(
          //         child: ListView.builder(
          //           physics: BouncingScrollPhysics(),
          //           itemCount: 30,
          //           itemBuilder: (context, index) {
          //             return Container(
          //               color: Colors.red,
          //               margin: EdgeInsets.symmetric(vertical: 15),
          //               height: 200,
          //               width: double.infinity,
          //             );
          //           },
          //         ),
          //       )
          //     ],
          //   ),
          // )


