import 'package:flutter/material.dart';

import '../../data_layers/models/statistics_model.dart';
import '../../helper/constant.dart';
import 'grid_statistics_states_items.dart';

class GridStatisticsStates extends StatefulWidget {
  const GridStatisticsStates({
    Key? key,
    required this.time
  }) : super(key: key);

  final String time;

  @override
  State<GridStatisticsStates> createState() => _GridStatisticsStatesState();
}

class _GridStatisticsStatesState extends State<GridStatisticsStates> {
  
  StatisticsDataStates johor = StatisticsDataStates('Johor');
  StatisticsDataStates kedah = StatisticsDataStates('Kedah');
  StatisticsDataStates kelantan = StatisticsDataStates('Kelantan');
  StatisticsDataStates melaka = StatisticsDataStates('Melaka');
  StatisticsDataStates negeriSembilan = StatisticsDataStates('Negeri Sembilan');
  StatisticsDataStates pahang = StatisticsDataStates('Pahang');
  StatisticsDataStates perak = StatisticsDataStates('Perak');
  StatisticsDataStates perlis = StatisticsDataStates('Perlis');
  StatisticsDataStates pulauPinang = StatisticsDataStates('Pulau Pinang');
  StatisticsDataStates sabah = StatisticsDataStates('Sabah');
  StatisticsDataStates sarawak = StatisticsDataStates('Sarawak');
  StatisticsDataStates selangor = StatisticsDataStates('Selangor');
  StatisticsDataStates terengganu = StatisticsDataStates('Terengganu');
  StatisticsDataStates kualaLumpur = StatisticsDataStates('W.P. Kuala Lumpur');
  StatisticsDataStates labuan = StatisticsDataStates('W.P. Labuan');
  StatisticsDataStates putrajaya = StatisticsDataStates('W.P. Putrajaya');

