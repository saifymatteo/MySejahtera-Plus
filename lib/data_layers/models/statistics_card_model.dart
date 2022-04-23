import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final numberFormatter = NumberFormat('#,##0', 'en_US');

class StatisticsCardConfirmedModel {
  final String caseConfirmed;
  final String caseConfirmedToday;
  final String caseConfirmedPercent;
  final IconData caseConfirmedPlus;
  final IconData caseConfirmedArrow;

  StatisticsCardConfirmedModel({
    required this.caseConfirmed,
    required this.caseConfirmedToday,
    required this.caseConfirmedPercent,
    this.caseConfirmedPlus = Icons.remove_rounded,
    this.caseConfirmedArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardConfirmedModel.fromCsv(
      List data) {
    return StatisticsCardConfirmedModel(
      caseConfirmed: data[0],
      caseConfirmedToday: data[1],
      caseConfirmedPercent: data[2],
      caseConfirmedPlus: data[3],
      caseConfirmedArrow: data[4],
    );
  }

  factory StatisticsCardConfirmedModel.fromJson(
      Map<String, dynamic> data, List percentAndIcon) {
    return StatisticsCardConfirmedModel(
      caseConfirmed: numberFormatter.format(data["cases"]),
      caseConfirmedToday: numberFormatter.format(data["todayCases"]),
      caseConfirmedPercent: percentAndIcon[0],
      caseConfirmedPlus: percentAndIcon[1],
      caseConfirmedArrow: percentAndIcon[2],
    );
  }
}

class StatisticsCardRecoveredModel {
  final String caseRecovered;
  final String caseRecoveredToday;
  final String caseRecoveredPercent;
  final IconData caseRecoveredPlus;
  final IconData caseRecoveredArrow;

  StatisticsCardRecoveredModel({
    required this.caseRecovered,
    required this.caseRecoveredToday,
    required this.caseRecoveredPercent,
    this.caseRecoveredPlus = Icons.remove_rounded,
    this.caseRecoveredArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardRecoveredModel.fromCsv(
      List data) {
    return StatisticsCardRecoveredModel(
      caseRecovered: data[0],
      caseRecoveredToday: data[1],
      caseRecoveredPercent: data[2],
      caseRecoveredPlus: data[3],
      caseRecoveredArrow: data[4],
    );
  }
  
  factory StatisticsCardRecoveredModel.fromJson(
      Map<String, dynamic> data, List percentAndIcon) {
    return StatisticsCardRecoveredModel(
      caseRecovered: numberFormatter.format(data["recovered"]),
      caseRecoveredToday: numberFormatter.format(data["todayRecovered"]),
      caseRecoveredPercent: percentAndIcon[0],
      caseRecoveredPlus: percentAndIcon[1],
      caseRecoveredArrow: percentAndIcon[2],
    );
  }
}

class StatisticsCardDeathModel {
  final String caseDeath;
  final String caseDeathToday;
  final String caseDeathPercent;
  final IconData caseDeathPlus;
  final IconData caseDeathArrow;

  StatisticsCardDeathModel({
    required this.caseDeath,
    required this.caseDeathToday,
    required this.caseDeathPercent,
    this.caseDeathPlus = Icons.remove_rounded,
    this.caseDeathArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardDeathModel.fromCsv(
      List data) {
    return StatisticsCardDeathModel(
      caseDeath: data[0],
      caseDeathToday: data[1],
      caseDeathPercent: data[2],
      caseDeathPlus: data[3],
      caseDeathArrow: data[4],
    );
  }

  factory StatisticsCardDeathModel.fromJson(
      Map<String, dynamic> data, List percentAndIcon) {
    return StatisticsCardDeathModel(
      caseDeath: numberFormatter.format(data["deaths"]),
      caseDeathToday: numberFormatter.format(data["todayDeaths"]),
      caseDeathPercent: percentAndIcon[0],
      caseDeathPlus: percentAndIcon[1],
      caseDeathArrow: percentAndIcon[2],
    );
  }
}

class StatisticsCardActiveModel {
  final String caseActive;
  final String caseActiveToday;
  final String caseActivePercent;
  final IconData caseActivePlus;
  final IconData caseActiveArrow;

  StatisticsCardActiveModel({
    required this.caseActive,
    required this.caseActiveToday,
    required this.caseActivePercent,
    this.caseActivePlus = Icons.remove_rounded,
    this.caseActiveArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardActiveModel.fromCsv(
      List data) {
    return StatisticsCardActiveModel(
      caseActive: data[0],
      caseActiveToday: data[1],
      caseActivePercent: data[2],
      caseActivePlus: data[3],
      caseActiveArrow: data[4],
    );
  }

  factory StatisticsCardActiveModel.fromJson(
      Map<String, dynamic> data, List percentAndIcon) {
    return StatisticsCardActiveModel(
      caseActive: numberFormatter.format(data["active"]),
      caseActiveToday: numberFormatter.format(data["todayCases"]),
      caseActivePercent: percentAndIcon[0],
      caseActivePlus: percentAndIcon[1],
      caseActiveArrow: percentAndIcon[2],
    );
  }
}