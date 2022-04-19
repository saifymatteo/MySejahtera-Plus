import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data_layers/models/date_and_time_model.dart';
import '../../helper/constant.dart';
import '../components/button_outline.dart';
import '../components/statistics_global.dart';
import '../components/statistics_states.dart';
import '../components/statistics_updates.dart';
import '../components/text_title.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({Key? key}) : super(key: key);

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  final DateAndTime currentTime = DateAndTime();

  // TODO: Rework on the date later
  // final DateTime currentDate = DateTime.now();

  int statisticsIndex = 0;
  bool isUpdate = true;
  bool isStates = false;
  bool isGlobal = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // TODO: Implement global variable for date.
              Text(
                // DateFormat('MMMM d, EEEE').format(currentDate),
                currentTime.dateAndDay,
                style: const TextStyle(color: kPrimarySwatch),
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
              children: [
                ButtonOutline(
                  text: 'Covid-19 Update',
                  isSelected: isUpdate,
                  onPressed: () {
                    setState(() {
                      statisticsIndex = 0;
                      isUpdate = true;
                      isStates = false;
                      isGlobal = false;
                    });
                  },
                ),
                ButtonOutline(
                  text: 'Covid-19 States',
                  isSelected: isStates,
                  onPressed: () {
                    setState(() {
                      statisticsIndex = 1;
                      isUpdate = false;
                      isStates = true;
                      isGlobal = false;
                    });
                  },
                ),
                ButtonOutline(
                  text: 'Covid-19 Global',
                  isSelected: isGlobal,
                  onPressed: () {
                    setState(() {
                      statisticsIndex = 2;
                      isUpdate = false;
                      isStates = false;
                      isGlobal = true;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: statisticsIndex,
              children: const [
                StatisticsUpdates(),
                StatisticsStates(),
                StatisticsGlobal()
              ],
            ),
          ),
          Container(
            height: 40,
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
                        debugPrint('https://covidnow.moh.gov.my/');
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
      ),
    );
  }
}
