import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/utils/app_style_text.dart';
import 'package:docapp/feature/profile/presentation/manger/user_info_cubit/cubit/get_user_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widget/cusom_app_bar.dart';
import '../../../../core/widget/custom_nav.dart';
import '../../../../core/widget/size_box_widget.dart';
import 'widget/bacground_profile.dart';
import 'widget/list_view_profile.dart';
import 'widget/peofile_pic.dart';
import 'widget/profile_action.dart';
import 'widget/setting_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(
          backgroundColor: Colors.transparent,
          title: 'Profile',
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          action: [
            Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: IconButton(
                  onPressed: () {
                    navigateTo(context, const SettingView());
                  },
                  icon: const Icon(Icons.settings)),
            )
          ]),
      body: BlocConsumer<GetUserInfoCubit, GetUserInfoState>(
        listener: (context, state) {
          if (state is GetUserInfoFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage),
              ),
            );
          }
        },
        builder: (context, state) {
          return state is GetUserInfoLoading
              ? const Center(child: CircularProgressIndicator())
              : state is GetUserInfoSuccess
                  ? SingleChildScrollView(
                      child: SizedBox(
                        height: 620.h,
                        child: BackGroundProfile(
                          child: Column(
                            children: [
                              Text(
                                state.userinfoModel.data![0].name.toString(),
                                // style: AppTextStyles.text500style14
                                //     .copyWith(color: AppColors.black),
                              ),
                              sizeVertical(8),
                              Text(
                                state.userinfoModel.data![0].email.toString(),
                                // style: AppTextStyles.text500style14
                                //     .copyWith(color: AppColors.black),
                              ),
                              sizeVertical(24),
                              const BooksAction(),
                              sizeVertical(24),
                              const ListViewProfile(),
                            ],
                          ),
                        ),
                      ),
                    )
                  : const Text('In_Falied Data');
        },
      ),
    );
  }
}
