import 'statistics_card_model.dart';

class StatisticsDataGlobalModel {
  final StatisticsCardConfirmedModel cardConfirmedModel;
  final StatisticsCardRecoveredModel cardRecoveredModel;
  final StatisticsCardDeathModel cardDeathModel;
  final StatisticsCardActiveModel cardActiveModel;

  StatisticsDataGlobalModel({
    required this.cardConfirmedModel,
    required this.cardRecoveredModel,
    required this.cardDeathModel,
    required this.cardActiveModel,
  });

  factory StatisticsDataGlobalModel.fromJson(
      Map<String, dynamic> data, List percentAndIcon) {
    return StatisticsDataGlobalModel(
      cardConfirmedModel: StatisticsCardConfirmedModel.fromJson(data, percentAndIcon),
      cardRecoveredModel: StatisticsCardRecoveredModel.fromJson(data, percentAndIcon),
      cardDeathModel: StatisticsCardDeathModel.fromJson(data, percentAndIcon),
      cardActiveModel: StatisticsCardActiveModel.fromJson(data, percentAndIcon),
    );
  }
}
