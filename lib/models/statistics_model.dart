import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:intl/intl.dart';

import '../helper/csv_calculator.dart';

const urlUpdateCases =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/cases_malaysia.csv';
const urlUpdateDeath =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/deaths_malaysia.csv';
const urlStateCases =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/cases_state.csv';
const urlStateDeath =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/deaths_state.csv';

DefaultCacheManager cacheManager = DefaultCacheManager();
final numberFormatter = NumberFormat('#,##0', 'en_US');

class StatisticsDataUpdates {
  String caseConfirmed = '';
  String caseConfirmedToday = '';
  String caseConfirmedPercent = '';
  IconData caseConfirmedPlus = Icons.remove_rounded;
  IconData caseConfirmedArrow = Icons.arrow_upward_rounded;

  String caseRecovered = '';
  String caseRecoveredToday = '';
  String caseRecoveredPercent = '';
  IconData caseRecoveredPlus = Icons.remove_rounded;
  IconData caseRecoveredArrow = Icons.arrow_upward_rounded;

  String caseDeath = '';
  String caseDeathToday = '';
  String caseDeathPercent = '';
  IconData caseDeathPlus = Icons.remove_rounded;
  IconData caseDeathArrow = Icons.arrow_upward_rounded;

  String caseActive = '';
  String caseActiveToday = '';
  String caseActivePercent = '';
  IconData caseActivePlus = Icons.remove_rounded;
  IconData caseActiveArrow = Icons.arrow_upward_rounded;

  void updateData() async {
    // Convert the CSV file to List<List<dynamic>>
    final casesData =
        await getDataCSV(cacheManager: cacheManager, urlCSV: urlUpdateCases);
    final deathData =
        await getDataCSV(cacheManager: cacheManager, urlCSV: urlUpdateDeath);

    // Get to the latest row of the CSV
    final cases2ndLastField = casesData[casesData.length - 2];
    final casesLastField = casesData.last;
    final death2ndLastField = deathData[deathData.length - 2];
    final deathLastField = deathData.last;

    // Accessing the fields
    debugPrint('Covid-19 Malaysia Data is being updated');

    // Confirmed Card data
    caseConfirmed = numberFormatter
        .format(columnCalculate(wholeFields: casesData, columnIndex: 1));
    caseConfirmedToday = numberFormatter.format(casesLastField.elementAt(1));
    caseConfirmedPercent = calculateDifference(
            today: casesLastField, yesterday: cases2ndLastField, index: 1)[0]
        .toString();
    caseConfirmedPlus = calculateDifference(
        today: casesLastField, yesterday: cases2ndLastField, index: 1)[1];
    caseConfirmedArrow = calculateDifference(
        today: casesLastField, yesterday: cases2ndLastField, index: 1)[2];

    // Recovered Card data
    caseRecovered = numberFormatter
        .format(columnCalculate(wholeFields: casesData, columnIndex: 3));
    caseRecoveredToday = numberFormatter.format(casesLastField.elementAt(3));
    caseRecoveredPercent = calculateDifference(
            today: casesLastField, yesterday: cases2ndLastField, index: 3)[0]
        .toString();
    caseRecoveredPlus = calculateDifference(
        today: casesLastField, yesterday: cases2ndLastField, index: 3)[1];
    caseRecoveredArrow = calculateDifference(
        today: casesLastField, yesterday: cases2ndLastField, index: 3)[2];

    // Death Card data
    caseDeath = numberFormatter
        .format(columnCalculate(wholeFields: deathData, columnIndex: 1));
    caseDeathToday = numberFormatter.format(deathLastField.elementAt(1));
    caseDeathPercent = calculateDifference(
            today: deathLastField, yesterday: death2ndLastField, index: 1)[0]
        .toString();
    caseDeathPlus = calculateDifference(
        today: deathLastField, yesterday: death2ndLastField, index: 1)[1];
    caseDeathArrow = calculateDifference(
        today: deathLastField, yesterday: death2ndLastField, index: 1)[2];

    // Active Card data
    caseActive = numberFormatter.format(casesLastField.elementAt(4));
    caseActiveToday = numberFormatter.format(casesLastField.elementAt(1));
    caseActivePercent = calculateDifference(
            today: casesLastField, yesterday: cases2ndLastField, index: 4)[0]
        .toString();
    caseActivePlus = calculateDifference(
        today: casesLastField, yesterday: cases2ndLastField, index: 4)[1];
    caseActiveArrow = calculateDifference(
        today: casesLastField, yesterday: cases2ndLastField, index: 4)[2];
  }
}

