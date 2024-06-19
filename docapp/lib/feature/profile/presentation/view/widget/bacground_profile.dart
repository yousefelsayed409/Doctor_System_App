import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'peofile_pic.dart';

class BackGroundProfile extends StatelessWidget {
  const BackGroundProfile({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Stack(children: <Widget>[
      Container(
          margin: EdgeInsets.only(top: size.height * 0.2),
          padding: EdgeInsets.only(
            top: size.height * 0.12,
            left: 20,
            right: 20,
          ),
          decoration: const BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: child),
      const ProfilePicther(),
    ]);
  }
}
