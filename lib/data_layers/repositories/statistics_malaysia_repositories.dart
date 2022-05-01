import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:intl/intl.dart';

import '../../helper/statistic_calculator.dart';
import '../models/statistics_malaysia_model.dart';

const urlUpdateCases =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/cases_malaysia.csv';
const urlUpdateDeath =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/deaths_malaysia.csv';

DefaultCacheManager cacheManager = DefaultCacheManager();
final numberFormatter = NumberFormat('#,##0', 'en_US');

class StatisticsDataMalaysiaRepositories {
  List<StatisticsDataMalaysiaModel> data = [];

  Future<List<StatisticsDataMalaysiaModel>> fetchMalaysiaData() async {
    try {
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

      debugPrint('Covid-19 Malaysia Data is being updated');

      List dataList = [];
      List differences = [];

      //* Confirmed Card data
      dataList.add(numberFormatter
          .format(columnCalculate(wholeFields: casesData, columnIndex: 1)));
      dataList.add(numberFormatter.format(casesLastField.elementAt(1)));

      differences = calculateDifference(
          today: casesLastField, yesterday: cases2ndLastField, index: 1);

      dataList.add(differences[0].toString());
      dataList.add(differences[1]);
      dataList.add(differences[2]);

      data.add(StatisticsDataMalaysiaModel.fromCsv(dataList));
      dataList.clear();
      differences.clear();

      //* Recovered Card data
      dataList.add(numberFormatter
          .format(columnCalculate(wholeFields: casesData, columnIndex: 3)));
      dataList.add(numberFormatter.format(casesLastField.elementAt(3)));

      differences = calculateDifference(
          today: casesLastField, yesterday: cases2ndLastField, index: 3);

      dataList.add(differences[0].toString());
      dataList.add(differences[1]);
      dataList.add(differences[2]);

      data.add(StatisticsDataMalaysiaModel.fromCsv(dataList));
      dataList.clear();
      differences.clear();

      //* Death Card data
      dataList.add(numberFormatter
          .format(columnCalculate(wholeFields: deathData, columnIndex: 1)));
      dataList.add(numberFormatter.format(deathLastField.elementAt(1)));

      differences = calculateDifference(
          today: deathLastField, yesterday: death2ndLastField, index: 1);

      dataList.add(differences[0].toString());
      dataList.add(differences[1]);
      dataList.add(differences[2]);

      data.add(StatisticsDataMalaysiaModel.fromCsv(dataList));
      dataList.clear();
      differences.clear();

      //* Active Card data
      dataList.add(numberFormatter.format(casesLastField.elementAt(4)));
      dataList.add(numberFormatter.format(casesLastField.elementAt(1)));

      differences = calculateDifference(
          today: casesLastField, yesterday: cases2ndLastField, index: 4);

      dataList.add(differences[0].toString());
      dataList.add(differences[1]);
      dataList.add(differences[2]);

      data.add(StatisticsDataMalaysiaModel.fromCsv(dataList));
      dataList.clear();
      differences.clear();

      return data;
    } catch (e) {
      debugPrint('Error: $e');
      throw Exception('Covid-19 Malaysia Data could not be updated');
    }
  }
}
