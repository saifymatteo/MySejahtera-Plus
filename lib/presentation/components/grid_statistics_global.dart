import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/data_layers/repositories/statistics_global_repositories.dart';

import '../../helper/constant.dart';
import 'card_statistics.dart';

class GridStatisticsGlobal extends StatelessWidget {
  GridStatisticsGlobal({Key? key, required this.time}) : super(key: key);

  final StatisticsDataGlobalRepositories repo = StatisticsDataGlobalRepositories();
  final String time;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: repo.fetchGlobalData(),
      builder: (context, AsyncSnapshot<List> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GridView.count(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            childAspectRatio: 4 / 4,
            children: [
              CardStatistics(
                cardColor: kStatisticRed,
                header: 'Total Confirmed Cases',
                totalText: snapshot.data![0].cardConfirmedModel.caseConfirmed,
                plusOrMinus: snapshot.data![0].cardConfirmedModel.caseConfirmedPlus,
                numberTodayText: snapshot.data![0].cardConfirmedModel.caseConfirmedToday,
                iconArrow: snapshot.data![0].cardConfirmedModel.caseConfirmedArrow,
                percentage: snapshot.data![0].cardConfirmedModel.caseConfirmedPercent,
                date: time,
              ),
              CardStatistics(
                cardColor: kStatisticGreen,
                header: 'Total Recovered',
                totalText: snapshot.data![1].cardRecoveredModel.caseRecovered,
                plusOrMinus: snapshot.data![1].cardRecoveredModel.caseRecoveredPlus,
                numberTodayText: snapshot.data![1].cardRecoveredModel.caseRecoveredToday,
                iconArrow: snapshot.data![1].cardRecoveredModel.caseRecoveredArrow,
                percentage: snapshot.data![1].cardRecoveredModel.caseRecoveredPercent,
                date: time,
              ),
              CardStatistics(
                cardColor: kStatisticGrey,
                header: 'Total Death',
                totalText: snapshot.data![2].cardDeathModel.caseDeath,
                plusOrMinus: snapshot.data![2].cardDeathModel.caseDeathPlus,
                numberTodayText: snapshot.data![2].cardDeathModel.caseDeathToday,
                iconArrow: snapshot.data![2].cardDeathModel.caseDeathArrow,
                percentage: snapshot.data![2].cardDeathModel.caseDeathPercent,
                date: time,
              ),
              CardStatistics(
                cardColor: kStatisticOrange,
                header: 'Total Active Cases',
                totalText: snapshot.data![3].cardActiveModel.caseActive,
                plusOrMinus: snapshot.data![3].cardActiveModel.caseActivePlus,
                numberTodayText: snapshot.data![3].cardActiveModel.caseActiveToday,
                iconArrow: snapshot.data![3].cardActiveModel.caseActiveArrow,
                percentage: snapshot.data![3].cardActiveModel.caseActivePercent,
                date: time,
              ),
            ],
          );
        } else {
          return Container(
            padding: const EdgeInsets.all(30),
            width: 50,
            height: 50,
            child: const CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
