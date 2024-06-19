import 'package:dio/dio.dart';
import 'package:docapp/core/api/dio_service.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/manger2/signin_cubit.dart/signin_cubit.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/view/sign_in_view.dart';
import 'package:docapp/feature/Auth/sign_up/presentation/manger/cubit/sign_up_cubit.dart';
import 'package:docapp/feature/Auth/sign_up/presentation/view/sign_up_view.dart';
import 'package:docapp/feature/calender/calender.dart';
import 'package:docapp/feature/home/persentation/view/home_view.dart';
import 'package:docapp/feature/layout/lay_out_view.dart';
import 'package:docapp/feature/message/message.dart';
import 'package:docapp/feature/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/profile/presentation/view/widget/person_information_view.dart';

abstract class AppRoute {
  static const splashView = 'SplashView';
  static const onBoardingView = 'OnBoardingView';
  static const signinView = 'SignInView';
  static const signupView = 'SignUpView';
  static const homeView = 'HomeView';
  static const profileView = 'ProfileView';
  static const calenderview = 'CalenderView';
  static const messageview = 'MessageView';
  static const layoutView = 'HomeNavBarWidget';
  static const personInformationView = 'PersonInformationView';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case splashView:
      //   return MaterialPageRoute(builder: (_) => const SplashView());
      // case onBoardingView:
      //   return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case signinView:
        return MaterialPageRoute(builder: (_) => const SignInView());
      case signupView:
        return MaterialPageRoute(builder: (_) => const SignUpView());

      case homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case layoutView:
        return MaterialPageRoute(builder: (_) => const HomeNavBarWidget());

      case profileView:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case calenderview:
        return MaterialPageRoute(builder: (_) => const CalenderView());
      case messageview:
        return MaterialPageRoute(builder: (_) => const MessageView());
      // ignore: no_duplicate_case_values
      case profileView:
        return MaterialPageRoute(builder: (_) => const ProfileView());
        case personInformationView:
        return MaterialPageRoute(builder: (_) => const PersonInformationView());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defind${settings.name}'),
                  ),
                ));
    }
  }
}
