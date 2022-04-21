import 'package:mysejahtera_plus/data_layers/models/statistics_card_csv_model.dart';

class StatisticsDataStatesModel {
  final StatisticsCardConfirmedCsvModel cardConfirmedModel;
  final StatisticsCardRecoveredCsvModel cardRecoveredModel;
  final StatisticsCardDeathCsvModel cardDeathModel;
  final StatisticsCardActiveCsvModel cardActiveModel;

  StatisticsDataStatesModel({
    required this.cardConfirmedModel,
    required this.cardRecoveredModel,
    required this.cardDeathModel,
    required this.cardActiveModel,
  });

  factory StatisticsDataStatesModel.fromCsv(
      List data) {
    return StatisticsDataStatesModel(
      cardConfirmedModel: StatisticsCardConfirmedCsvModel.fromCsv(data),
      cardRecoveredModel: StatisticsCardRecoveredCsvModel.fromCsv(data),
      cardDeathModel: StatisticsCardDeathCsvModel.fromCsv(data),
      cardActiveModel: StatisticsCardActiveCsvModel.fromCsv(data),
    );
  }
}
