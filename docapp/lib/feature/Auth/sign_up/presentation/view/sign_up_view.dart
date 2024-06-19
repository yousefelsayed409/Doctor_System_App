import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/view/widget/social_widget.dart';
import 'package:docapp/feature/Auth/sign_up/presentation/view/widget/have_acount_text.dart';
import 'package:docapp/feature/Auth/sign_up/presentation/view/widget/sign_up_form.dart';
import 'package:docapp/feature/home/persentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/app_strimg.dart';
import '../../../sign_in/presentation/view/widget/sign_header_text.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.5),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SliverToBoxAdapter(
                child: SignHeaderTitle(
                  texttitle: AppStrings.createAccount,
                  textsubtitle: AppStrings.subtitlesignup,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 36,
                ),
              ),
              SliverToBoxAdapter(
                child: SignUpForm(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: SocialWidget(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: HaveAccountText(
                  To: '  Signin',
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
