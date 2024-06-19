import 'package:docapp/core/router/app_route.dart';
import 'package:docapp/core/utils/app_strimg.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/manger2/signin_cubit.dart/signin_cubit.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/view/widget/no_have_acount.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/view/widget/sign-in_form.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/view/widget/sign_header_text.dart';
import 'package:docapp/feature/Auth/sign_up/presentation/view/sign_up_view.dart';
import 'package:docapp/feature/home/persentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_nav.dart';
import '../../../../../core/widget/defolt-button.dart';
import '../../../../../core/widget/snabar_widget.dart';
import '../../../../layout/lay_out_view.dart';
import 'widget/social_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccessState) {
          showsnakbarwidget(context, 'Loggedin Successfuly', true);
          // navigateTopushReplacement(context, HomeView());
          navigateTo(context, const HomeNavBarWidget());
        } else if (state is SigninFauiler) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = context.read<SigninCubit>();
        return SafeArea(
            child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.5),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SignHeaderTitle(
                    texttitle: AppStrings.welcomeBack,
                    textsubtitle: AppStrings.subtitleSignin,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 36,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SignForm(),
                ),
                SliverToBoxAdapter(
                  child: state is SigninLoadingState
                      ? const Center(child: CircularProgressIndicator())
                      : DefaultButton(
                          text: AppStrings.login,
                          press: () {
                            if (cubit.signInFormKey.currentState!.validate()) {
                              context.read<SigninCubit>().signin();
                            }
                          },
                        ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SliverToBoxAdapter(child: SocialWidget()),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: NoHaveAccountText(
                    To: '  SignUp',
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
        ));
      },
    );
  }
}
