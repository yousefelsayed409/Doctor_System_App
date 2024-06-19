import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../core/utils/app_assets.dart';

class ProfilePicther extends StatelessWidget {
  const ProfilePicther({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
              top: 50,
              left: 110,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  Assets.imageprofile,
                  height: 150,
                ),
              ),
            );
  }
}