  // TODO: Use FutureBuilder for the data

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StatisticsStatesItems(
          titleText: 'Johor',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: johor.caseConfirmed,
          topLeftPlusOrMinus: johor.caseConfirmedPlus,
          topLeftTodayText: johor.caseConfirmedToday,
          topLeftUpOrDown: johor.caseConfirmedArrow,
          topLeftPercentage: johor.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: johor.caseRecovered,
          topRightPlusOrMinus: johor.caseRecoveredPlus,
          topRightTodayText: johor.caseRecoveredToday,
          topRightUpOrDown: johor.caseRecoveredArrow,
          topRightPercentage: johor.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: johor.caseDeath,
          bottomLeftPlusOrMinus: johor.caseDeathPlus,
          bottomLeftTodayText: johor.caseDeathToday,
          bottomLeftUpOrDown: johor.caseDeathArrow,
          bottomLeftPercentage: johor.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: johor.caseActive,
          bottomRightPlusOrMinus: johor.caseActivePlus,
          bottomRightTodayText: johor.caseActiveToday,
          bottomRightUpOrDown: johor.caseActiveArrow,
          bottomRightPercentage: johor.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Kedah',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: kedah.caseConfirmed,
          topLeftPlusOrMinus: kedah.caseConfirmedPlus,
          topLeftTodayText: kedah.caseConfirmedToday,
          topLeftUpOrDown: kedah.caseConfirmedArrow,
          topLeftPercentage: kedah.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: kedah.caseRecovered,
          topRightPlusOrMinus: kedah.caseRecoveredPlus,
          topRightTodayText: kedah.caseRecoveredToday,
          topRightUpOrDown: kedah.caseRecoveredArrow,
          topRightPercentage: kedah.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: kedah.caseDeath,
          bottomLeftPlusOrMinus: kedah.caseDeathPlus,
          bottomLeftTodayText: kedah.caseDeathToday,
          bottomLeftUpOrDown: kedah.caseDeathArrow,
          bottomLeftPercentage: kedah.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: kedah.caseActive,
          bottomRightPlusOrMinus: kedah.caseActivePlus,
          bottomRightTodayText: kedah.caseActiveToday,
          bottomRightUpOrDown: kedah.caseActiveArrow,
          bottomRightPercentage: kedah.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Kelantan',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: kelantan.caseConfirmed,
          topLeftPlusOrMinus: kelantan.caseConfirmedPlus,
          topLeftTodayText: kelantan.caseConfirmedToday,
          topLeftUpOrDown: kelantan.caseConfirmedArrow,
          topLeftPercentage: kelantan.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: kelantan.caseRecovered,
          topRightPlusOrMinus: kelantan.caseRecoveredPlus,
          topRightTodayText: kelantan.caseRecoveredToday,
          topRightUpOrDown: kelantan.caseRecoveredArrow,
          topRightPercentage: kelantan.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: kelantan.caseDeath,
          bottomLeftPlusOrMinus: kelantan.caseDeathPlus,
          bottomLeftTodayText: kelantan.caseDeathToday,
          bottomLeftUpOrDown: kelantan.caseDeathArrow,
          bottomLeftPercentage: kelantan.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: kelantan.caseActive,
          bottomRightPlusOrMinus: kelantan.caseActivePlus,
          bottomRightTodayText: kelantan.caseActiveToday,
          bottomRightUpOrDown: kelantan.caseActiveArrow,
          bottomRightPercentage: kelantan.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Malacca',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: melaka.caseConfirmed,
          topLeftPlusOrMinus: melaka.caseConfirmedPlus,
          topLeftTodayText: melaka.caseConfirmedToday,
          topLeftUpOrDown: melaka.caseConfirmedArrow,
          topLeftPercentage: melaka.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: melaka.caseRecovered,
          topRightPlusOrMinus: melaka.caseRecoveredPlus,
          topRightTodayText: melaka.caseRecoveredToday,
          topRightUpOrDown: melaka.caseRecoveredArrow,
          topRightPercentage: melaka.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: melaka.caseDeath,
          bottomLeftPlusOrMinus: melaka.caseDeathPlus,
          bottomLeftTodayText: melaka.caseDeathToday,
          bottomLeftUpOrDown: melaka.caseDeathArrow,
          bottomLeftPercentage: melaka.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: melaka.caseActive,
          bottomRightPlusOrMinus: melaka.caseActivePlus,
          bottomRightTodayText: melaka.caseActiveToday,
          bottomRightUpOrDown: melaka.caseActiveArrow,
          bottomRightPercentage: melaka.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Negeri Sembilan',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: negeriSembilan.caseConfirmed,
          topLeftPlusOrMinus: negeriSembilan.caseConfirmedPlus,
          topLeftTodayText: negeriSembilan.caseConfirmedToday,
          topLeftUpOrDown: negeriSembilan.caseConfirmedArrow,
          topLeftPercentage: negeriSembilan.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: negeriSembilan.caseRecovered,
          topRightPlusOrMinus: negeriSembilan.caseRecoveredPlus,
          topRightTodayText: negeriSembilan.caseRecoveredToday,
          topRightUpOrDown: negeriSembilan.caseRecoveredArrow,
          topRightPercentage: negeriSembilan.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: negeriSembilan.caseDeath,
          bottomLeftPlusOrMinus: negeriSembilan.caseDeathPlus,
          bottomLeftTodayText: negeriSembilan.caseDeathToday,
          bottomLeftUpOrDown: negeriSembilan.caseDeathArrow,
          bottomLeftPercentage: negeriSembilan.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: negeriSembilan.caseActive,
          bottomRightPlusOrMinus: negeriSembilan.caseActivePlus,
          bottomRightTodayText: negeriSembilan.caseActiveToday,
          bottomRightUpOrDown: negeriSembilan.caseActiveArrow,
          bottomRightPercentage: negeriSembilan.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Pahang',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: pahang.caseConfirmed,
          topLeftPlusOrMinus: pahang.caseConfirmedPlus,
          topLeftTodayText: pahang.caseConfirmedToday,
          topLeftUpOrDown: pahang.caseConfirmedArrow,
          topLeftPercentage: pahang.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: pahang.caseRecovered,
          topRightPlusOrMinus: pahang.caseRecoveredPlus,
          topRightTodayText: pahang.caseRecoveredToday,
          topRightUpOrDown: pahang.caseRecoveredArrow,
          topRightPercentage: pahang.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: pahang.caseDeath,
          bottomLeftPlusOrMinus: pahang.caseDeathPlus,
          bottomLeftTodayText: pahang.caseDeathToday,
          bottomLeftUpOrDown: pahang.caseDeathArrow,
          bottomLeftPercentage: pahang.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: pahang.caseActive,
          bottomRightPlusOrMinus: pahang.caseActivePlus,
          bottomRightTodayText: pahang.caseActiveToday,
          bottomRightUpOrDown: pahang.caseActiveArrow,
          bottomRightPercentage: pahang.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Penang',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: pulauPinang.caseConfirmed,
          topLeftPlusOrMinus: pulauPinang.caseConfirmedPlus,
          topLeftTodayText: pulauPinang.caseConfirmedToday,
          topLeftUpOrDown: pulauPinang.caseConfirmedArrow,
          topLeftPercentage: pulauPinang.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: pulauPinang.caseRecovered,
          topRightPlusOrMinus: pulauPinang.caseRecoveredPlus,
          topRightTodayText: pulauPinang.caseRecoveredToday,
          topRightUpOrDown: pulauPinang.caseRecoveredArrow,
          topRightPercentage: pulauPinang.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: pulauPinang.caseDeath,
          bottomLeftPlusOrMinus: pulauPinang.caseDeathPlus,
          bottomLeftTodayText: pulauPinang.caseDeathToday,
          bottomLeftUpOrDown: pulauPinang.caseDeathArrow,
          bottomLeftPercentage: pulauPinang.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: pulauPinang.caseActive,
          bottomRightPlusOrMinus: pulauPinang.caseActivePlus,
          bottomRightTodayText: pulauPinang.caseActiveToday,
          bottomRightUpOrDown: pulauPinang.caseActiveArrow,
          bottomRightPercentage: pulauPinang.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Perak',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: perak.caseConfirmed,
          topLeftPlusOrMinus: perak.caseConfirmedPlus,
          topLeftTodayText: perak.caseConfirmedToday,
          topLeftUpOrDown: perak.caseConfirmedArrow,
          topLeftPercentage: perak.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: perak.caseRecovered,
          topRightPlusOrMinus: perak.caseRecoveredPlus,
          topRightTodayText: perak.caseRecoveredToday,
          topRightUpOrDown: perak.caseRecoveredArrow,
          topRightPercentage: perak.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: perak.caseDeath,
          bottomLeftPlusOrMinus: perak.caseDeathPlus,
          bottomLeftTodayText: perak.caseDeathToday,
          bottomLeftUpOrDown: perak.caseDeathArrow,
          bottomLeftPercentage: perak.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: perak.caseActive,
          bottomRightPlusOrMinus: perak.caseActivePlus,
          bottomRightTodayText: perak.caseActiveToday,
          bottomRightUpOrDown: perak.caseActiveArrow,
          bottomRightPercentage: perak.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Perlis',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: perlis.caseConfirmed,
          topLeftPlusOrMinus: perlis.caseConfirmedPlus,
          topLeftTodayText: perlis.caseConfirmedToday,
          topLeftUpOrDown: perlis.caseConfirmedArrow,
          topLeftPercentage: perlis.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: perlis.caseRecovered,
          topRightPlusOrMinus: perlis.caseRecoveredPlus,
          topRightTodayText: perlis.caseRecoveredToday,
          topRightUpOrDown: perlis.caseRecoveredArrow,
          topRightPercentage: perlis.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: perlis.caseDeath,
          bottomLeftPlusOrMinus: perlis.caseDeathPlus,
          bottomLeftTodayText: perlis.caseDeathToday,
          bottomLeftUpOrDown: perlis.caseDeathArrow,
          bottomLeftPercentage: perlis.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: perlis.caseActive,
          bottomRightPlusOrMinus: perlis.caseActivePlus,
          bottomRightTodayText: perlis.caseActiveToday,
          bottomRightUpOrDown: perlis.caseActiveArrow,
          bottomRightPercentage: perlis.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Sabah',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: sabah.caseConfirmed,
          topLeftPlusOrMinus: sabah.caseConfirmedPlus,
          topLeftTodayText: sabah.caseConfirmedToday,
          topLeftUpOrDown: sabah.caseConfirmedArrow,
          topLeftPercentage: sabah.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: sabah.caseRecovered,
          topRightPlusOrMinus: sabah.caseRecoveredPlus,
          topRightTodayText: sabah.caseRecoveredToday,
          topRightUpOrDown: sabah.caseRecoveredArrow,
          topRightPercentage: sabah.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: sabah.caseDeath,
          bottomLeftPlusOrMinus: sabah.caseDeathPlus,
          bottomLeftTodayText: sabah.caseDeathToday,
          bottomLeftUpOrDown: sabah.caseDeathArrow,
          bottomLeftPercentage: sabah.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: sabah.caseActive,
          bottomRightPlusOrMinus: sabah.caseActivePlus,
          bottomRightTodayText: sabah.caseActiveToday,
          bottomRightUpOrDown: sabah.caseActiveArrow,
          bottomRightPercentage: sabah.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Sarawak',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: sarawak.caseConfirmed,
          topLeftPlusOrMinus: sarawak.caseConfirmedPlus,
          topLeftTodayText: sarawak.caseConfirmedToday,
          topLeftUpOrDown: sarawak.caseConfirmedArrow,
          topLeftPercentage: sarawak.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: sarawak.caseRecovered,
          topRightPlusOrMinus: sarawak.caseRecoveredPlus,
          topRightTodayText: sarawak.caseRecoveredToday,
          topRightUpOrDown: sarawak.caseRecoveredArrow,
          topRightPercentage: sarawak.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: sarawak.caseDeath,
          bottomLeftPlusOrMinus: sarawak.caseDeathPlus,
          bottomLeftTodayText: sarawak.caseDeathToday,
          bottomLeftUpOrDown: sarawak.caseDeathArrow,
          bottomLeftPercentage: sarawak.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: sarawak.caseActive,
          bottomRightPlusOrMinus: sarawak.caseActivePlus,
          bottomRightTodayText: sarawak.caseActiveToday,
          bottomRightUpOrDown: sarawak.caseActiveArrow,
          bottomRightPercentage: sarawak.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Selangor',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: selangor.caseConfirmed,
          topLeftPlusOrMinus: selangor.caseConfirmedPlus,
          topLeftTodayText: selangor.caseConfirmedToday,
          topLeftUpOrDown: selangor.caseConfirmedArrow,
          topLeftPercentage: selangor.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: selangor.caseRecovered,
          topRightPlusOrMinus: selangor.caseRecoveredPlus,
          topRightTodayText: selangor.caseRecoveredToday,
          topRightUpOrDown: selangor.caseRecoveredArrow,
          topRightPercentage: selangor.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: selangor.caseDeath,
          bottomLeftPlusOrMinus: selangor.caseDeathPlus,
          bottomLeftTodayText: selangor.caseDeathToday,
          bottomLeftUpOrDown: selangor.caseDeathArrow,
          bottomLeftPercentage: selangor.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: selangor.caseActive,
          bottomRightPlusOrMinus: selangor.caseActivePlus,
          bottomRightTodayText: selangor.caseActiveToday,
          bottomRightUpOrDown: selangor.caseActiveArrow,
          bottomRightPercentage: selangor.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'Terengganu',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: terengganu.caseConfirmed,
          topLeftPlusOrMinus: terengganu.caseConfirmedPlus,
          topLeftTodayText: terengganu.caseConfirmedToday,
          topLeftUpOrDown: terengganu.caseConfirmedArrow,
          topLeftPercentage: terengganu.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: terengganu.caseRecovered,
          topRightPlusOrMinus: terengganu.caseRecoveredPlus,
          topRightTodayText: terengganu.caseRecoveredToday,
          topRightUpOrDown: terengganu.caseRecoveredArrow,
          topRightPercentage: terengganu.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: terengganu.caseDeath,
          bottomLeftPlusOrMinus: terengganu.caseDeathPlus,
          bottomLeftTodayText: terengganu.caseDeathToday,
          bottomLeftUpOrDown: terengganu.caseDeathArrow,
          bottomLeftPercentage: terengganu.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: terengganu.caseActive,
          bottomRightPlusOrMinus: terengganu.caseActivePlus,
          bottomRightTodayText: terengganu.caseActiveToday,
          bottomRightUpOrDown: terengganu.caseActiveArrow,
          bottomRightPercentage: terengganu.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'W.P. Kuala Lumpur',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: kualaLumpur.caseConfirmed,
          topLeftPlusOrMinus: kualaLumpur.caseConfirmedPlus,
          topLeftTodayText: kualaLumpur.caseConfirmedToday,
          topLeftUpOrDown: kualaLumpur.caseConfirmedArrow,
          topLeftPercentage: kualaLumpur.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: kualaLumpur.caseRecovered,
          topRightPlusOrMinus: kualaLumpur.caseRecoveredPlus,
          topRightTodayText: kualaLumpur.caseRecoveredToday,
          topRightUpOrDown: kualaLumpur.caseRecoveredArrow,
          topRightPercentage: kualaLumpur.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: kualaLumpur.caseDeath,
          bottomLeftPlusOrMinus: kualaLumpur.caseDeathPlus,
          bottomLeftTodayText: kualaLumpur.caseDeathToday,
          bottomLeftUpOrDown: kualaLumpur.caseDeathArrow,
          bottomLeftPercentage: kualaLumpur.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: kualaLumpur.caseActive,
          bottomRightPlusOrMinus: kualaLumpur.caseActivePlus,
          bottomRightTodayText: kualaLumpur.caseActiveToday,
          bottomRightUpOrDown: kualaLumpur.caseActiveArrow,
          bottomRightPercentage: kualaLumpur.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'W.P. Labuan',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: labuan.caseConfirmed,
          topLeftPlusOrMinus: labuan.caseConfirmedPlus,
          topLeftTodayText: labuan.caseConfirmedToday,
          topLeftUpOrDown: labuan.caseConfirmedArrow,
          topLeftPercentage: labuan.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: labuan.caseRecovered,
          topRightPlusOrMinus: labuan.caseRecoveredPlus,
          topRightTodayText: labuan.caseRecoveredToday,
          topRightUpOrDown: labuan.caseRecoveredArrow,
          topRightPercentage: labuan.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: labuan.caseDeath,
          bottomLeftPlusOrMinus: labuan.caseDeathPlus,
          bottomLeftTodayText: labuan.caseDeathToday,
          bottomLeftUpOrDown: labuan.caseDeathArrow,
          bottomLeftPercentage: labuan.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: labuan.caseActive,
          bottomRightPlusOrMinus: labuan.caseActivePlus,
          bottomRightTodayText: labuan.caseActiveToday,
          bottomRightUpOrDown: labuan.caseActiveArrow,
          bottomRightPercentage: labuan.caseActivePercent,
          bottomRightDate: widget.time,
        ),
        StatisticsStatesItems(
          titleText: 'W.P. Putrajaya',
          // TOP LEFT
          topLeftColor: kStatisticRed,
          topLeftHeader: 'Total Confirmed Cases',
          topLeftTotalText: putrajaya.caseConfirmed,
          topLeftPlusOrMinus: putrajaya.caseConfirmedPlus,
          topLeftTodayText: putrajaya.caseConfirmedToday,
          topLeftUpOrDown: putrajaya.caseConfirmedArrow,
          topLeftPercentage: putrajaya.caseConfirmedPercent,
          topLeftDate: widget.time,
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: putrajaya.caseRecovered,
          topRightPlusOrMinus: putrajaya.caseRecoveredPlus,
          topRightTodayText: putrajaya.caseRecoveredToday,
          topRightUpOrDown: putrajaya.caseRecoveredArrow,
          topRightPercentage: putrajaya.caseRecoveredPercent,
          topRightDate: widget.time,
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: putrajaya.caseDeath,
          bottomLeftPlusOrMinus: putrajaya.caseDeathPlus,
          bottomLeftTodayText: putrajaya.caseDeathToday,
          bottomLeftUpOrDown: putrajaya.caseDeathArrow,
          bottomLeftPercentage: putrajaya.caseDeathPercent,
          bottomLeftDate: widget.time,
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: putrajaya.caseActive,
          bottomRightPlusOrMinus: putrajaya.caseActivePlus,
          bottomRightTodayText: putrajaya.caseActiveToday,
          bottomRightUpOrDown: putrajaya.caseActiveArrow,
          bottomRightPercentage: putrajaya.caseActivePercent,
          bottomRightDate: widget.time,
        ),
      ],
    );
  }
}