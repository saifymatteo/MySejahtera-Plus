import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/constant.dart';

class TextSubTitle extends StatelessWidget {
  const TextSubTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        textStyle: Theme.of(context).textTheme.titleLarge,
        color: kDarkGreyColor,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
