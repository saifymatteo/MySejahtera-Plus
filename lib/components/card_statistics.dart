import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/constant.dart';

class CardStatistics extends StatelessWidget {
  const CardStatistics({
    Key? key,
    required this.header,
    required this.totalText,
    required this.plusOrMinus,
    required this.numberTodayText,
    required this.upOrDown,
    required this.percentage,
    required this.date,
    required this.cardColor,
  }) : super(key: key);

  final Color cardColor;
  final String header;
  final String totalText;
  final IconData plusOrMinus;
  final String numberTodayText;
  final IconData upOrDown;
  final String percentage;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.5,
      color: cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              header,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodySmall,
                color: kWhiteColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      totalText,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.headlineMedium,
                        fontWeight: FontWeight.w600,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            plusOrMinus,
                            size: 16,
                            color: kWhiteColor,
                          ),
                        ),
                        TextSpan(
                          text: ' $numberTodayText today',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodySmall,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            upOrDown,
                            size: 16,
                          ),
                        ),
                        TextSpan(
                          text: ' $percentage% from yesterday',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.bodySmall,
                            color: kDarkGreyColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'As of $date',
              textScaleFactor: 0.8,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.bodySmall,
                color: kWhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
