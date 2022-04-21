import 'package:flutter/material.dart';

class StatisticsCardConfirmedCsvModel {
  final String caseConfirmed;
  final String caseConfirmedToday;
  final String caseConfirmedPercent;
  final IconData caseConfirmedPlus;
  final IconData caseConfirmedArrow;

  StatisticsCardConfirmedCsvModel({
    required this.caseConfirmed,
    required this.caseConfirmedToday,
    required this.caseConfirmedPercent,
    this.caseConfirmedPlus = Icons.remove_rounded,
    this.caseConfirmedArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardConfirmedCsvModel.fromCsv(
      List data) {
    return StatisticsCardConfirmedCsvModel(
      caseConfirmed: data[0],
      caseConfirmedToday: data[1],
      caseConfirmedPercent: data[2],
      caseConfirmedPlus: data[3],
      caseConfirmedArrow: data[4],
    );
  }
}

class StatisticsCardRecoveredCsvModel {
  final String caseRecovered;
  final String caseRecoveredToday;
  final String caseRecoveredPercent;
  final IconData caseRecoveredPlus;
  final IconData caseRecoveredArrow;

  StatisticsCardRecoveredCsvModel({
    required this.caseRecovered,
    required this.caseRecoveredToday,
    required this.caseRecoveredPercent,
    this.caseRecoveredPlus = Icons.remove_rounded,
    this.caseRecoveredArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardRecoveredCsvModel.fromCsv(
      List data) {
    return StatisticsCardRecoveredCsvModel(
      caseRecovered: data[0],
      caseRecoveredToday: data[1],
      caseRecoveredPercent: data[2],
      caseRecoveredPlus: data[3],
      caseRecoveredArrow: data[4],
    );
  }
}

class StatisticsCardDeathCsvModel {
  final String caseDeath;
  final String caseDeathToday;
  final String caseDeathPercent;
  final IconData caseDeathPlus;
  final IconData caseDeathArrow;

  StatisticsCardDeathCsvModel({
    required this.caseDeath,
    required this.caseDeathToday,
    required this.caseDeathPercent,
    this.caseDeathPlus = Icons.remove_rounded,
    this.caseDeathArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardDeathCsvModel.fromCsv(
      List data) {
    return StatisticsCardDeathCsvModel(
      caseDeath: data[0],
      caseDeathToday: data[1],
      caseDeathPercent: data[2],
      caseDeathPlus: data[3],
      caseDeathArrow: data[4],
    );
  }
}

class StatisticsCardActiveCsvModel {
  final String caseActive;
  final String caseActiveToday;
  final String caseActivePercent;
  final IconData caseActivePlus;
  final IconData caseActiveArrow;

  StatisticsCardActiveCsvModel({
    required this.caseActive,
    required this.caseActiveToday,
    required this.caseActivePercent,
    this.caseActivePlus = Icons.remove_rounded,
    this.caseActiveArrow = Icons.arrow_upward_rounded,
  });

  factory StatisticsCardActiveCsvModel.fromCsv(
      List data) {
    return StatisticsCardActiveCsvModel(
      caseActive: data[0],
      caseActiveToday: data[1],
      caseActivePercent: data[2],
      caseActivePlus: data[3],
      caseActiveArrow: data[4],
    );
  }
}