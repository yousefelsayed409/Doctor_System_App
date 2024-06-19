import 'package:docapp/core/utils/app_style_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/constant.dart';
import 'cubit/them_cubit.dart';
import 'enums/themstate.dart';

class PageTest extends StatelessWidget {
  const PageTest({super.key});

  @override
  Widget build(BuildContext context) {
    final Mode = BlocProvider.of<ThemCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Moood',
          // style: AppTextStyles.pacifico700style32,
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.dark_mode,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.light_mode,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Mode.ChangeThem(ThemeState.Dark);
              },
              child: Text('DarkMod')),
          ElevatedButton(
              onPressed: () {
                Mode.ChangeThem(ThemeState.Light);
              },
              child: Text('LightMod')),
          Container()
        ],
      ),
    );
  }
}
