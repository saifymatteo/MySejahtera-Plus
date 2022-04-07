
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/constant.dart';

class ToolsAndServicesListTiles extends StatelessWidget {
  const ToolsAndServicesListTiles({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: () {
        debugPrint('onTap: $text');
      },
      leading: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kPrimarySwatch,
          // image: DecorationImage(image: AssetImage('assetName'))
        ),
      ),
      title: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.titleMedium,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}