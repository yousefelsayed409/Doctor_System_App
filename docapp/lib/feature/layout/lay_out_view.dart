import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/feature/calender/calender.dart';
import 'package:docapp/feature/home/persentation/view/home_view.dart';
import 'package:docapp/feature/message/message.dart';
import 'package:docapp/feature/profile/presentation/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

PersistentTabController? controllerr;

class HomeNavBarWidget extends StatelessWidget {
  const HomeNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PersistentTabView(
            navBarStyle: NavBarStyle.style5,
            context,
            items: _navBarsItems(),
            navBarHeight: 60.h,
            padding: NavBarPadding.all(20),
            controller: controllerr,
            backgroundColor: Colors.white,
            screens: _buildScreens(),
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.h),
                  topRight: Radius.circular(10.h)),
            ),
          ),
          Positioned(
              // top: 50,
              left: 145.h,
              bottom: 43.h,
              child: Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(13)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Icon(
                        Icons.search,
                        color: AppColors.white,
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeView(),
    const MessageView(),
    const CalenderView(),
    const ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.home,
        // color: AppColors.Teal,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.message_outlined,
        // color: AppColors.Teal,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.calendar_month,
        // color: AppColors.Teal,
      ),
      // activeColorPrimary: AppColors.deepBrown,
      // inactiveColorPrimary: AppColors.grey,
//
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.person,
        // color: AppColors.Teal,
      ),
    ),
  ];
}