class StatisticsDataStates {
  String caseConfirmed = '';
  String caseConfirmedToday = '';
  String caseConfirmedPercent = '';
  IconData caseConfirmedPlus = Icons.remove_rounded;
  IconData caseConfirmedArrow = Icons.arrow_upward_rounded;

  String caseRecovered = '';
  String caseRecoveredToday = '';
  String caseRecoveredPercent = '';
  IconData caseRecoveredPlus = Icons.remove_rounded;
  IconData caseRecoveredArrow = Icons.arrow_upward_rounded;

  String caseDeath = '';
  String caseDeathToday = '';
  String caseDeathPercent = '';
  IconData caseDeathPlus = Icons.remove_rounded;
  IconData caseDeathArrow = Icons.arrow_upward_rounded;

  String caseActive = '';
  String caseActiveToday = '';
  String caseActivePercent = '';
  IconData caseActivePlus = Icons.remove_rounded;
  IconData caseActiveArrow = Icons.arrow_upward_rounded;

  void updateData(String region) async {
    // Convert the CSV file to List<List<dynamic>>
    final casesData =
        await getDataCSV(cacheManager: cacheManager, urlCSV: urlStateCases);
    final deathData =
        await getDataCSV(cacheManager: cacheManager, urlCSV: urlStateDeath);

    // Get to the latest row of the CSV
    final cases2ndLastField = casesData[casesData.length - 2];
    final casesLastField = casesData.last;
    final death2ndLastField = deathData[deathData.length - 2];
    final deathLastField = deathData.last;

    // Accessing the fields
    debugPrint('Covid-19 $region Data is being updated');
    // debugPrint('State Cases: $casesData');
    // debugPrint('Case 2nd Last: $cases2ndLastField');
    // debugPrint('Case Last Field: $casesLastField');
    // debugPrint('Date type: ${casesLastField[0].runtimeType}');

    // Confirmed Card data
    caseConfirmed = numberFormatter.format(columnStateCalculate(
        wholeFields: casesData, column: 2, region: region));
    caseConfirmedToday = numberFormatter.format(
        getElementCSV(wholeFields: casesData, column: 2, region: region));

    List calculateDifferenceState(
        {required List<dynamic> wholeFields,
        required int column,
        required String region}) {
      String dateToday = wholeFields.last[0].toString();
      // Assuming total States is 16, we get the yesterday date
      String dateYesterday = wholeFields[wholeFields.length - 17][0].toString();

      int valueToday = 0;
      int valueYesterday = 0;
      int value = 0;

      for (int i = 1; i < wholeFields.length; i++) {
        if (wholeFields[i][0] == dateToday && wholeFields[i][1] == region) {
          valueToday = wholeFields[i][column];
        }
        if (wholeFields[i][0] == dateYesterday && wholeFields[i][1] == region) {
          valueYesterday = wholeFields[i][column];
        }
      }

      value = valueToday - valueYesterday;
      value = (value / valueYesterday * 100).round();

      String number;
      IconData iconPlus;
      IconData iconArrow;

      if (valueToday < valueYesterday) {
        iconPlus = Icons.remove_rounded;
      } else {
        iconPlus = Icons.add_rounded;
      }

      if (value < 0) {
        number = value.toString().substring(1);
        iconArrow = Icons.arrow_downward_rounded;
      } else {
        number = value.toString();
        iconArrow = Icons.arrow_upward_rounded;
      }

      List items = [number, iconPlus, iconArrow];

      return items;
    }

    caseConfirmedPercent = calculateDifferenceState(
        wholeFields: casesData, column: 2, region: region)[0];
    caseConfirmedPlus = calculateDifferenceState(
        wholeFields: casesData, column: 2, region: region)[1];
    caseConfirmedArrow = calculateDifferenceState(
        wholeFields: casesData, column: 2, region: region)[2];

    // Recovered Card data

    // Death Card data

    // Active Card data
  }
}
