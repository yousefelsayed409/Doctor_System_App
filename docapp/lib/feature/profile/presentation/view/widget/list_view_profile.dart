import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'list_view_item_profile.dart';

class ListViewProfile extends StatelessWidget {
  const ListViewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, index) {
          return const ListViewitemProfile();
        },
      ),
    );
  }
}
