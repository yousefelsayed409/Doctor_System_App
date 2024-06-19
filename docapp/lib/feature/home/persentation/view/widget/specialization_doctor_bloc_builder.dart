import 'package:docapp/feature/home/persentation/view/widget/spechiality_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_circle_indicator.dart';
import '../../../../../core/widget/custom_error_widget.dart';
import '../../manger/cubit/home_specializtion_cubit.dart';
import 'Recommendation_Doctor_List_View.dart';

class SpecializationDoctorBlocBuilder extends StatelessWidget {
  const SpecializationDoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeSpecializtionCubit, HomeSpecializtionState>(
      builder: (context, state) {
        if (state is HomeSpecializtionFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else if (state is HomeSpecializtionSuccess) {
          return Column(
            children: [
              SpecialityListView(
                specialDataList: state.specializationDataList,
              ),
              RecommendationDoctorListView(
                doctorslist: state.specializationDataList,
              ),
            ],
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
