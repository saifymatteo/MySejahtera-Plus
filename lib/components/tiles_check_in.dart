import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mysejahtera_plus/helper/constant.dart';

class CheckInTiles extends StatelessWidget {
  const CheckInTiles({
    Key? key,
    required this.onPressed,
    required this.iconCheckInOrOut,
    required this.location,
    required this.date,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Icon iconCheckInOrOut;
  final String location;
  final String date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ListTile(
        dense: true,
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: kPrimarySwatch, borderRadius: BorderRadius.circular(10)),
          child: iconCheckInOrOut,
        ),
        title: Text(
          location,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        subtitle: Text(
          date,
          style: GoogleFonts.poppins(
            textStyle: Theme.of(context).textTheme.bodyMedium,
            color: kDarkGreyColor.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}