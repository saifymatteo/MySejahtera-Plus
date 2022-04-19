import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:intl/intl.dart';

import '../../helper/statistic_calculator.dart';

const urlUpdateCases =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/cases_malaysia.csv';
const urlUpdateDeath =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/deaths_malaysia.csv';
const urlStateCases =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/cases_state.csv';
const urlStateDeath =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/deaths_state.csv';
const urlGlobalToday = 'https://disease.sh/v3/covid-19/all';
const urlGlobalYesterday =
    'https://disease.sh/v3/covid-19/all?yesterday=yesterday';

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

  StatisticsDataUpdates() {
    updateData();
  }

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

  late String region;

  StatisticsDataStates(this.region) {
    updateData();
  }

  void updateData() async {
    // Convert the CSV file to List<List<dynamic>>
    final casesData =
        await getDataCSV(cacheManager: cacheManager, urlCSV: urlStateCases);
    final deathData =
        await getDataCSV(cacheManager: cacheManager, urlCSV: urlStateDeath);

    // Accessing the fields
    debugPrint('Covid-19 $region Data is being updated');

    // Confirmed Card data
    caseConfirmed = numberFormatter.format(columnStateCalculate(
        wholeFields: casesData, column: 2, region: region));
    caseConfirmedToday = numberFormatter.format(
        getElementCSV(wholeFields: casesData, column: 2, region: region));
    caseConfirmedPercent = calculateDifferenceState(
        wholeFields: casesData, column: 2, region: region)[0];
    caseConfirmedPlus = calculateDifferenceState(
        wholeFields: casesData, column: 2, region: region)[1];
    caseConfirmedArrow = calculateDifferenceState(
        wholeFields: casesData, column: 2, region: region)[2];

    // Recovered Card data
    caseRecovered = numberFormatter.format(columnStateCalculate(
        wholeFields: casesData, column: 4, region: region));
    caseRecoveredToday = numberFormatter.format(
        getElementCSV(wholeFields: casesData, column: 4, region: region));
    caseRecoveredPercent = calculateDifferenceState(
        wholeFields: casesData, column: 4, region: region)[0];
    caseRecoveredPlus = calculateDifferenceState(
        wholeFields: casesData, column: 4, region: region)[1];
    caseRecoveredArrow = calculateDifferenceState(
        wholeFields: casesData, column: 4, region: region)[2];

    // Death Card data
    caseDeath = numberFormatter.format(columnStateCalculate(
        wholeFields: deathData, column: 2, region: region));
    caseDeathToday = numberFormatter.format(
        getElementCSV(wholeFields: deathData, column: 2, region: region));
    caseDeathPercent = calculateDifferenceState(
            wholeFields: deathData, column: 2, region: region)[0]
        .toString();
    caseDeathPlus = calculateDifferenceState(
        wholeFields: deathData, column: 2, region: region)[1];
    caseDeathArrow = calculateDifferenceState(
        wholeFields: deathData, column: 2, region: region)[2];

    // Active Card data
    caseActive = numberFormatter.format(
        getElementCSV(wholeFields: casesData, column: 5, region: region));
    caseActiveToday = calculateDifferenceState(
        wholeFields: casesData, column: 5, region: region)[3];
    caseActivePercent = calculateDifferenceState(
        wholeFields: casesData, column: 5, region: region)[0];
    caseActivePlus = calculateDifferenceState(
        wholeFields: casesData, column: 5, region: region)[1];
    caseActiveArrow = calculateDifferenceState(
        wholeFields: casesData, column: 5, region: region)[2];
  }
}

class StatisticsDataGlobal {
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

  StatisticsDataGlobal() {
    updateData();
  }

  void updateData() async {
    Map<String, dynamic> casesToday = jsonDecode(await fetchJSONasString(
        cacheManager: cacheManager, urlCSV: urlGlobalToday));
    Map<String, dynamic> casesYesterday = jsonDecode(await fetchJSONasString(
        cacheManager: cacheManager, urlCSV: urlGlobalYesterday));

    // Accessing the fields
    debugPrint('Covid-19 Global Data is being updated');

    // Confirmed Card data
    caseConfirmed = numberFormatter.format(casesToday["cases"]);
    caseConfirmedToday = numberFormatter.format(casesToday["todayCases"]);
    caseConfirmedPercent =
        calculateDifferenceJSON(casesToday, casesYesterday, "todayCases")[0];
    caseConfirmedPlus =
        calculateDifferenceJSON(casesToday, casesYesterday, "todayCases")[1];
    caseConfirmedArrow =
        calculateDifferenceJSON(casesToday, casesYesterday, "todayCases")[2];

    // Recovered Card data
    caseRecovered = numberFormatter.format(casesToday["recovered"]);
    caseRecoveredToday = numberFormatter.format(casesToday["todayRecovered"]);
    caseRecoveredPercent = calculateDifferenceJSON(
        casesToday, casesYesterday, "todayRecovered")[0];
    caseRecoveredPlus = calculateDifferenceJSON(
        casesToday, casesYesterday, "todayRecovered")[1];
    caseRecoveredArrow = calculateDifferenceJSON(
        casesToday, casesYesterday, "todayRecovered")[2];

    // Death Card data
    caseDeath = numberFormatter.format(casesToday["deaths"]);
    caseDeathToday = numberFormatter.format(casesToday["todayDeaths"]);
    caseDeathPercent =
        calculateDifferenceJSON(casesToday, casesYesterday, "todayDeaths")[0];
    caseDeathPlus =
        calculateDifferenceJSON(casesToday, casesYesterday, "todayDeaths")[1];
    caseDeathArrow =
        calculateDifferenceJSON(casesToday, casesYesterday, "todayDeaths")[2];

    // Active Card data
    caseActive = numberFormatter.format(casesToday["active"]);
    caseActiveToday = numberFormatter.format(casesToday["todayCases"]);
    caseActivePercent =
        calculateDifferenceJSON(casesToday, casesYesterday, "todayCases")[0];
    caseActivePlus =
        calculateDifferenceJSON(casesToday, casesYesterday, "todayCases")[1];
    caseActiveArrow =
        calculateDifferenceJSON(casesToday, casesYesterday, "todayCases")[2];
  }
}
