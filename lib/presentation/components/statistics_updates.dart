import 'package:flutter/material.dart';

import '../../data_layers/models/statistics_model.dart';
import '../../helper/constant.dart';
import 'card_statistics.dart';

class StatisticsUpdates extends StatefulWidget {
  const StatisticsUpdates({
    Key? key,
    required this.time,
  }) : super(key: key);

  final String time;

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
          date: widget.time,
        ),
        CardStatistics(
          cardColor: kStatisticGreen,
          header: 'Total Recovered',
          totalText: data.caseRecovered,
          plusOrMinus: data.caseRecoveredPlus,
          numberTodayText: data.caseRecoveredToday,
          iconArrow: data.caseRecoveredArrow,
          percentage: data.caseRecoveredPercent,
          date: widget.time,
        ),
        CardStatistics(
          cardColor: kStatisticGrey,
          header: widget.time,
          totalText: data.caseDeath,
          plusOrMinus: data.caseDeathPlus,
          numberTodayText: data.caseDeathToday,
          iconArrow: data.caseDeathArrow,
          percentage: data.caseDeathPercent,
          date: widget.time,
        ),
        CardStatistics(
          cardColor: kStatisticOrange,
          header: widget.time,
          totalText: data.caseActive,
          plusOrMinus: data.caseActivePlus,
          numberTodayText: data.caseActiveToday,
          iconArrow: data.caseActiveArrow,
          percentage: data.caseActivePercent,
          date: widget.time,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
