import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/utils/app_style_text.dart';
import 'package:docapp/core/widget/custom_nav.dart';
import 'package:docapp/core/widget/snabar_widget.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/view/sign_in_view.dart';
import 'package:docapp/feature/profile/presentation/manger/up_date_data_cubit/cubit/up_date_user_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowDialogWidget extends StatelessWidget {
  const ShowDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<UpDateUserDataCubit>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Logout',
          style: AppTextStyles.t600style16.copyWith(color: AppColors.black),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'You’ll need to enter your usernameand\n password next time\n you want to login ?',
          textAlign: TextAlign.center,
          // maxLines: 3,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: OutlinedButton(
                child: Text(
                  'Cancel',
                  style: AppTextStyles.t600style16
                      .copyWith(color: AppColors.primaryColor),
                ),
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(5),
                    // side: const BorderSide(width: 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  navigatePop(context);
                },
              ),
            ),
            BlocConsumer<UpDateUserDataCubit, UpDateUserDataState>(
              listener: (context, state) {
                if (state is LogOutSuccessState) {
                  showsnakbarwidget(context, 'LogOut Successfully', true);
                  navigateAndRemoveUntil(context, SignInView());
                }
                if (state is LogOutFailureState) {
                  showsnakbarwidget(context, state.errorMessage, true);
                }
              },
              builder: (context, state) {
                return Expanded(
                  child: OutlinedButton(
                    // ignore: sort_child_properties_last
                    child: Text(
                      'Logout',
                      style:
                          AppTextStyles.t600style16.copyWith(color: Colors.red),
                    ),
                    style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.all(5),
                        // side: const BorderSide(width: 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () async {
                      await cubit.logOut();
                    },
                  ),
                );
              },
            ),
          ],
        )
      ],
    );
  }
}
