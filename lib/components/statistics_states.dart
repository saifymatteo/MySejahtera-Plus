import 'package:flutter/material.dart';
import 'package:mysejahtera_plus/models/statistics_model.dart';

import '../helper/constant.dart';
import 'statistics_states_items.dart';

class StatisticsStates extends StatefulWidget {
  const StatisticsStates({
    Key? key,
  }) : super(key: key);

  @override
  State<StatisticsStates> createState() => _StatisticsStatesState();
}

class _StatisticsStatesState extends State<StatisticsStates> {
  StatisticsDataStates johor = StatisticsDataStates();
  StatisticsDataStates kedah = StatisticsDataStates();
  StatisticsDataStates kelantan = StatisticsDataStates();
  StatisticsDataStates melaka = StatisticsDataStates();
  StatisticsDataStates negeriSembilan = StatisticsDataStates();
  StatisticsDataStates pahang = StatisticsDataStates();
  StatisticsDataStates perak = StatisticsDataStates();
  StatisticsDataStates perlis = StatisticsDataStates();
  StatisticsDataStates pulauPinang = StatisticsDataStates();
  StatisticsDataStates sabah = StatisticsDataStates();
  StatisticsDataStates sarawak = StatisticsDataStates();
  StatisticsDataStates selangor = StatisticsDataStates();
  StatisticsDataStates terengganu = StatisticsDataStates();
  StatisticsDataStates kualaLumpur = StatisticsDataStates();
  StatisticsDataStates labuan = StatisticsDataStates();
  StatisticsDataStates putrajaya = StatisticsDataStates();

