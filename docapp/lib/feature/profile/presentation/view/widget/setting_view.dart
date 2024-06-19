import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/widget/constant.dart';
import 'package:docapp/core/widget/cusom_app_bar.dart';
import 'package:docapp/core/widget/custom_nav.dart';
import 'package:docapp/core/widget/size_box_widget.dart';
import 'package:docapp/feature/profile/presentation/view/widget/setting_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/cubit/them_cubit.dart';
import '../../../../../core/theme/enums/themstate.dart';
import '../../../../../core/widget/show_general_dialog.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    final Mode = BlocProvider.of<ThemCubit>(context);

    return Scaffold(
      appBar: customAppBar(
        backgroundColor: Colors.transparent,
        title: 'Setting',
        leading: IconButton(
          onPressed: () {
            navigatePop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SettingItemView(
              title: 'Notification',
              iconData: Icons.notifications,
            ),
            const Divider(
              thickness: 2,
            ),
            SettingItemView(
              title: 'FAQ',
              iconData: Icons.question_answer_outlined,
            ),
            const Divider(
              thickness: 2,
            ),
            SettingItemView(
              title: 'Security',
              iconData: Icons.security,
            ),
            const Divider(
              thickness: 2,
            ),
            SettingItemView(
              title: 'Language',
              iconData: Icons.language,
            ),
            const Divider(
              thickness: 2,
            ),
            SettingItemView(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      content: const ShowDialogWidget(),
                    );
                  },
                );
              },
              title: 'Logout',
              iconData: Icons.logout,
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Mode.ChangeThem(ThemeState.Dark);
                    },
                    child: const Text('DarkMod')),
                sizeHorizontal(10),
                ElevatedButton(
                    onPressed: () {
                      Mode.ChangeThem(ThemeState.Light);
                    },
                    child: const Text('LightMod')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
