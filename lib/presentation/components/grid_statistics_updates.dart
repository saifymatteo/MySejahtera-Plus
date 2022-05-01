import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:mysejahtera_plus/data_layers/repositories/statistics_malaysia_repositories.dart';

import '../../helper/constant.dart';
import 'card_statistics.dart';

class GridStatisticsUpdates extends StatefulWidget {
  const GridStatisticsUpdates({Key? key, required this.time}) : super(key: key);

  final String time;

  @override
  State<GridStatisticsUpdates> createState() => _GridStatisticsUpdatesState();
}

class _GridStatisticsUpdatesState extends State<GridStatisticsUpdates> {
  final StatisticsDataMalaysiaRepositories repo =
      StatisticsDataMalaysiaRepositories();

  dynamic dataFuture;

  @override
  void initState() {
    dataFuture = repo.fetchMalaysiaData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: dataFuture,
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
                plusOrMinus:
                    snapshot.data![0].cardConfirmedModel.caseConfirmedPlus,
                numberTodayText:
                    snapshot.data![0].cardConfirmedModel.caseConfirmedToday,
                iconArrow:
                    snapshot.data![0].cardConfirmedModel.caseConfirmedArrow,
                percentage:
                    snapshot.data![0].cardConfirmedModel.caseConfirmedPercent,
                date: widget.time,
              ),
              CardStatistics(
                cardColor: kStatisticGreen,
                header: 'Total Recovered',
                totalText: snapshot.data![1].cardRecoveredModel.caseRecovered,
                plusOrMinus:
                    snapshot.data![1].cardRecoveredModel.caseRecoveredPlus,
                numberTodayText:
                    snapshot.data![1].cardRecoveredModel.caseRecoveredToday,
                iconArrow:
                    snapshot.data![1].cardRecoveredModel.caseRecoveredArrow,
                percentage:
                    snapshot.data![1].cardRecoveredModel.caseRecoveredPercent,
                date: widget.time,
              ),
              CardStatistics(
                cardColor: kStatisticGrey,
                header: 'Total Death',
                totalText: snapshot.data![2].cardDeathModel.caseDeath,
                plusOrMinus: snapshot.data![2].cardDeathModel.caseDeathPlus,
                numberTodayText:
                    snapshot.data![2].cardDeathModel.caseDeathToday,
                iconArrow: snapshot.data![2].cardDeathModel.caseDeathArrow,
                percentage: snapshot.data![2].cardDeathModel.caseDeathPercent,
                date: widget.time,
              ),
              CardStatistics(
                cardColor: kStatisticOrange,
                header: 'Total Active Cases',
                totalText: snapshot.data![3].cardActiveModel.caseActive,
                plusOrMinus: snapshot.data![3].cardActiveModel.caseActivePlus,
                numberTodayText:
                    snapshot.data![3].cardActiveModel.caseActiveToday,
                iconArrow: snapshot.data![3].cardActiveModel.caseActiveArrow,
                percentage: snapshot.data![3].cardActiveModel.caseActivePercent,
                date: widget.time,
              ),
              const SizedBox(height: 10),
            ],
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 20),
            child: LoadingAnimationWidget.waveDots(
                color: kPrimarySwatch, size: 50),
          );
        } else if (snapshot.hasError) {
          return Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Error: ${snapshot.error}',
              style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodySmall),
            ),
          );
        } else {
          return Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Error, try to restart the app',
              style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodySmall),
            ),
          );
        }
      },
    );
  }
}
