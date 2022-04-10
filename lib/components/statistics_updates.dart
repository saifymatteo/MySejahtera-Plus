import 'package:flutter/material.dart';

import '../helper/constant.dart';
import 'card_statistics.dart';

class StatisticsUpdates extends StatelessWidget {
  const StatisticsUpdates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      crossAxisCount: 2,
      childAspectRatio: 4 / 4,
      children: const [
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
        SizedBox(height: 10),
      ],
    );
  }
}
