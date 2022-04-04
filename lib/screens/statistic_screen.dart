import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mysejahtera_plus/helper/constant.dart';
import 'package:intl/intl.dart';

import '../components/button_outline.dart';
import '../components/text_title.dart';

class StatisticScreen extends StatelessWidget {
  StatisticScreen({Key? key}) : super(key: key);

  // TODO: Rework on the date later
  final DateTime currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TODO: Implement global variable for date.
            Text(
              DateFormat('MMMM d, EEEE').format(currentDate),
              style: TextStyle(color: kPrimarySwatch),
            ),
            const TextTitle(
              title: 'Statistics',
            ),
          ],
        ),
        Container(
          height: 40,
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              ButtonOutline(text: 'Covid-19 Update'),
              ButtonOutline(text: 'Covid-19 States'),
              ButtonOutline(text: 'Covid-19 Global'),
            ],
          ),
        ),
        SizedBox(
          height: 390,
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              CardStatistics(
                cardColor: kStatisticRed,
                header: 'Total Confirmed Cases',
                totalText: '2,323,478',
                plusOrMinus: Icons.add_rounded,
                numberTodayText: '9751',
                upOrDown: Icons.arrow_downward_rounded,
                percentage: '12',
                date: '29 Jan, 2022, 11:59 PM',
              ),
              CardStatistics(
                cardColor: kStatisticGreen,
                header: 'Total Recovered',
                totalText: '2,170,288',
                plusOrMinus: Icons.add_rounded,
                numberTodayText: '12723',
                upOrDown: Icons.arrow_upward_rounded,
                percentage: '8',
                date: '29 Jan, 2022, 11:59 PM',
              ),
              CardStatistics(
                cardColor: kStatisticGrey,
                header: 'Total Death',
                totalText: '27,191',
                plusOrMinus: Icons.add_rounded,
                numberTodayText: '78',
                upOrDown: Icons.arrow_downward_rounded,
                percentage: '3',
                date: '29 Jan, 2022, 11:59 PM',
              ),
              CardStatistics(
                cardColor: kStatisticOrange,
                header: 'Total Active Cases',
                totalText: '125,999',
                plusOrMinus: Icons.remove_rounded,
                numberTodayText: '9751',
                upOrDown: Icons.arrow_upward_rounded,
                percentage: '12',
                date: '29 Jan, 2022, 11:59 PM',
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'More info can be found on the',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                    fontWeight: FontWeight.w600,
                    color: kDarkGreyColor,
                  ),
                ),
                TextSpan(
                  text: ' COVIDNOW ',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      debugPrint('onTap: TextSpan(\'COVIDNOW\')');
                    },
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                    fontWeight: FontWeight.w600,
                    color: kPrimarySwatch,
                  ),
                ),
                TextSpan(
                  text: 'website',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodySmall,
                    fontWeight: FontWeight.w600,
                    color: kDarkGreyColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

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
      elevation: 5,
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
