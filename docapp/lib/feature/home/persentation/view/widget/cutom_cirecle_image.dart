import 'package:docapp/core/utils/app_assets.dart';
import 'package:docapp/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCircleImage extends StatelessWidget {
  const CustomCircleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(48)),
      child: SvgPicture.asset(Assets.notifiimage),
    );
  }
}
