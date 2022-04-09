import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/constant.dart';

class ButtonCardActivityFeed extends StatelessWidget {
  const ButtonCardActivityFeed({
    Key? key,
    required this.postTitle,
    this.source,
    this.date,
    required this.postTime,
  }) : super(key: key);

  final String postTitle;
  final String? source;
  final String? date;
  final String postTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            const BorderSide(color: kPrimarySwatch),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          postTitle,
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            color: kDarkGreyColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '$source • $date',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodySmall,
                            color: kDarkGreyColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      postTime,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.bodySmall,
                        color: kDarkGreyColor.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 80,
                margin: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimarySwatch,
                  // image: DecorationImage(image: AssetImage('assetName'))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}