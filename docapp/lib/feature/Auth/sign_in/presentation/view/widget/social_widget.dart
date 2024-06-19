import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../../../../core/widget/social_card_widget.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocalCard(
          imageAseetss: Image.asset('assets/Icons/google.png'),
          press: () {},
        ),
        SocalCard(
          imageAseetss: Image.asset('assets/Icons/facebook.png'),
          press: () {},
        ),
        SocalCard(
          imageAseetss: Image.asset('assets/Icons/twitter (1).png'),
          press: () {},
        ),
      ],
    );
  }
}
