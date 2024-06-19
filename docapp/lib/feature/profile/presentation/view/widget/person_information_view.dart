import 'package:docapp/core/utils/app_color.dart';
import 'package:docapp/core/utils/app_style_text.dart';
import 'package:docapp/core/widget/cusom_app_bar.dart';
import 'package:docapp/core/widget/custom_button.dart';
import 'package:docapp/core/widget/custom_form_field.dart';
import 'package:docapp/core/widget/custom_nav.dart';
import 'package:docapp/core/widget/size_box_widget.dart';
import 'package:docapp/feature/profile/presentation/view/widget/peofile_pic.dart';
import 'package:docapp/feature/profile/presentation/view/widget/pseson_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonInformationView extends StatelessWidget {
  const PersonInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          backgroundColor: Colors.transparent,
          title: 'Personal information',
          leading: IconButton(
              onPressed: () {
                navigatePop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                // color: AppColors.black,
              ))),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          // SliverToBoxAdapter(
          //   child: ProfilePicther(),
          // ),
          SliverToBoxAdapter(
            child: PersonalInformationitem(),
          ),
        ],
      ),
    );
  }
}
