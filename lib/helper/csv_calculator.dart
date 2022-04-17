// Calculate single CSV column
import 'dart:convert';

import 'package:csv/csv.dart';
import 'package:csv/csv_settings_autodetection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

// Get csv file and decode
Future<List> getDataCSV(
    {required DefaultCacheManager cacheManager, required String urlCSV}) async {
  final data = await cacheManager.getSingleFile(urlCSV);
  final input = data.openRead();

  // CSV setting is important to format the incoming csv file
  var d = const FirstOccurrenceSettingsDetector(
      eols: ['\r\n', '\n'], textDelimiters: ['"', "'"]);

  // Convert the CSV file to List<List<dynamic>>
  return await input
      .transform(utf8.decoder)
      .transform(CsvToListConverter(csvSettingsDetector: d))
      .toList();
}

// Calculate total value in a column
int columnCalculate({required List wholeFields, required int columnIndex}) {
  int value = 0;
  for (int i = 1; i < wholeFields.length; i++) {
    value = value + int.parse(wholeFields[i][columnIndex].toString());
  }
  return value;
}

// Calculate percentage difference of today and yesterday value
List calculateDifference(
    {required List today, required List yesterday, required index}) {
  int valueToday = int.parse(today.elementAt(index).toString());
  int valueYesterday = int.parse(yesterday.elementAt(index).toString());
  int value = valueToday - valueYesterday;
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

// Calculate total value in a column, used in State csv
int columnStateCalculate(
    {required List<dynamic> wholeFields,
    required int column,
    required String region}) {
  int value = 0;
  for (int i = 1; i < wholeFields.length; i++) {
    if (wholeFields[i][1].toString() == region) {
      value = value + int.parse(wholeFields[i][column].toString());
    }
  }
  return value;
}

// Get the specific element in State csv
int getElementCSV(
    {required List<dynamic> wholeFields,
    required int column,
    required String region}) {
  int value = 0;
  String date = wholeFields.last[0].toString(); // get String of date
  for (int i = 1; i < wholeFields.length; i++) {
    if (date == wholeFields[i][0] && region == wholeFields[i][1]) {
      value = wholeFields[i][column];
    }
  }
  return value;
}
