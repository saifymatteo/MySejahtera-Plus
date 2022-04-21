import 'package:mysejahtera_plus/data_layers/models/statistics_card_csv_model.dart';

class StatisticsDataMalaysiaModel {
  final StatisticsCardConfirmedCsvModel cardConfirmedModel;
  final StatisticsCardRecoveredCsvModel cardRecoveredModel;
  final StatisticsCardDeathCsvModel cardDeathModel;
  final StatisticsCardActiveCsvModel cardActiveModel;

  StatisticsDataMalaysiaModel({
    required this.cardConfirmedModel,
    required this.cardRecoveredModel,
    required this.cardDeathModel,
    required this.cardActiveModel,
  });

  factory StatisticsDataMalaysiaModel.fromCsv(
      List data) {
    return StatisticsDataMalaysiaModel(
      cardConfirmedModel: StatisticsCardConfirmedCsvModel.fromCsv(data),
      cardRecoveredModel: StatisticsCardRecoveredCsvModel.fromCsv(data),
      cardDeathModel: StatisticsCardDeathCsvModel.fromCsv(data),
      cardActiveModel: StatisticsCardActiveCsvModel.fromCsv(data),
    );
  }
}
