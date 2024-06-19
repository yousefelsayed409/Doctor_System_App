import 'package:docapp/core/utils/app_assets.dart';
import 'package:docapp/feature/profile/presentation/view/widget/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../core/widget/custom_nav.dart';
import 'person_information_view.dart';

class ListViewitemProfile extends StatelessWidget {
  const ListViewitemProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            navigateTo(context, const PersonInformationView());
          },
          child: ListTile(
            title: const Text('Personal Information'),
            leading: GestureDetector(child: Image.asset(Assets.imageperson)),
          ),
        ),
        ListTile(
          title: const Text('My Test & Diagnostic'),
          leading: Image.asset(Assets.imageicontest),
        ),
        ListTile(
          title: const Text('Payment'),
          leading: Image.asset(Assets.imageiconpayment),
        ),
        ListTile(
          onTap: () {
            navigateTo(context, SettingView());
          },
          title: const Text('Setting',),
          leading: Icon(Icons.settings),
        ),
      ],
    );
  }
}
