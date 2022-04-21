import 'package:flutter/material.dart';

import '../../helper/constant.dart';
import 'text_sub_title.dart';

class HomeScreenTitle extends StatelessWidget {
  const HomeScreenTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: kBackgroundColor,
      pinned: true,
      title: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: TextSubTitle(title: 'Covid-19 Latest News'),
      ),
    );
  }
}