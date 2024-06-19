import 'package:dio/dio.dart';
import 'package:docapp/core/api/dio_service.dart';
import 'package:docapp/core/api/end_poind.dart';
import 'package:docapp/core/widget/widget_size_box.dart';
import 'package:docapp/feature/Auth/sign_in/presentation/manger2/signin_cubit.dart/signin_cubit.dart';
import 'package:docapp/feature/Auth/sign_up/presentation/manger/cubit/sign_up_cubit.dart';
import 'package:docapp/feature/home/data/repo/home_repo_impl.dart';
import 'package:docapp/feature/home/persentation/manger/cubit/home_specializtion_cubit.dart';
import 'package:docapp/feature/home/persentation/view/home_view.dart';
import 'package:docapp/feature/profile/data/repo/user_info_impl.dart';
import 'package:docapp/feature/profile/presentation/manger/up_date_data_cubit/cubit/up_date_user_data_cubit.dart';
import 'package:docapp/feature/profile/presentation/manger/user_info_cubit/cubit/get_user_info_cubit.dart';
import 'package:docapp/feature/profile/presentation/view/profile_view.dart';
import 'package:docapp/feature/profile/presentation/view/widget/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../feature/profile/presentation/view/widget/person_information_view.dart';
import '../router/app_route.dart';
import '../theme/cubit/them_cubit.dart';
import '../theme/enums/themstate.dart';
import '../widget/constant.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SigninCubit(api: DioService(dio: Dio())),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(api: DioService(dio: Dio())),
        ),
        BlocProvider(
          create: (context) => HomeSpecializtionCubit(
              HomeRpoimplementation(DioService(dio: Dio())))
            ..getSpecialization(),
        ),
        BlocProvider(
          create: (context) => GetUserInfoCubit(
            UserInfoImplementation(
              DioService(
                dio: Dio(),
              ),
            ),
          )..getUserInfo(),
        ),
        BlocProvider(
          create: (context) => UpDateUserDataCubit(
            DioService(
              dio: Dio(),
            ),
          ),
        ),
        BlocProvider(
            create: (context) => ThemCubit()..ChangeThem(ThemeState.Initial)),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return BlocBuilder<ThemCubit, ThemState>(
            builder: (context, state) {
              if (state is AppLightThem) {
                return MaterialApp(
                    theme: ThemeData.light(),
                    // home: SettingView(),
                    debugShowCheckedModeBanner: false,
                    onGenerateRoute: AppRoute.generateRoute,
                    initialRoute: Token != null
                        ? AppRoute.layoutView
                        : AppRoute.signinView);
              } else {
                return MaterialApp(
                    // home: SettingView(),
                    theme: ThemeData.dark(),
                    debugShowCheckedModeBanner: false,
                    onGenerateRoute: AppRoute.generateRoute,
                    initialRoute: Token != null
                        ? AppRoute.layoutView
                        : AppRoute.signinView);
              }
            },
          );
          // MaterialApp(
          //     // home: SettingView(),
          //     debugShowCheckedModeBanner: false,
          //     onGenerateRoute: AppRoute.generateRoute,
          //     initialRoute:
          //         Token != null ? AppRoute.layoutView : AppRoute.signinView);
        },
      ),
    );
  }
}
