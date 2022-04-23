import 'package:mysejahtera_plus/data_layers/models/statistics_card_model.dart';

class StatisticsDataStatesModel {
  final StatisticsCardConfirmedModel cardConfirmedModel;
  final StatisticsCardRecoveredModel cardRecoveredModel;
  final StatisticsCardDeathModel cardDeathModel;
  final StatisticsCardActiveModel cardActiveModel;

  StatisticsDataStatesModel({
    required this.cardConfirmedModel,
    required this.cardRecoveredModel,
    required this.cardDeathModel,
    required this.cardActiveModel,
  });

  factory StatisticsDataStatesModel.fromCsv(
      List data) {
    return StatisticsDataStatesModel(
      cardConfirmedModel: StatisticsCardConfirmedModel.fromCsv(data),
      cardRecoveredModel: StatisticsCardRecoveredModel.fromCsv(data),
      cardDeathModel: StatisticsCardDeathModel.fromCsv(data),
      cardActiveModel: StatisticsCardActiveModel.fromCsv(data),
    );
  }
}
