import 'package:mysejahtera_plus/data_layers/models/statistics_card_model.dart';

class StatisticsDataMalaysiaModel {
  final StatisticsCardConfirmedModel cardConfirmedModel;
  final StatisticsCardRecoveredModel cardRecoveredModel;
  final StatisticsCardDeathModel cardDeathModel;
  final StatisticsCardActiveModel cardActiveModel;

  StatisticsDataMalaysiaModel({
    required this.cardConfirmedModel,
    required this.cardRecoveredModel,
    required this.cardDeathModel,
    required this.cardActiveModel,
  });

  factory StatisticsDataMalaysiaModel.fromCsv(
      List data) {
    return StatisticsDataMalaysiaModel(
      cardConfirmedModel: StatisticsCardConfirmedModel.fromCsv(data),
      cardRecoveredModel: StatisticsCardRecoveredModel.fromCsv(data),
      cardDeathModel: StatisticsCardDeathModel.fromCsv(data),
      cardActiveModel: StatisticsCardActiveModel.fromCsv(data),
    );
  }
}
