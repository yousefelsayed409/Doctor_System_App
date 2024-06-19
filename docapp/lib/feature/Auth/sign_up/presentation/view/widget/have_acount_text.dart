import 'package:docapp/core/router/app_route.dart';
import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/utils/app_style_text.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/view/sign_in_view.dart';
import 'package:docapp/feature/Auth/sign_up/presentation/view/sign_up_view.dart';
import 'package:flutter/material.dart';

class HaveAccountText extends StatelessWidget {
  final String To;
  final String title;
  const HaveAccountText({
    Key? key,
    this.title = 'Already have an acount yet ?',
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
              context, AppRoute.signinView, (route) => false),
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
