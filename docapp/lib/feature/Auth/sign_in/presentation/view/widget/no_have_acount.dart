import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/utils/app_style_text.dart';
import 'package:docapp/feature/Auth/sign_up/presentation/view/sign_up_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/router/app_route.dart';

class NoHaveAccountText extends StatelessWidget {
  final String To;
  final String title;
  const NoHaveAccountText({
    Key? key,
    this.title = 'Don’t have an account ?',
    required this.To,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyles.text400style11,
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamedAndRemoveUntil(
              context, AppRoute.signupView, (route) => false),
          child: Text(
            To,
            style: AppTextStyles.t600style16
                .copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
