import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:mysejahtera_plus/data_layers/models/statistics_global_model.dart';

import '../../helper/statistic_calculator.dart';

const urlGlobalToday = 'https://disease.sh/v3/covid-19/all';
const urlGlobalYesterday =
    'https://disease.sh/v3/covid-19/all?yesterday=yesterday';
DefaultCacheManager cacheManager = DefaultCacheManager();

class StatisticsDataGlobalRepositories {
  List<StatisticsDataGlobalModel> items = [];

  Future<List<StatisticsDataGlobalModel>> fetchGlobalData() async {
    try {
      Map<String, dynamic> casesToday = jsonDecode(await fetchJSONasString(
          cacheManager: cacheManager, urlCSV: urlGlobalToday));
      Map<String, dynamic> casesYesterday = jsonDecode(await fetchJSONasString(
          cacheManager: cacheManager, urlCSV: urlGlobalYesterday));

      debugPrint('Covid-19 Global Data is being updated');

      List key = [
        "todayCases",
        "todayRecovered",
        "todayDeaths",
        "todayCases",
      ];

      for (int i = 0; i < key.length; i++) {
        List difference =
          calculateDifferenceJSON(casesToday, casesYesterday, key[i]);
        items.add(StatisticsDataGlobalModel.fromJson(casesToday, difference));
      }

      return items;
      
    } catch (e) {
      debugPrint('Error: $e');
      throw Exception('Covid-19 Global Data could not be updated');
    }
  }
}
