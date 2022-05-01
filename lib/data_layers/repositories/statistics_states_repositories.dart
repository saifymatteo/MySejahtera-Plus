import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:intl/intl.dart';

import '../../helper/statistic_calculator.dart';
import '../models/statistics_states_model.dart';

const urlStateCases =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/cases_state.csv';
const urlStateDeath =
    'https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/epidemic/deaths_state.csv';

DefaultCacheManager cacheManager = DefaultCacheManager();
final numberFormatter = NumberFormat('#,##0', 'en_US');

//! WORK IN PROGRESS:
//! Probably not gonna add FutureBuilder on this chaotic repo/model
// class StatisticsDataStatesRepositories {
//   List<List<StatisticsDataStatesModel>> data = [];

//   Future<List<List<StatisticsDataStatesModel>>> fetchStatesData() async {
//     try {
//       // Convert the CSV file to List<List<dynamic>>
//       final casesData =
//           await getDataCSV(cacheManager: cacheManager, urlCSV: urlStateCases);
//       final deathData =
//           await getDataCSV(cacheManager: cacheManager, urlCSV: urlStateDeath);

//       debugPrint('Covid-19 States Data is being updated');

//       List<String> regions = [
//         'Johor',
//         'Kedah',
//         'Kelantan',
//         'Melaka',
//         'Negeri Sembilan',
//         'Pahang',
//         'Perak',
//         'Perlis',
//         'Pulau Pinang',
//         'Sabah',
//         'Sarawak',
//         'Selangor',
//         'Terengganu',
//         'W.P. Kuala Lumpur',
//         'W.P. Labuan',
//         'W.P. Putrajaya',
//       ];

//       List dataList = [];
//       List<StatisticsDataStatesModel> tempList = [];
//       List differences = [];

//       for (String region in regions) {
//         //* Confirmed Card data
//         dataList.add(numberFormatter.format(columnStateCalculate(
//             wholeFields: casesData, column: 2, region: region)));
//         dataList.add(numberFormatter.format(
//             getElementCSV(wholeFields: casesData, column: 2, region: region)));

//         differences = calculateDifferenceState(
//             wholeFields: casesData, column: 2, region: region);

//         dataList.add(differences[0]);
//         dataList.add(differences[1]);
//         dataList.add(differences[2]);

//         tempList.add(StatisticsDataStatesModel.fromCsv(dataList));
//         dataList.clear();
//         differences.clear();

//         //* Recovered Card data
//         dataList.add(numberFormatter.format(columnStateCalculate(
//             wholeFields: casesData, column: 4, region: region)));
//         dataList.add(numberFormatter.format(
//             getElementCSV(wholeFields: casesData, column: 4, region: region)));

//         differences = calculateDifferenceState(
//             wholeFields: casesData, column: 4, region: region);

//         dataList.add(differences[0]);
//         dataList.add(differences[1]);
//         dataList.add(differences[2]);

//         tempList.add(StatisticsDataStatesModel.fromCsv(dataList));
//         dataList.clear();
//         differences.clear();

//         //* Death Card data
//         dataList.add(numberFormatter.format(columnStateCalculate(
//             wholeFields: deathData, column: 2, region: region)));
//         dataList.add(numberFormatter.format(
//             getElementCSV(wholeFields: deathData, column: 2, region: region)));

//         differences = calculateDifferenceState(
//             wholeFields: casesData, column: 2, region: region);

//         dataList.add(differences[0].toString());
//         dataList.add(differences[1]);
//         dataList.add(differences[2]);

//         tempList.add(StatisticsDataStatesModel.fromCsv(dataList));
//         dataList.clear();
//         differences.clear();

//         //* Active Card data
//         dataList.add(numberFormatter.format(
//             getElementCSV(wholeFields: casesData, column: 5, region: region)));

//         differences = calculateDifferenceState(
//             wholeFields: casesData, column: 5, region: region);

//         dataList.add(differences[3]);
//         dataList.add(differences[0]);
//         dataList.add(differences[1]);
//         dataList.add(differences[2]);

//         tempList.add(StatisticsDataStatesModel.fromCsv(dataList));
//         data.add(tempList);

//         debugPrint('tempList: $tempList');
//         debugPrint('data length: ${data.length}');
//         debugPrint('data: $data');

//         tempList.clear();
//         dataList.clear();
//         differences.clear();
//       }
//       debugPrint('data: $data');

//       return data;
//     } catch (e) {
//       debugPrint('Error: $e');
//       throw Exception('Covid-19 States Data could not be updated');
//     }
//   }
// }

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
