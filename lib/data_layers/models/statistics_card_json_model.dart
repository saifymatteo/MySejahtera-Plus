import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final numberFormatter = NumberFormat('#,##0', 'en_US');

class StatisticsCardConfirmedJsonModel {
  final String caseConfirmed;
  final String caseConfirmedToday;
  final String caseConfirmedPercent;
  final IconData caseConfirmedPlus;
  final IconData caseConfirmedArrow;

  StatisticsCardConfirmedJsonModel({
    required this.caseConfirmed,
    required this.caseConfirmedToday,
    required this.caseConfirmedPercent,
    this.caseConfirmedPlus = Icons.remove_rounded,
    this.caseConfirmedArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardConfirmedJsonModel.fromJson(
      Map<String, dynamic> data, List percentAndIcon) {
    return StatisticsCardConfirmedJsonModel(
      caseConfirmed: numberFormatter.format(data["cases"]),
      caseConfirmedToday: numberFormatter.format(data["todayCases"]),
      caseConfirmedPercent: percentAndIcon[0],
      caseConfirmedPlus: percentAndIcon[1],
      caseConfirmedArrow: percentAndIcon[2],
    );
  }
}

class StatisticsCardRecoveredJsonModel {
  final String caseRecovered;
  final String caseRecoveredToday;
  final String caseRecoveredPercent;
  final IconData caseRecoveredPlus;
  final IconData caseRecoveredArrow;

  StatisticsCardRecoveredJsonModel({
    required this.caseRecovered,
    required this.caseRecoveredToday,
    required this.caseRecoveredPercent,
    this.caseRecoveredPlus = Icons.remove_rounded,
    this.caseRecoveredArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardRecoveredJsonModel.fromJson(
      Map<String, dynamic> data, List percentAndIcon) {
    return StatisticsCardRecoveredJsonModel(
      caseRecovered: numberFormatter.format(data["recovered"]),
      caseRecoveredToday: numberFormatter.format(data["todayRecovered"]),
      caseRecoveredPercent: percentAndIcon[0],
      caseRecoveredPlus: percentAndIcon[1],
      caseRecoveredArrow: percentAndIcon[2],
    );
  }
}

class StatisticsCardDeathJsonModel {
  final String caseDeath;
  final String caseDeathToday;
  final String caseDeathPercent;
  final IconData caseDeathPlus;
  final IconData caseDeathArrow;

  StatisticsCardDeathJsonModel({
    required this.caseDeath,
    required this.caseDeathToday,
    required this.caseDeathPercent,
    this.caseDeathPlus = Icons.remove_rounded,
    this.caseDeathArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardDeathJsonModel.fromJson(
      Map<String, dynamic> data, List percentAndIcon) {
    return StatisticsCardDeathJsonModel(
      caseDeath: numberFormatter.format(data["deaths"]),
      caseDeathToday: numberFormatter.format(data["todayDeaths"]),
      caseDeathPercent: percentAndIcon[0],
      caseDeathPlus: percentAndIcon[1],
      caseDeathArrow: percentAndIcon[2],
    );
  }
}

class StatisticsCardActiveJsonModel {
  final String caseActive;
  final String caseActiveToday;
  final String caseActivePercent;
  final IconData caseActivePlus;
  final IconData caseActiveArrow;

  StatisticsCardActiveJsonModel({
    required this.caseActive,
    required this.caseActiveToday,
    required this.caseActivePercent,
    this.caseActivePlus = Icons.remove_rounded,
    this.caseActiveArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardActiveJsonModel.fromJson(
      Map<String, dynamic> data, List percentAndIcon) {
    return StatisticsCardActiveJsonModel(
      caseActive: numberFormatter.format(data["active"]),
      caseActiveToday: numberFormatter.format(data["todayCases"]),
      caseActivePercent: percentAndIcon[0],
      caseActivePlus: percentAndIcon[1],
      caseActiveArrow: percentAndIcon[2],
    );
  }
}