  @override
  void initState() {
    johor.updateData('Johor');
    kedah.updateData('Kedah');
    kelantan.updateData('Kelantan');
    melaka.updateData('Melaka');
    negeriSembilan.updateData('Negeri Sembilan');
    pahang.updateData('Pahang');
    perak.updateData('Perak');
    perlis.updateData('Perlis');
    pulauPinang.updateData('Pulau Pinang');
    sabah.updateData('Sabah');
    sarawak.updateData('Sarawak');
    selangor.updateData('Selangor');
    terengganu.updateData('Terengganu');
    kualaLumpur.updateData('W.P. Kuala Lumpur');
    labuan.updateData('W.P. Labuan');
    putrajaya.updateData('W.P. Putrajaya');
    super.initState();
  }

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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: johor.caseRecovered,
          topRightPlusOrMinus: johor.caseRecoveredPlus,
          topRightTodayText: johor.caseRecoveredToday,
          topRightUpOrDown: johor.caseRecoveredArrow,
          topRightPercentage: johor.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: johor.caseDeath,
          bottomLeftPlusOrMinus: johor.caseDeathPlus,
          bottomLeftTodayText: johor.caseDeathToday,
          bottomLeftUpOrDown: johor.caseDeathArrow,
          bottomLeftPercentage: johor.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: johor.caseActive,
          bottomRightPlusOrMinus: johor.caseActivePlus,
          bottomRightTodayText: johor.caseActiveToday,
          bottomRightUpOrDown: johor.caseActiveArrow,
          bottomRightPercentage: johor.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: kedah.caseRecovered,
          topRightPlusOrMinus: kedah.caseRecoveredPlus,
          topRightTodayText: kedah.caseRecoveredToday,
          topRightUpOrDown: kedah.caseRecoveredArrow,
          topRightPercentage: kedah.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: kedah.caseDeath,
          bottomLeftPlusOrMinus: kedah.caseDeathPlus,
          bottomLeftTodayText: kedah.caseDeathToday,
          bottomLeftUpOrDown: kedah.caseDeathArrow,
          bottomLeftPercentage: kedah.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: kedah.caseActive,
          bottomRightPlusOrMinus: kedah.caseActivePlus,
          bottomRightTodayText: kedah.caseActiveToday,
          bottomRightUpOrDown: kedah.caseActiveArrow,
          bottomRightPercentage: kedah.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: kelantan.caseRecovered,
          topRightPlusOrMinus: kelantan.caseRecoveredPlus,
          topRightTodayText: kelantan.caseRecoveredToday,
          topRightUpOrDown: kelantan.caseRecoveredArrow,
          topRightPercentage: kelantan.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: kelantan.caseDeath,
          bottomLeftPlusOrMinus: kelantan.caseDeathPlus,
          bottomLeftTodayText: kelantan.caseDeathToday,
          bottomLeftUpOrDown: kelantan.caseDeathArrow,
          bottomLeftPercentage: kelantan.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: kelantan.caseActive,
          bottomRightPlusOrMinus: kelantan.caseActivePlus,
          bottomRightTodayText: kelantan.caseActiveToday,
          bottomRightUpOrDown: kelantan.caseActiveArrow,
          bottomRightPercentage: kelantan.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: melaka.caseRecovered,
          topRightPlusOrMinus: melaka.caseRecoveredPlus,
          topRightTodayText: melaka.caseRecoveredToday,
          topRightUpOrDown: melaka.caseRecoveredArrow,
          topRightPercentage: melaka.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: melaka.caseDeath,
          bottomLeftPlusOrMinus: melaka.caseDeathPlus,
          bottomLeftTodayText: melaka.caseDeathToday,
          bottomLeftUpOrDown: melaka.caseDeathArrow,
          bottomLeftPercentage: melaka.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: melaka.caseActive,
          bottomRightPlusOrMinus: melaka.caseActivePlus,
          bottomRightTodayText: melaka.caseActiveToday,
          bottomRightUpOrDown: melaka.caseActiveArrow,
          bottomRightPercentage: melaka.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: negeriSembilan.caseRecovered,
          topRightPlusOrMinus: negeriSembilan.caseRecoveredPlus,
          topRightTodayText: negeriSembilan.caseRecoveredToday,
          topRightUpOrDown: negeriSembilan.caseRecoveredArrow,
          topRightPercentage: negeriSembilan.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: negeriSembilan.caseDeath,
          bottomLeftPlusOrMinus: negeriSembilan.caseDeathPlus,
          bottomLeftTodayText: negeriSembilan.caseDeathToday,
          bottomLeftUpOrDown: negeriSembilan.caseDeathArrow,
          bottomLeftPercentage: negeriSembilan.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: negeriSembilan.caseActive,
          bottomRightPlusOrMinus: negeriSembilan.caseActivePlus,
          bottomRightTodayText: negeriSembilan.caseActiveToday,
          bottomRightUpOrDown: negeriSembilan.caseActiveArrow,
          bottomRightPercentage: negeriSembilan.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: pahang.caseRecovered,
          topRightPlusOrMinus: pahang.caseRecoveredPlus,
          topRightTodayText: pahang.caseRecoveredToday,
          topRightUpOrDown: pahang.caseRecoveredArrow,
          topRightPercentage: pahang.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: pahang.caseDeath,
          bottomLeftPlusOrMinus: pahang.caseDeathPlus,
          bottomLeftTodayText: pahang.caseDeathToday,
          bottomLeftUpOrDown: pahang.caseDeathArrow,
          bottomLeftPercentage: pahang.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: pahang.caseActive,
          bottomRightPlusOrMinus: pahang.caseActivePlus,
          bottomRightTodayText: pahang.caseActiveToday,
          bottomRightUpOrDown: pahang.caseActiveArrow,
          bottomRightPercentage: pahang.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: pulauPinang.caseRecovered,
          topRightPlusOrMinus: pulauPinang.caseRecoveredPlus,
          topRightTodayText: pulauPinang.caseRecoveredToday,
          topRightUpOrDown: pulauPinang.caseRecoveredArrow,
          topRightPercentage: pulauPinang.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: pulauPinang.caseDeath,
          bottomLeftPlusOrMinus: pulauPinang.caseDeathPlus,
          bottomLeftTodayText: pulauPinang.caseDeathToday,
          bottomLeftUpOrDown: pulauPinang.caseDeathArrow,
          bottomLeftPercentage: pulauPinang.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: pulauPinang.caseActive,
          bottomRightPlusOrMinus: pulauPinang.caseActivePlus,
          bottomRightTodayText: pulauPinang.caseActiveToday,
          bottomRightUpOrDown: pulauPinang.caseActiveArrow,
          bottomRightPercentage: pulauPinang.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: perak.caseRecovered,
          topRightPlusOrMinus: perak.caseRecoveredPlus,
          topRightTodayText: perak.caseRecoveredToday,
          topRightUpOrDown: perak.caseRecoveredArrow,
          topRightPercentage: perak.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: perak.caseDeath,
          bottomLeftPlusOrMinus: perak.caseDeathPlus,
          bottomLeftTodayText: perak.caseDeathToday,
          bottomLeftUpOrDown: perak.caseDeathArrow,
          bottomLeftPercentage: perak.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: perak.caseActive,
          bottomRightPlusOrMinus: perak.caseActivePlus,
          bottomRightTodayText: perak.caseActiveToday,
          bottomRightUpOrDown: perak.caseActiveArrow,
          bottomRightPercentage: perak.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: perlis.caseRecovered,
          topRightPlusOrMinus: perlis.caseRecoveredPlus,
          topRightTodayText: perlis.caseRecoveredToday,
          topRightUpOrDown: perlis.caseRecoveredArrow,
          topRightPercentage: perlis.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: perlis.caseDeath,
          bottomLeftPlusOrMinus: perlis.caseDeathPlus,
          bottomLeftTodayText: perlis.caseDeathToday,
          bottomLeftUpOrDown: perlis.caseDeathArrow,
          bottomLeftPercentage: perlis.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: perlis.caseActive,
          bottomRightPlusOrMinus: perlis.caseActivePlus,
          bottomRightTodayText: perlis.caseActiveToday,
          bottomRightUpOrDown: perlis.caseActiveArrow,
          bottomRightPercentage: perlis.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: sabah.caseRecovered,
          topRightPlusOrMinus: sabah.caseRecoveredPlus,
          topRightTodayText: sabah.caseRecoveredToday,
          topRightUpOrDown: sabah.caseRecoveredArrow,
          topRightPercentage: sabah.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: sabah.caseDeath,
          bottomLeftPlusOrMinus: sabah.caseDeathPlus,
          bottomLeftTodayText: sabah.caseDeathToday,
          bottomLeftUpOrDown: sabah.caseDeathArrow,
          bottomLeftPercentage: sabah.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: sabah.caseActive,
          bottomRightPlusOrMinus: sabah.caseActivePlus,
          bottomRightTodayText: sabah.caseActiveToday,
          bottomRightUpOrDown: sabah.caseActiveArrow,
          bottomRightPercentage: sabah.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: sarawak.caseRecovered,
          topRightPlusOrMinus: sarawak.caseRecoveredPlus,
          topRightTodayText: sarawak.caseRecoveredToday,
          topRightUpOrDown: sarawak.caseRecoveredArrow,
          topRightPercentage: sarawak.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: sarawak.caseDeath,
          bottomLeftPlusOrMinus: sarawak.caseDeathPlus,
          bottomLeftTodayText: sarawak.caseDeathToday,
          bottomLeftUpOrDown: sarawak.caseDeathArrow,
          bottomLeftPercentage: sarawak.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: sarawak.caseActive,
          bottomRightPlusOrMinus: sarawak.caseActivePlus,
          bottomRightTodayText: sarawak.caseActiveToday,
          bottomRightUpOrDown: sarawak.caseActiveArrow,
          bottomRightPercentage: sarawak.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: selangor.caseRecovered,
          topRightPlusOrMinus: selangor.caseRecoveredPlus,
          topRightTodayText: selangor.caseRecoveredToday,
          topRightUpOrDown: selangor.caseRecoveredArrow,
          topRightPercentage: selangor.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: selangor.caseDeath,
          bottomLeftPlusOrMinus: selangor.caseDeathPlus,
          bottomLeftTodayText: selangor.caseDeathToday,
          bottomLeftUpOrDown: selangor.caseDeathArrow,
          bottomLeftPercentage: selangor.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: selangor.caseActive,
          bottomRightPlusOrMinus: selangor.caseActivePlus,
          bottomRightTodayText: selangor.caseActiveToday,
          bottomRightUpOrDown: selangor.caseActiveArrow,
          bottomRightPercentage: selangor.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: terengganu.caseRecovered,
          topRightPlusOrMinus: terengganu.caseRecoveredPlus,
          topRightTodayText: terengganu.caseRecoveredToday,
          topRightUpOrDown: terengganu.caseRecoveredArrow,
          topRightPercentage: terengganu.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: terengganu.caseDeath,
          bottomLeftPlusOrMinus: terengganu.caseDeathPlus,
          bottomLeftTodayText: terengganu.caseDeathToday,
          bottomLeftUpOrDown: terengganu.caseDeathArrow,
          bottomLeftPercentage: terengganu.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: terengganu.caseActive,
          bottomRightPlusOrMinus: terengganu.caseActivePlus,
          bottomRightTodayText: terengganu.caseActiveToday,
          bottomRightUpOrDown: terengganu.caseActiveArrow,
          bottomRightPercentage: terengganu.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: kualaLumpur.caseRecovered,
          topRightPlusOrMinus: kualaLumpur.caseRecoveredPlus,
          topRightTodayText: kualaLumpur.caseRecoveredToday,
          topRightUpOrDown: kualaLumpur.caseRecoveredArrow,
          topRightPercentage: kualaLumpur.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: kualaLumpur.caseDeath,
          bottomLeftPlusOrMinus: kualaLumpur.caseDeathPlus,
          bottomLeftTodayText: kualaLumpur.caseDeathToday,
          bottomLeftUpOrDown: kualaLumpur.caseDeathArrow,
          bottomLeftPercentage: kualaLumpur.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: kualaLumpur.caseActive,
          bottomRightPlusOrMinus: kualaLumpur.caseActivePlus,
          bottomRightTodayText: kualaLumpur.caseActiveToday,
          bottomRightUpOrDown: kualaLumpur.caseActiveArrow,
          bottomRightPercentage: kualaLumpur.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: labuan.caseRecovered,
          topRightPlusOrMinus: labuan.caseRecoveredPlus,
          topRightTodayText: labuan.caseRecoveredToday,
          topRightUpOrDown: labuan.caseRecoveredArrow,
          topRightPercentage: labuan.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: labuan.caseDeath,
          bottomLeftPlusOrMinus: labuan.caseDeathPlus,
          bottomLeftTodayText: labuan.caseDeathToday,
          bottomLeftUpOrDown: labuan.caseDeathArrow,
          bottomLeftPercentage: labuan.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: labuan.caseActive,
          bottomRightPlusOrMinus: labuan.caseActivePlus,
          bottomRightTodayText: labuan.caseActiveToday,
          bottomRightUpOrDown: labuan.caseActiveArrow,
          bottomRightPercentage: labuan.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
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
          topLeftDate: '29 Jan, 2022, 11:59 PM',
          // TOP RIGHT
          topRightColor: kStatisticGreen,
          topRightHeader: 'Total Recovered',
          topRightTotalText: putrajaya.caseRecovered,
          topRightPlusOrMinus: putrajaya.caseRecoveredPlus,
          topRightTodayText: putrajaya.caseRecoveredToday,
          topRightUpOrDown: putrajaya.caseRecoveredArrow,
          topRightPercentage: putrajaya.caseRecoveredPercent,
          topRightDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM LEFT
          bottomLeftColor: kStatisticGrey,
          bottomLeftHeader: 'Total Death',
          bottomLeftTotalText: putrajaya.caseDeath,
          bottomLeftPlusOrMinus: putrajaya.caseDeathPlus,
          bottomLeftTodayText: putrajaya.caseDeathToday,
          bottomLeftUpOrDown: putrajaya.caseDeathArrow,
          bottomLeftPercentage: putrajaya.caseDeathPercent,
          bottomLeftDate: '29 Jan, 2022, 11:59 PM',
          // BOTTOM RIGHT
          bottomRightColor: kStatisticOrange,
          bottomRightHeader: 'Total Active Cases',
          bottomRightTotalText: putrajaya.caseActive,
          bottomRightPlusOrMinus: putrajaya.caseActivePlus,
          bottomRightTodayText: putrajaya.caseActiveToday,
          bottomRightUpOrDown: putrajaya.caseActiveArrow,
          bottomRightPercentage: putrajaya.caseActivePercent,
          bottomRightDate: '29 Jan, 2022, 11:59 PM',
        ),
      ],
    );
  }
}
