import 'dart:ui';

import 'package:docapp/core/api/end_poind.dart';
import 'package:docapp/core/widget/custom_circle_indicator.dart';
import 'package:docapp/core/widget/custom_nav.dart';
import 'package:docapp/feature/profile/presentation/manger/up_date_data_cubit/cubit/up_date_user_data_cubit.dart';
import 'package:docapp/feature/profile/presentation/manger/user_info_cubit/cubit/get_user_info_cubit.dart';
import 'package:docapp/feature/profile/presentation/view/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_style_text.dart';
import '../../../../../core/widget/custom_button.dart';
import '../../../../../core/widget/custom_form_field.dart';
import '../../../../../core/widget/size_box_widget.dart';
import '../../../../../core/widget/snabar_widget.dart';

class PersonalInformationitem extends StatelessWidget {
  PersonalInformationitem({super.key});

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<UpDateUserDataCubit>();

    cubit.upDateDataName.text = userInfoModel!.data![0].name!;
    cubit.upDateDataEmail.text = userInfoModel!.data![0].email!;
    cubit.upDateDatapPhone.text = userInfoModel!.data![0].phone!;
    cubit.upDateDataGender.text = userInfoModel!.data![0].gender!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Form(
        key: cubit.upDateDataFormKey,
        child: Column(
          children: [
            CustomInputField(
              controller: cubit.upDateDataName,
              hintText: 'name',
              label: 'name',
              isDense: true,
              obscureText: false,
              suffixIcon: false,
            ),
            sizeVertical(16.h),
            CustomInputField(
              controller: cubit.upDateDataEmail,
              hintText: 'email',
              label: 'email',
              isDense: true,
              obscureText: false,
              suffixIcon: false,
            ),
            sizeVertical(16.h),
            CustomInputField(
              controller: cubit.upDateDatapPhone,
              hintText: 'Phone',
              label: 'Phone',
              isDense: true,
              obscureText: false,
              suffixIcon: false,
            ),
            sizeVertical(16.h),
            CustomInputField(
              controller: cubit.upDateDataGender,
              hintText: 'gender',
              label: 'gender',
              isDense: false,
              obscureText: false,
              suffixIcon: false,
            ),
            sizeVertical(16.h),
            CustomInputField(
              controller: cubit.upDateDataPassword,
              hintText: 'Password',
              label: 'Password',
              isDense: true,
              obscureText: true,
              suffixIcon: true,
            ),
            sizeVertical(16.h),
            CustomInputField(
              controller: cubit.confirmationPassword,
              hintText: 'Confirmation_Password',
              label: 'Confirmation_Password',
              isDense: true,
              obscureText: true,
              suffixIcon: true,
            ),
            sizeVertical(16.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'When you set up your personal information settings, you should take care to provide accurate information.',
                style: AppTextStyles.text12style400,
                textAlign: TextAlign.center,
              ),
            ),
            sizeVertical(70.h),
            BlocConsumer<UpDateUserDataCubit, UpDateUserDataState>(
              listener: (context, state) {
                if (state is UpDateUserDataSuccess) {
                  showsnakbarwidget(context, 'Data Updated Successfully', true);
                  navigatePop(context);
                }
                if (state is UpDateUserDataFailure) {
                  showsnakbarwidget(context, state.errorMessage, true);
                }
                // TODO: implement listener
              },
              builder: (context, state) {
                return state is UpDateUserDataLoading
                    ? CustomLoadingIndicator()
                    : CustomBottom(
                        title: 'Save',
                        style: AppTextStyles.t600style16,
                        height: 52.h,
                        width: double.infinity,
                        ontap: () {
                          if (cubit.upDateDataFormKey.currentState!
                              .validate()) {
                            if (cubit.upDateDataName.text.isNotEmpty &&
                                cubit.upDateDataEmail.text.isNotEmpty &&
                                cubit.upDateDatapPhone.text.isNotEmpty &&
                                cubit.upDateDataGender.text.isNotEmpty &&
                                cubit.upDateDataPassword.text.isNotEmpty &&
                                cubit.confirmationPassword.text.isNotEmpty) {
                              cubit.upDateUserDate();
                            } else {
                              showsnakbarwidget(
                                  context, 'Please Enter all Data !', false);
                            }
                          }
                        },
                        color: AppColors.primaryColor);
              },
            ),
            sizeVertical(41.h),
          ],
        ),
      ),
    );
  }
}
