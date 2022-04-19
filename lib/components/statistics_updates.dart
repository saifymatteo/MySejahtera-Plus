import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/models/statistics_model.dart';

import '../helper/constant.dart';
import 'card_statistics.dart';

class StatisticsUpdates extends StatefulWidget {
  const StatisticsUpdates({
    Key? key,
  }) : super(key: key);

  @override
  State<StatisticsUpdates> createState() => _StatisticsUpdatesState();
}

class _StatisticsUpdatesState extends State<StatisticsUpdates> {
  StatisticsDataUpdates data = StatisticsDataUpdates();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      crossAxisCount: 2,
      childAspectRatio: 4 / 4,
      children: [
        CardStatistics(
          cardColor: kStatisticRed,
          header: 'Total Confirmed Cases',
          totalText: data.caseConfirmed,
          plusOrMinus: data.caseConfirmedPlus,
          numberTodayText: data.caseConfirmedToday,
          iconArrow: data.caseConfirmedArrow,
          percentage: data.caseConfirmedPercent,
          date: '29 Jan, 2022, 11:59 PM',
        ),
        CardStatistics(
          cardColor: kStatisticGreen,
          header: 'Total Recovered',
          totalText: data.caseRecovered,
          plusOrMinus: data.caseRecoveredPlus,
          numberTodayText: data.caseRecoveredToday,
          iconArrow: data.caseRecoveredArrow,
          percentage: data.caseRecoveredPercent,
          date: '29 Jan, 2022, 11:59 PM',
        ),
        CardStatistics(
          cardColor: kStatisticGrey,
          header: 'Total Death',
          totalText: data.caseDeath,
          plusOrMinus: data.caseDeathPlus,
          numberTodayText: data.caseDeathToday,
          iconArrow: data.caseDeathArrow,
          percentage: data.caseDeathPercent,
          date: '29 Jan, 2022, 11:59 PM',
        ),
        CardStatistics(
          cardColor: kStatisticOrange,
          header: 'Total Active Cases',
          totalText: data.caseActive,
          plusOrMinus: data.caseActivePlus,
          numberTodayText: data.caseActiveToday,
          iconArrow: data.caseActiveArrow,
          percentage: data.caseActivePercent,
          date: '29 Jan, 2022, 11:59 PM',
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
